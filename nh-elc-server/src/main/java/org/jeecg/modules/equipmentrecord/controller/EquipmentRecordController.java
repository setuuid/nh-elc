package org.jeecg.modules.equipmentrecord.controller;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.equipmentrecord.entity.EquipmentRecord;
import org.jeecg.modules.equipmentrecord.service.IEquipmentRecordService;
import org.jeecgframework.poi.excel.ExcelImportUtil;
import org.jeecgframework.poi.excel.def.NormalExcelConstants;
import org.jeecgframework.poi.excel.entity.ExportParams;
import org.jeecgframework.poi.excel.entity.ImportParams;
import org.jeecgframework.poi.excel.view.JeecgEntityExcelView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

 /**
 * @Title: Controller
 * @Description: 设备生命周期
 * @author： jeecg-boot
 * @date：   2019-05-15
 * @version： V1.0
 */
@RestController
@RequestMapping("/equipmentrecord")
@Slf4j
public class EquipmentRecordController {
	@Autowired
	private IEquipmentRecordService equipmentRecordService;
	
	/**
	  * 分页列表查询
	 * @param equipmentRecord
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@GetMapping(value = "/list")
	public Result<IPage<EquipmentRecord>> queryPageList(EquipmentRecord equipmentRecord,
									  @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
									  @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
									  HttpServletRequest req) {
		Result<IPage<EquipmentRecord>> result = new Result<IPage<EquipmentRecord>>();
		QueryWrapper<EquipmentRecord> queryWrapper = QueryGenerator.initQueryWrapper(equipmentRecord, req.getParameterMap());
		Page<EquipmentRecord> page = new Page<EquipmentRecord>(pageNo, pageSize);
		IPage<EquipmentRecord> pageList = equipmentRecordService.page(page, queryWrapper);
		result.setSuccess(true);
		result.setResult(pageList);
		return result;
	}
	
	/**
	  *   添加
	 * @param equipmentRecord
	 * @return
	 */
	@PostMapping(value = "/add")
	public Result<EquipmentRecord> add(@RequestBody EquipmentRecord equipmentRecord) {
		Result<EquipmentRecord> result = new Result<EquipmentRecord>();
		try {
			equipmentRecordService.save(equipmentRecord);
			result.success("添加成功！");
		} catch (Exception e) {
			e.printStackTrace();
			log.info(e.getMessage());
			result.error500("操作失败");
		}
		return result;
	}
	
	/**
	  *  编辑
	 * @param equipmentRecord
	 * @return
	 */
	@PutMapping(value = "/edit")
	public Result<EquipmentRecord> edit(@RequestBody EquipmentRecord equipmentRecord) {
		Result<EquipmentRecord> result = new Result<EquipmentRecord>();
		EquipmentRecord equipmentRecordEntity = equipmentRecordService.getById(equipmentRecord.getId());
		if(equipmentRecordEntity==null) {
			result.error500("未找到对应实体");
		}else {
			boolean ok = equipmentRecordService.updateById(equipmentRecord);
			//TODO 返回false说明什么？
			if(ok) {
				result.success("修改成功!");
			}
		}
		
		return result;
	}
	
	/**
	  *   通过id删除
	 * @param id
	 * @return
	 */
	@DeleteMapping(value = "/delete")
	public Result<EquipmentRecord> delete(@RequestParam(name="id",required=true) String id) {
		Result<EquipmentRecord> result = new Result<EquipmentRecord>();
		EquipmentRecord equipmentRecord = equipmentRecordService.getById(id);
		if(equipmentRecord==null) {
			result.error500("未找到对应实体");
		}else {
			boolean ok = equipmentRecordService.removeById(id);
			if(ok) {
				result.success("删除成功!");
			}
		}
		
		return result;
	}
	
	/**
	  *  批量删除
	 * @param ids
	 * @return
	 */
	@DeleteMapping(value = "/deleteBatch")
	public Result<EquipmentRecord> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		Result<EquipmentRecord> result = new Result<EquipmentRecord>();
		if(ids==null || "".equals(ids.trim())) {
			result.error500("参数不识别！");
		}else {
			this.equipmentRecordService.removeByIds(Arrays.asList(ids.split(",")));
			result.success("删除成功!");
		}
		return result;
	}
	
	/**
	  * 通过id查询
	 * @param id
	 * @return
	 */
	@GetMapping(value = "/queryById")
	public Result<EquipmentRecord> queryById(@RequestParam(name="id",required=true) String id) {
		Result<EquipmentRecord> result = new Result<EquipmentRecord>();
		EquipmentRecord equipmentRecord = equipmentRecordService.getById(id);
		if(equipmentRecord==null) {
			result.error500("未找到对应实体");
		}else {
			result.setResult(equipmentRecord);
			result.setSuccess(true);
		}
		return result;
	}

  /**
      * 导出excel
   *
   * @param request
   * @param response
   */
  @RequestMapping(value = "/exportXls")
  public ModelAndView exportXls(HttpServletRequest request, HttpServletResponse response) {
      // Step.1 组装查询条件
      QueryWrapper<EquipmentRecord> queryWrapper = null;
      try {
          String paramsStr = request.getParameter("paramsStr");
          if (oConvertUtils.isNotEmpty(paramsStr)) {
              String deString = URLDecoder.decode(paramsStr, "UTF-8");
              EquipmentRecord equipmentRecord = JSON.parseObject(deString, EquipmentRecord.class);
              queryWrapper = QueryGenerator.initQueryWrapper(equipmentRecord, request.getParameterMap());
          }
      } catch (UnsupportedEncodingException e) {
          e.printStackTrace();
      }

      //Step.2 AutoPoi 导出Excel
      ModelAndView mv = new ModelAndView(new JeecgEntityExcelView());
      List<EquipmentRecord> pageList = equipmentRecordService.list(queryWrapper);
      //导出文件名称
      mv.addObject(NormalExcelConstants.FILE_NAME, "设备生命周期列表");
      mv.addObject(NormalExcelConstants.CLASS, EquipmentRecord.class);
      mv.addObject(NormalExcelConstants.PARAMS, new ExportParams("设备生命周期列表数据", "导出人:Jeecg", "导出信息"));
      mv.addObject(NormalExcelConstants.DATA_LIST, pageList);
      return mv;
  }

  /**
      * 通过excel导入数据
   *
   * @param request
   * @param response
   * @return
   */
  @RequestMapping(value = "/importExcel", method = RequestMethod.POST)
  public Result<?> importExcel(HttpServletRequest request, HttpServletResponse response) {
      MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
      Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
      for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {
          MultipartFile file = entity.getValue();// 获取上传文件对象
          ImportParams params = new ImportParams();
          params.setTitleRows(2);
          params.setHeadRows(1);
          params.setNeedSave(true);
          try {
              List<EquipmentRecord> listEquipmentRecords = ExcelImportUtil.importExcel(file.getInputStream(), EquipmentRecord.class, params);
              for (EquipmentRecord equipmentRecordExcel : listEquipmentRecords) {
                  equipmentRecordService.save(equipmentRecordExcel);
              }
              return Result.ok("文件导入成功！数据行数：" + listEquipmentRecords.size());
          } catch (Exception e) {
              log.error(e.getMessage());
              return Result.error("文件导入失败！");
          } finally {
              try {
                  file.getInputStream().close();
              } catch (IOException e) {
                  e.printStackTrace();
              }
          }
      }
      return Result.ok("文件导入失败！");
  }

}
