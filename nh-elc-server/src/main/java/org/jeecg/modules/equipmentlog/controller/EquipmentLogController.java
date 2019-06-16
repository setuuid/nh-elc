package org.jeecg.modules.equipmentlog.controller;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import lombok.extern.slf4j.Slf4j;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.equipmentlog.entity.EquipmentLog;
import org.jeecg.modules.equipmentlog.service.IEquipmentLogService;
import org.jeecg.modules.equipmentlog.vo.EquipmentLogVo;
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
 * @Description: 设备操作记录
 * @author： jeecg-boot
 * @date：   2019-05-16
 * @version： V1.0
 */
@RestController
@RequestMapping("/equipmentlog/equipmentLog")
@Slf4j
public class EquipmentLogController {
	@Autowired
	private IEquipmentLogService equipmentLogService;
	
	/**
	  * 分页列表查询
	 * @param equipmentLog
	 * @param pageNo
	 * @param pageSize
	 * @param req
	 * @return
	 */
	@GetMapping(value = "/list")
	public Result<IPage<EquipmentLog>> queryPageList(EquipmentLog equipmentLog,
									  @RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
									  @RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
									  HttpServletRequest req) {
		Result<IPage<EquipmentLog>> result = new Result<IPage<EquipmentLog>>();
		QueryWrapper<EquipmentLog> queryWrapper = QueryGenerator.initQueryWrapper(equipmentLog, req.getParameterMap());
		Page<EquipmentLog> page = new Page<EquipmentLog>(pageNo, pageSize);
		IPage<EquipmentLog> pageList = equipmentLogService.page(page, queryWrapper);
		result.setSuccess(true);
		result.setResult(pageList);
		return result;
	}

	 /**
	  * 分页列表查询
	  * @param pageNo
	  * @param pageSize
	  * @param req
	  * @return
	  */
	 @GetMapping(value = "/listvo")
	 public Result<IPage<EquipmentLogVo>> queryPage(EquipmentLogVo equipmentLogVo,
													@RequestParam(name="pageNo", defaultValue="1") Integer pageNo,
													@RequestParam(name="pageSize", defaultValue="10") Integer pageSize,
													HttpServletRequest req) {
		 Result<IPage<EquipmentLogVo>> result = new Result<IPage<EquipmentLogVo>>();
		 Page<EquipmentLogVo> page = new Page<EquipmentLogVo>(pageNo, pageSize);
		 IPage<EquipmentLogVo> pageList = equipmentLogService.queryPage(page, equipmentLogVo);
		 result.setSuccess(true);
		 result.setResult(pageList);
		 return result;
	 }
	/**
	  *   添加
	 * @param equipmentLog
	 * @return
	 */
	@PostMapping(value = "/add")
	public Result<EquipmentLog> add(@RequestBody EquipmentLog equipmentLog) {
		Result<EquipmentLog> result = new Result<EquipmentLog>();
		try {
			equipmentLogService.save(equipmentLog);
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
	 * @param equipmentLog
	 * @return
	 */
	@PutMapping(value = "/edit")
	public Result<EquipmentLog> edit(@RequestBody EquipmentLog equipmentLog) {
		Result<EquipmentLog> result = new Result<EquipmentLog>();
		EquipmentLog equipmentLogEntity = equipmentLogService.getById(equipmentLog.getId());
		if(equipmentLogEntity==null) {
			result.error500("未找到对应实体");
		}else {
			boolean ok = equipmentLogService.updateById(equipmentLog);
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
	public Result<EquipmentLog> delete(@RequestParam(name="id",required=true) String id) {
		Result<EquipmentLog> result = new Result<EquipmentLog>();
		EquipmentLog equipmentLog = equipmentLogService.getById(id);
		if(equipmentLog==null) {
			result.error500("未找到对应实体");
		}else {
			boolean ok = equipmentLogService.removeById(id);
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
	public Result<EquipmentLog> deleteBatch(@RequestParam(name="ids",required=true) String ids) {
		Result<EquipmentLog> result = new Result<EquipmentLog>();
		if(ids==null || "".equals(ids.trim())) {
			result.error500("参数不识别！");
		}else {
			this.equipmentLogService.removeByIds(Arrays.asList(ids.split(",")));
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
	public Result<EquipmentLog> queryById(@RequestParam(name="id",required=true) String id) {
		Result<EquipmentLog> result = new Result<EquipmentLog>();
		EquipmentLog equipmentLog = equipmentLogService.getById(id);
		if(equipmentLog==null) {
			result.error500("未找到对应实体");
		}else {
			result.setResult(equipmentLog);
			result.setSuccess(true);
		}
		return result;
	}
	 /**
	  * 通过id查询
	  * @param id
	  * @return
	  */
	 @GetMapping(value = "/queryContentById/{id}")
	 public Result<List<Map<String,Object>>> queryContentById(@PathVariable(value = "id") Integer id) {
		 Result<List<Map<String,Object>>>result = new Result<List<Map<String,Object>>>();
		 List<Map<String,Object>>  mapList= equipmentLogService.queryContentById(id);
			 result.setResult(mapList);
			 result.setSuccess(true);
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
      QueryWrapper<EquipmentLog> queryWrapper = null;
      try {
          String paramsStr = request.getParameter("paramsStr");
          if (oConvertUtils.isNotEmpty(paramsStr)) {
              String deString = URLDecoder.decode(paramsStr, "UTF-8");
              EquipmentLog equipmentLog = JSON.parseObject(deString, EquipmentLog.class);
              queryWrapper = QueryGenerator.initQueryWrapper(equipmentLog, request.getParameterMap());
          }
      } catch (UnsupportedEncodingException e) {
          e.printStackTrace();
      }

      //Step.2 AutoPoi 导出Excel
      ModelAndView mv = new ModelAndView(new JeecgEntityExcelView());
      List<EquipmentLog> pageList = equipmentLogService.list(queryWrapper);
      //导出文件名称
      mv.addObject(NormalExcelConstants.FILE_NAME, "设备操作记录列表");
      mv.addObject(NormalExcelConstants.CLASS, EquipmentLog.class);
      mv.addObject(NormalExcelConstants.PARAMS, new ExportParams("设备操作记录列表数据", "导出人:Jeecg", "导出信息"));
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
              List<EquipmentLog> listEquipmentLogs = ExcelImportUtil.importExcel(file.getInputStream(), EquipmentLog.class, params);
              for (EquipmentLog equipmentLogExcel : listEquipmentLogs) {
                  equipmentLogService.save(equipmentLogExcel);
              }
              return Result.ok("文件导入成功！数据行数：" + listEquipmentLogs.size());
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
