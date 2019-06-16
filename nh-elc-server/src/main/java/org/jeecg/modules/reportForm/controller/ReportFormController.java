package org.jeecg.modules.reportForm.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.reportForm.service.IReportFormService;
import org.jeecg.modules.system.entity.SysDepart;
import org.jeecg.modules.system.entity.SysRole;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecg.modules.system.service.ISysDepartService;
import org.jeecg.modules.system.service.ISysUserRoleService;
import org.jeecg.modules.utils.FinalUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.slf4j.Slf4j;

/**
 * @ClassName: ReportFormController
 * @Description:TODO
 * @author: 鼎腾(天津)科技 zq
 * @date: 2019年5月17日 下午11:40:38
 * 
 */
@RestController
@RequestMapping("/reportForm")
@Slf4j
public class ReportFormController {
	@Autowired
	private IReportFormService reportFormService;
	@Autowired
	private ISysDepartService sysDepartService;
	@Autowired
	private ISysUserRoleService sysUserRoleService;
/**
 * 
 * @Title: queryEliminateEquipment   
 * @Description: TODO  根据条件统计淘汰与计划淘汰的设备数量  
 * @param: @param year
 * @param: @return      
 * @return: Result<List<Map<String,Object>>>      
 * @throws
 */
	@RequestMapping(value = "/queryEliminateEquipment", method = RequestMethod.GET)
	public Result<List<Map<String, Object>>> queryEliminateEquipment(@RequestParam(name = "year", defaultValue = "") String year) {

		Result<List<Map<String, Object>>> result = new Result<List<Map<String, Object>>>();
		try {
			Map<String, Object> param = new HashMap<String, Object>();
			// 默认当前年度
			if ("".equals(year) || year == null) {
				year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
			}
			param.put("year", year);
            //根据当前登录人的角色，添加对应的数据权限
			//获取登录人
			SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
			//获取登录人的角色
			List<SysRole> listSysRole = sysUserRoleService.getRoleByUserId(sysUser.getId());
			//获取登录人所在公司
			String companyId =sysDepartService.queryCompanyUserId(sysUser.getId());
			//判断角色
			if(listSysRole != null && listSysRole.size()>0){
				for (SysRole sysRole : listSysRole) {
					if(FinalUtil.ROLE_CODE_ENTERPRISE.equals(sysRole.getRoleCode())){
						param.put("companyId", companyId);
					}
				}
			}
			List<Map<String, Object>> list_result = reportFormService.queryEliminateEquipment(param);
			list_result.get(list_result.size()-1).put("departname", "合计");
			result.setResult(list_result);
			result.success("查询成功！");
		} catch (Exception e) {
			e.printStackTrace();
			log.info(e.getMessage());
			result.error500("查询失败");
		}
		return result;
	}
	/**
	 * 计划淘汰设备页面，点击查询特种作业设备统计数展示列表
	 * @Title: queryEliminateSpecialEquipment   
	 * @Description: TODO  
	 * @param: @param year
	 * @param: @param companyId
	 * @param: @return      
	 * @return: Result<List<Map<String,Object>>>      
	 * @throws
	 */
	@RequestMapping(value = "/queryEliminateSpecialEquipment", method = RequestMethod.GET)
	public Result<List<Map<String,Object>>> queryEliminateSpecialEquipment(@RequestParam(name = "year", defaultValue = "") String year,
			@RequestParam(name = "companyId", defaultValue = "") String companyId){
		   Result<List<Map<String, Object>>> result = new Result<List<Map<String, Object>>>();
		   try {
				Map<String, Object> param = new HashMap<String, Object>();
				// 默认当前年度
				if ("".equals(year) || year == null) {
					year = String.valueOf(Calendar.getInstance().get(Calendar.YEAR));
				}
				param.put("year", year);
				param.put("companyId", companyId);
				List<Map<String, Object>> list_result = reportFormService.queryEliminateSpecialEquipment(param);
				SysDepart sysDepartEntity = sysDepartService.getById(companyId);
				for(int i=0;i<list_result.size();i++){
					list_result.get(i).put("company_name", sysDepartEntity.getDepartName());
					if(!list_result.get(i).containsKey("company_id")){
						list_result.get(i).put("company_id", sysDepartEntity.getId());
					}
				}
				list_result.get(list_result.size()-1).put("category_name", "合计");
				result.setResult(list_result);
				result.success("查询成功！");
			} catch (Exception e) {
				e.printStackTrace();
				log.info(e.getMessage());
				result.error500("查询失败");
			}
		return result;
	}
}
