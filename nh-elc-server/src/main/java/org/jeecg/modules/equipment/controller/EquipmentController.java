package org.jeecg.modules.equipment.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Param;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.shiro.SecurityUtils;
import org.aspectj.util.FileUtil;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.ecategory.service.IECategoryService;
import org.jeecg.modules.equipment.entity.Equipment;
import org.jeecg.modules.equipment.service.IEquipmentService;
import org.jeecg.modules.equipment.vo.EquipmentVo;
import org.jeecg.modules.equipmentrecord.entity.EquipmentRecord;
import org.jeecg.modules.etype.service.IEtypeService;
import org.jeecg.modules.system.entity.SysRole;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecg.modules.system.service.ISysDepartService;
import org.jeecg.modules.system.service.ISysDictService;
import org.jeecg.modules.system.service.ISysUserService;
import org.jeecg.modules.utils.FinalUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @Title: Controller
 * @Description: 设备
 * @author： jeecg-boot
 * @date：   2019-05-14
 * @version： V1.0
 */
@RestController
@RequestMapping("/equipment/equipment")
@Slf4j
public class EquipmentController {
    @Autowired
    private IEquipmentService equipmentService;
    @Autowired
    private ISysUserService sysUserService;
    @Autowired
    private ISysDepartService sysDepartService;
    @Autowired
    private IEtypeService etypeService;
    @Autowired
    private IECategoryService eCategoryService;
    @Autowired
    private ISysDictService sysDictService;

    /**
     * 分页列表查询
     *
     * @param equipment
     * @param pageNo
     * @param pageSize
     * @param req
     * @return
     */
    @GetMapping(value = "/list")
    public Result<IPage<Equipment>> queryPageList(Equipment equipment,
                                                  @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
                                                  @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                                                  HttpServletRequest req) {
        Result<IPage<Equipment>> result = new Result<IPage<Equipment>>();
        QueryWrapper<Equipment> queryWrapper = QueryGenerator.initQueryWrapper(equipment, req.getParameterMap());
        Page<Equipment> page = new Page<Equipment>(pageNo, pageSize);
        IPage<Equipment> pageList = equipmentService.page(page, queryWrapper);
        result.setSuccess(true);
        result.setResult(pageList);
        return result;
    }

    @GetMapping(value = "/listVo")
    public Result<Page<EquipmentVo>> queryPageList(EquipmentVo equipmentVo,
                                                   @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
                                                   @RequestParam(name = "pageSize", defaultValue = "10") Integer pageSize,
                                                   HttpServletRequest req
    ) {
        if (equipmentVo.getEtatus() == 5){
            List<Integer> ids = equipmentService.queryFindIdByTime();
            String sb = new String();
            for (int i = 0; i < ids.size(); i++) {
                if (i == ids.size() - 1) {
                    sb += ids.get(i);
                } else {
                    sb += ids.get(i) + ",";
                }
            }
            equipmentVo.setIds(sb);
        }else if (equipmentVo.getEtatus() == 6){
            List<Map> ids = equipmentService.queryFindId();
            String sb = new String();
            for (Map map : ids) {
                sb = sb + map.get("id") + ",";
            }
            sb = sb.substring(0, sb.length() - 1);
            equipmentVo.setIds(sb);
        }else if (equipmentVo.getEtatus() == 2 || equipmentVo.getEtatus() == 3){
            equipmentVo.setUseStatus(equipmentVo.getEtatus().toString());
        }

        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        SysRole sysRole = sysUserService.queryRoleByUserId(sysUser.getId());
        //是企业用户 加公司权限
        if (sysRole.getRoleCode().equals(FinalUtil.ROLE_CODE_ENTERPRISE)) {
            String companyId = sysDepartService.queryCompanyUserId(sysUser.getId());
            equipmentVo.setCompanyId(companyId);
        }
        Result<Page<EquipmentVo>> result = new Result<Page<EquipmentVo>>();
        Page<EquipmentVo> pageList = new Page<EquipmentVo>(pageNo, pageSize);
        pageList = equipmentService.queryPageList(pageList, equipmentVo);//通知公告消息
        result.setSuccess(true);
        result.setResult(pageList);
        return result;
    }

    /**
     * 添加
     *
     * @param equipmentVo
     * @return
     */
    @PostMapping(value = "/add")
    @Transactional
    public Result<String> add(@RequestBody EquipmentVo equipmentVo) {
        Result<String> result = new Result<String>();
        try {
            equipmentService.add(equipmentVo);
            result.success("添加成功！");
        } catch (Exception e) {
            e.printStackTrace();
            log.info(e.getMessage());
            result.error500("操作失败");
        }
        return result;
    }


    /**
     * 编辑
     * @param equipmentVo
     * @return
     */
    @PutMapping(value = "/edit")
    @Transactional
    public Result<EquipmentVo> edit(@RequestBody EquipmentVo equipmentVo) {
        Result<EquipmentVo> result = new Result<EquipmentVo>();
        equipmentService.edit(equipmentVo);
        result.success("修改成功!");
        return result;
    }

    /**
     * 通过id删除(设备+设备生命周期)
     *
     * @param id
     * @return
     */
    @DeleteMapping(value = "/delete/{id}")
    @Transactional
    public Result<Equipment> delete(@PathVariable(value = "id") Integer id) {
        Result<Equipment> result = new Result<Equipment>();
        equipmentService.deleteById(id);
        result.success("删除成功!");
        return result;
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @DeleteMapping(value = "/deleteBatch")
    @Transactional
    public Result<Equipment> deleteBatch(@RequestParam(name = "ids", required = true) String ids) {
        Result<Equipment> result = new Result<Equipment>();
        if (ids == null || "".equals(ids.trim())) {
            result.error500("参数不识别！");
        } else {
            String[] split = ids.split(",");
            for (String s : split) {
                equipmentService.deleteById(new Integer(s));
            }
//			this.equipmentService.removeByIds(Arrays.asList(ids.split(",")));
            result.success("删除成功!");
        }
        return result;
    }

    /**
     * 通过id查询
     *
     * @param id
     * @return
     */
    @GetMapping(value = "/queryById/{id}")
    public Result<EquipmentVo> queryById(@PathVariable(value = "id") Integer id) {
        Result<EquipmentVo> result = new Result<EquipmentVo>();
        EquipmentVo equipmentVo = equipmentService.queryById(id);
        if (equipmentVo == null) {
            result.error500("未找到对应实体");
        } else {
            result.setResult(equipmentVo);
            result.setSuccess(true);
        }
        return result;
    }

    /**
     * 通过excel导入数据
     *
     * @param request
     * @return
     */
    @RequestMapping(value = "/importExl", method = RequestMethod.POST)
    @Transactional
    public Result<?> importExcel(HttpServletRequest request,HttpServletResponse response) {
        MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
        Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
        for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
            MultipartFile file = entity.getValue();// 获取上传文件对象
            String originalFilename = file.getOriginalFilename();
            String subSixStrFileName = originalFilename.substring(0,6);
            if (!subSixStrFileName.trim().equals(FinalUtil.FILE_NAME)){
                return Result.error("请用模板导入！");
            }
            if (!originalFilename.endsWith(".xls") && !originalFilename.endsWith(".xlsx")) {
                return Result.error("文件导入不是excel！");
            }

            try {
                InputStream inputStream = file.getInputStream();
                Workbook workbook = WorkbookFactory.create(inputStream);

                Sheet sheet = null;
                Row row = null;
                Cell cell = null;

                if (null == workbook) {
                    return Result.error("创建Excel工作薄为空！");
                }
                //查询公司
                List<Map<String, Object>> departList = sysDepartService.queryConmpanyItems();
                //查询设备 种   类
                List<Map<String, Object>> eTypeList = etypeService.queryItemsEType();
                //查询设备 类   别
                List<Map<String, Object>> eCategoryList = eCategoryService.queryECateGoryItems();
                //查询设备使用状态 1是未使用 2 是正在使用   3淘汰
                List<Map<String, Object>> useStatusList = sysDictService.queryDictItemsByCode(FinalUtil.DICT_USE_STATUS);
                //查询设备检查结论
                List<Map<String, Object>> checkResultList = sysDictService.queryDictItemsByCode(FinalUtil.DICT_CHECK_RESULT);

                for (int i = 0; i < workbook.getNumberOfSheets(); i++) {
                    sheet = workbook.getSheetAt(0);

                    //遍历当前sheet中的所有行
                    for (int j = 1; j <= sheet.getLastRowNum(); j++) {
                        row = sheet.getRow(j);
                        if (row == null) {

                        }
                        Equipment equipment = new Equipment();
                        EquipmentRecord equipmentRecord = new EquipmentRecord();
                        boolean flag = true;
                        //把每个单元格的值付给对象的对应属性
                        //1所属公司
                        if (row.getCell(0) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(0)));

                            for (Map<String, Object> map : departList) {
                                String companyId = String.valueOf(map.get("companyId"));
                                String companyName = String.valueOf(map.get("companyName"));
                                if (companyName.equals(str.trim())) {
                                    equipment.setCompanyId(companyId);
                                     flag = false;
                                     break;
                                }
                            }
                            if(flag){
                                return Result.error("第" + j + "条所属公司不能匹配！");
                            }
                        } else {
                            return Result.error("第" + j + "条所属公司不能为空！");
                        }
                        //2设备种类
                        if (row.getCell(1) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(1)));
                            for (Map<String, Object> map : eTypeList) {
                                Integer eTypeId = (Integer) map.get("eTypeId");
                                String eTypeName = String.valueOf(map.get("eTypeName"));
                                if (eTypeName.equals(str.trim())) {
                                    equipment.seteTypeId(eTypeId);
                                    flag = false;
                                    break;
                                }
                            }
                            if (flag){
                                return Result.error("第" + j + "条设备种类不能匹配！");
                            }
                        } else {
                            return Result.error("第" + j + "条设备种类不能为空！");
                        }
                        //3设备类别
                        if (row.getCell(2) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(2)));
                            for (Map<String, Object> map : eCategoryList) {
                                Integer eCategoryId = (Integer) map.get("eCategoryId");
                                String eCategoryName = String.valueOf(map.get("eCategoryName"));
                                if (eCategoryName.equals(str.trim())) {
                                    equipment.seteCategoryId(eCategoryId);
                                    flag = false;
                                    break;
                                }
                            }
                            if (flag){
                                return Result.error("第" + j + "条设备种类不能匹配！");
                            }
                        } else {
                            return Result.error("第" + j + "条设备种类不能为空！");
                        }
                        //设备名称
                        if (row.getCell(3) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(3)));
                            equipment.setName(str.trim());
                        } else {
                            return Result.error("第" + j + "条设备名称不能为空！");
                        }
                        //安全等级
                        if (row.getCell(4) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(4)));
                            equipment.setSafeLevel(str.trim());
                        } else {
                            return Result.error("第" + j + "条安全等级不能为空！");
                        }
                        //设备位号
                        if (row.getCell(5) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(5)));
                            equipment.setBitNumber(str.trim());
                        } else {
                            return Result.error("第" + j + "条设备位号不能为空！");
                        }
                        //所属单元
                        if (row.getCell(6) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(6)));
                            equipment.setUnit(str.trim());
                        } else {
                            return Result.error("第" + j + "条所属单元不能为空！");
                        }
                        //设备型号
                        if (row.getCell(7) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(7)));
                            equipment.setModel(str.trim());
                        } else {
                            return Result.error("第" + j + "条设备型号不能为空！");
                        }
                        //使用状态
                        if (row.getCell(8) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(8)));
                            for (Map<String, Object> map : useStatusList) {
                                String dicyCode = String.valueOf(map.get("value"));
                                String dictName = String.valueOf(map.get("text"));
                                if (dictName.equals(str.trim())) {
                                    equipment.setUseStatus(dicyCode);
                                     flag= false;
                                    break;
                                }
                            }
                            if (flag){
                                return Result.error("第" + j + "条设备种类不能匹配！");
                            }
                        } else {
                            return Result.error("第" + j + "条设备型号不能为空！");
                        }
                        //投入使用日期
                        if (row.getCell(9) != null) {
                            Object cellValue = getCellValue(row.getCell(9));
                            String valueOf = String.valueOf(cellValue);
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                            Date date = (Date)sdf.parseObject(valueOf);
//                            Date date = sdf.parse(valueOf);
                            equipment.setUseTime(date);
                        } else {
                            return Result.error("第" + j + "条投入使用日期不能为空！");
                        }
                        //使用寿命（年）
                        if (row.getCell(10) != null) {
                            Object cellValue = getCellValue(row.getCell(10));
                            String year = String.valueOf(cellValue);
                            equipment.setYear(year);
                        } else {
                            return Result.error("第" + j + "条使用寿命不能为空！");
                        }
                        //出厂编号
                        if (row.getCell(11) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(11)));
                            equipment.setFactoryNum(str);
                        }
                        //本次检验日期
                        if (row.getCell(12) != null) {
                            Object cellValue = getCellValue(row.getCell(12));
                            String valueOf = String.valueOf(cellValue);
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                            Date date = (Date)sdf.parseObject(valueOf);
                            equipmentRecord.setCheckTime(date);
                        } else {
                            return Result.error("第" + j + "条本次检验日期不能为空！");
                        }
                        //检验结论
                        if (row.getCell(13) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(13)));
                            for (Map<String, Object> map : checkResultList) {
                                String dicyCode = String.valueOf(map.get("value"));
                                String dictName = String.valueOf(map.get("text"));
                                if (dictName.equals(str.trim())) {
                                    equipmentRecord.setResult(dicyCode);
                                     flag=false;
                                    break;
                                }
                            }
                            if (flag){
                                return Result.error("第" + j + "条检验结论不能匹配！");
                            }
                        } else {
                            return Result.error("第" + j + "条检验结论不能为空！");
                        }
                        //下次检验日期
                        if (row.getCell(14) != null) {
                            Object cellValue = getCellValue(row.getCell(14));
                            String valueOf = String.valueOf(cellValue);
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                            Date date = (Date)sdf.parseObject(valueOf);
                            equipmentRecord.setNextCheckTime(date);
                        } else {
                            return Result.error("第" + j + "条下次检验日期不能为空！");
                        }
                        //计划淘汰日期
                        if (row.getCell(15) != null) {
                            Object cellValue = getCellValue(row.getCell(15));
                            String valueOf = String.valueOf(cellValue);
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                            Date date = (Date)sdf.parseObject(valueOf);
                            equipment.setPlanDestoryTime(date);
                        }
                        //使用证编号
                        if (row.getCell(16) != null) {
                            String str = String.valueOf(getCellValue(row.getCell(16)));
                            equipment.setUseCardNum(str);
                        }
                        //检验结构（特种设备特有）
                        if (row.getCell(17) != null) {
                            String s = String.valueOf(getCellValue(row.getCell(17)));
                            equipment.setCheckOrganization(s);
                        }
                        //额定起重量（起重机械类设备特有）
                        if (row.getCell(18) != null) {
                            String s = String.valueOf(getCellValue(row.getCell(18)));
                            equipment.setRatedLoad(s);
                        }
                        //基本信息备注
                        if (row.getCell(19) != null) {
                            String s = String.valueOf(getCellValue(row.getCell(19)));
                            equipment.setMainNote(s);
                        }
                        //设备检验备注
                        if (row.getCell(20) != null) {
                            String s = String.valueOf(getCellValue(row.getCell(20)));
                            equipmentRecord.setNote(s);
                        }

                        if (equipment != null && equipmentRecord != null) {

                            equipmentService.exportExcelEquipment(equipment, equipmentRecord);
                            inputStream.close();
                        }else {
                            return  Result.error(500,"请填写excel");
                        }
                    }
                    return Result.ok("导入成功");
                }
            } catch (InvalidFormatException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return Result.error("文件导入失败！");
    }

    /**
     * 导出excel
     * @param request
     * @param response
     */
    @GetMapping(value = "/xls")
    public void exportEquipment(HttpServletRequest request, HttpServletResponse response) {
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        EquipmentVo equipmentVo = new EquipmentVo();

        Workbook workbook = new SXSSFWorkbook(1000);
        Sheet sheet = workbook.createSheet("统计表");
        createTitle(workbook, sheet);
        SysRole sysRole = sysUserService.queryRoleByUserId(sysUser.getId());
        //是企业用户 加公司权限
        if (sysRole.getRoleCode().equals(FinalUtil.ROLE_CODE_ENTERPRISE)) {
            String companyId = sysDepartService.queryCompanyUserId(sysUser.getId());
            equipmentVo.setCompanyId(companyId);
        }
        List<EquipmentVo> objects = equipmentService.queryAll(equipmentVo);
        //设置日期格式
        CellStyle style = workbook.createCellStyle();
        style.setDataFormat(HSSFDataFormat.getBuiltinFormat("m/d/yy"));
        //新增数据行，并且设置单元格数据
        int rowNum = 1;
        for (EquipmentVo vo : objects) {
            Row row = sheet.createRow(rowNum);
            row.createCell(0).setCellValue(vo.getId());
            row.createCell(1).setCellValue(vo.getCompanyName());
            row.createCell(2).setCellValue(vo.geteTypeName());
            row.createCell(3).setCellValue(vo.geteCategoryName());
            row.createCell(4).setCellValue(vo.getName());
            row.createCell(5).setCellValue(vo.getSafeLevel());
            row.createCell(6).setCellValue(vo.getBitNumber());
            row.createCell(7).setCellValue(vo.getUnit());
            row.createCell(8).setCellValue(vo.getModel());
            row.createCell(9).setCellValue(vo.getUseStatus());

            //-------------
            Cell cell10 = row.createCell(10);
            if (vo.getUseTime() != null) {
                cell10.setCellValue(vo.getUseTime());
            }
            cell10.setCellStyle(style);
            //-------------

            row.createCell(11).setCellValue(vo.getYear());
            row.createCell(12).setCellValue(vo.getFactoryNum());

            //-------------
            Cell cell13 = row.createCell(13);
            if (vo.getCheckTime() != null) {
                cell13.setCellValue(vo.getCheckTime());
            }
            cell13.setCellStyle(style);
            //-------------

            row.createCell(14).setCellValue(vo.getTestResult());

            //-------------
            Cell cell15 = row.createCell(15);
            if (vo.getNextCheckTime() != null) {
                cell15.setCellValue(vo.getNextCheckTime());
            }
            cell15.setCellStyle(style);
            //-------------
            //-------------
            Cell cell16 = row.createCell(16);
            if (vo.getPlanDestoryTime() != null) {
                cell16.setCellValue(vo.getPlanDestoryTime());
            }
            cell16.setCellStyle(style);
            //-------------

            row.createCell(17).setCellValue(vo.getUseCardNum());
            row.createCell(18).setCellValue(vo.getCheckOrganization());
            row.createCell(19).setCellValue(vo.getRatedLoad());
            row.createCell(20).setCellValue(vo.getMainNote());
            row.createCell(21).setCellValue(vo.getNote());

            rowNum++;
        }

//        String fileName = "导出设备信息.xlsx";

        //生成excel文件
//            FileOutputStream fos = new FileOutputStream(fileName);
//            workbook.write(fos);
//            fos.flush();
        try {
            //浏览器下载excel
//            response.setContentType("application/vnd.ms-excel;charset=utf-8");
//            response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "utf-8"));

            OutputStream outputStream = response.getOutputStream();
//            response.setHeader("Content-Length", String.valueOf(outputStream.getChannel().size()));
            BufferedOutputStream bufferedOutPut = new BufferedOutputStream(outputStream);
            bufferedOutPut.flush();
            workbook.write(bufferedOutPut);
            outputStream.close();
            bufferedOutPut.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * 描述：对表格中数值进行格式化
     *
     * @param cell
     * @return
     */
    public static Object getCellValue(Cell cell) {
        Object value = null;
        DecimalFormat df = new DecimalFormat("0");  //格式化number String字符
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  //日期格式化
        switch (cell.getCellType()) {
            case Cell.CELL_TYPE_STRING:
                value = cell.getRichStringCellValue().getString();
                break;
            case Cell.CELL_TYPE_NUMERIC:
                if ("General".equals(cell.getCellStyle().getDataFormatString())) {
                    value = df.format(cell.getNumericCellValue());
                } else if ("m/d/yy".equals(cell.getCellStyle().getDataFormatString())) {
                    value = sdf.format(cell.getDateCellValue());
                } else {
                    value = df.format(cell.getNumericCellValue());
                }
                break;
            case Cell.CELL_TYPE_BOOLEAN:
                value = cell.getBooleanCellValue();
                break;
            case Cell.CELL_TYPE_BLANK:
                value = "";
                break;
            default:
                break;
        }
        return value;
    }

    /**
     * @return
     * @Description TOOD 查询计划淘汰设备列表
     * @date 2019/5/16 11:21
     * auther 13662
     */
    @GetMapping(value = "/EquipmentByPlanTime")
    public Result<List<Equipment>> EquipmentByPlanTime() {
        Result<List<Equipment>> result = new Result<List<Equipment>>();
        List<Equipment> equipment = equipmentService.EquipmentByPlanTime();
        if (equipment == null) {
            result.error500("没有查询到数据");
        } else {
            result.setResult(equipment);
            result.setSuccess(true);
        }
        return result;
    }

    /**
     * @return
     * @Description TOOD 根据设备种类统计查询
     * @date 2019/5/16 11:21
     * auther 13662
     */
    @GetMapping(value = "/EquipmentByEtype")
    public Result<List<Map<String, Object>>> EquipmentByEtype() {
        Result<List<Map<String, Object>>> result = new Result<List<Map<String, Object>>>();
        List<Map<String, Object>> EquipmentMap = equipmentService.EquipmentByEtype();
        result.setResult(EquipmentMap);
        result.setSuccess(true);
        return result;
    }

    /**
     * @return
     * @Description TOOD 首頁統計
     * @date 2019/5/16 11:21
     * auther 13662
     */
    @GetMapping(value = "/home")
    public Result<List<Map<String, Object>>> test() {
        Result<List<Map<String, Object>>> result = new Result<List<Map<String, Object>>>();
        //设备使用状态统计
        List<Map<String, Object>> EquipmentMap = equipmentService.EquipmentByStatus();
        //计划淘汰4
        List<Map<String, Object>> EquipmentMap1 = equipmentService.EquipmentBytime();

        List<Map<String, Object>> EquipmentMap2 = equipmentService.EquipmentBydestory();

        List<Map<String, Object>> EquipmentMap3 = equipmentService.EquipmentByrecord();
        EquipmentMap.addAll(EquipmentMap1);
        EquipmentMap.addAll(EquipmentMap2);
        EquipmentMap.addAll(EquipmentMap3);
        result.setResult(EquipmentMap);
        result.setSuccess(true);
        return result;
    }

    /**
     * @return
     * @Description TOOD 根据公司设备种类分类统计
     * @date 2019/5/17 11:24
     * auther 13662
     */
    @GetMapping(value = "/queryCountByCompany")
    public Result<List<Map<String, Object>>> queryCountByCompany() {
        Result<List<Map<String, Object>>> result = new Result<List<Map<String, Object>>>();
        List<Map<String, Object>> equipmentList = equipmentService.queryCountByCompany();
        result.setResult(equipmentList);
        result.setSuccess(true);
        return result;
    }

    /**
     * @return
     * @Description TOOD 设备分类统计查询
     * @date 2019/5/17 14:27
     * auther 13662
     */
    @PostMapping(value = "/queryCountBytype")
    public Result<List<Map<String, Object>>> queryCountBytype(@Param("typeid") String typeid) {
        Result<List<Map<String, Object>>> result = new Result<>();
        List<Map<String, Object>> equipmentList = equipmentService.queryCountBytype(typeid);
        result.setResult(equipmentList);
        result.setSuccess(true);
        return result;
    }



    /**
     * @return
     * @Description TOOD 特种设备按类别分类统计
     * @date 2019/5/19 16:30
     * auther 13662
     */
    @GetMapping(value = "/queryCensusById")
    public Result<List<Map<String, Object>>> queryCensusById(@Param("companyId") String companyId) {
        Result<List<Map<String, Object>>> result = new Result<>();
        List<Map<String, Object>> equipmentList = equipmentService.queryCensusById(companyId);
        result.setResult(equipmentList);
        result.setSuccess(true);
        return result;
    }


    //创建表头
    private void createTitle(Workbook workbook, Sheet sheet) {
        Row row = sheet.createRow(0);
        //设置列宽，setColumnWidth的第二个参数要乘以256，这个参数的单位是1/256个字符宽度
        sheet.setColumnWidth(1, 12 * 256);
        sheet.setColumnWidth(3, 17 * 256);

        //设置为居中加粗
        CellStyle style = workbook.createCellStyle();
        Font font = workbook.createFont();
//        style.setAlignment(A);
        style.setFont(font);

        Cell cell;
        cell = row.createCell(0);
        cell.setCellValue("ID");
        cell.setCellStyle(style);

        cell = row.createCell(1);
        cell.setCellValue("所属公司");
        cell.setCellStyle(style);

        cell = row.createCell(2);
        cell.setCellValue("设备种类");
        cell.setCellStyle(style);

        cell = row.createCell(3);
        cell.setCellValue("设备类别");
        cell.setCellStyle(style);

        cell = row.createCell(4);
        cell.setCellValue("设备名称");
        cell.setCellStyle(style);

        cell = row.createCell(5);
        cell.setCellValue("安全等级");
        cell.setCellStyle(style);

        cell = row.createCell(6);
        cell.setCellValue("设备位号");
        cell.setCellStyle(style);

        cell = row.createCell(7);
        cell.setCellValue("所属单元");
        cell.setCellStyle(style);

        cell = row.createCell(8);
        cell.setCellValue("设备型号");
        cell.setCellStyle(style);

        cell = row.createCell(9);
        cell.setCellValue("使用状态");
        cell.setCellStyle(style);

        cell = row.createCell(10);
        cell.setCellValue("投入使用日期");
        cell.setCellStyle(style);

        cell = row.createCell(11);
        cell.setCellValue("使用寿命");
        cell.setCellStyle(style);

        cell = row.createCell(12);
        cell.setCellValue("出厂编号");
        cell.setCellStyle(style);

        cell = row.createCell(13);
        cell.setCellValue("本次检验日期");
        cell.setCellStyle(style);


        cell = row.createCell(14);
        cell.setCellValue("检验结论");
        cell.setCellStyle(style);


        cell = row.createCell(15);
        cell.setCellValue("下次检验日期");
        cell.setCellStyle(style);

        cell = row.createCell(16);
        cell.setCellValue("计划淘汰时间");
        cell.setCellStyle(style);

        cell = row.createCell(17);
        cell.setCellValue("使用证编号");
        cell.setCellStyle(style);

        cell = row.createCell(18);
        cell.setCellValue("检验机构（特种设备特有）");
        cell.setCellStyle(style);


        cell = row.createCell(19);
        cell.setCellValue("额定起重量（起重机械类设备特有）");
        cell.setCellStyle(style);

        cell = row.createCell(20);
        cell.setCellValue("基本信息备注");
        cell.setCellStyle(style);

        cell = row.createCell(21);
        cell.setCellValue("设备检验备注");
        cell.setCellStyle(style);
    }

    /**
     * 下载模板
     */
    @RequestMapping(value = "/downloadExcel")
    public void downloadExcel(HttpServletResponse res)  {
        try {
            //获取文件的路径
            File file = ResourceUtils.getFile("classpath:static/excel/equipment.xlsx");
            InputStream inStream = new FileInputStream(file);//文件的存放路径
            res.reset();
            byte[] b = new byte[200];
            int len;
            while ((len = inStream.read(b)) > 0) {
                res.getOutputStream().write(b, 0, len);
            }
            inStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
