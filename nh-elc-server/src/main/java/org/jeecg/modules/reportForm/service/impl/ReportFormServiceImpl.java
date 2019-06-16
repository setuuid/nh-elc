/**  
 * All rights Reserved
 * @Title:  ReportFormServiceImpl.java   
 * @Package org.jeecg.modules.reportForm.service.impl   
 * @Description:    TODO   
 * @author: 鼎腾(天津)科技 zq
 * @date:   2019年5月17日 下午11:42:30   
 * @version V1.0 
 */
package org.jeecg.modules.reportForm.service.impl;

import java.util.List;
import java.util.Map;

import org.jeecg.modules.reportForm.mapper.ReportFormMapper;
import org.jeecg.modules.reportForm.service.IReportFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**   
 * @ClassName:  ReportFormServiceImpl   
 * @Description:TODO
 * @author: 鼎腾(天津)科技  zq 
 * @date:   2019年5月17日 下午11:42:30   
 *     
 */
@Service
public class ReportFormServiceImpl implements IReportFormService {

	@Autowired
	private ReportFormMapper reportFormMapper;

	/**
	 * 
	 * <p>Title: queryEliminateEquipment</p>   
	 * <p>Description: </p> 根据条件统计淘汰与计划淘汰的设备数量  
	 * @return   
	 * @see org.jeecg.modules.reportForm.service.IReportFormService#queryEliminateEquipment()
	 */
	@Override
	public List<Map<String, Object>> queryEliminateEquipment(Map<String,Object> param) {
		List<Map<String, Object>> list_result= reportFormMapper.queryEliminateEquipment(param);
		return list_result;
	}

	/**   
	 * <p>Title: queryEliminateSpecialEquipment</p>   
	 * <p>Description: </p>   计划淘汰设备页面，点击查询特种作业设备统计数展示列表
	 * @param param
	 * @return   
	 * @see org.jeecg.modules.reportForm.service.IReportFormService#queryEliminateSpecialEquipment(java.util.Map)   
	 */
	@Override
	public List<Map<String, Object>> queryEliminateSpecialEquipment(Map<String, Object> param) {
		List<Map<String, Object>> list_result= reportFormMapper.queryEliminateSpecialEquipment(param);
		return list_result;
	}
	

}
