/**  
 * All rights Reserved
 * @Title:  IReportFormService.java   
 * @Package org.jeecg.modules.reportForm.service   
 * @Description:    TODO   
 * @author: 鼎腾(天津)科技 zq
 * @date:   2019年5月17日 下午11:41:43   
 * @version V1.0 
 */
package org.jeecg.modules.reportForm.service;

import java.util.List;
import java.util.Map;

/**   
 * @ClassName:  IReportFormService   
 * @Description:TODO
 * @author: 鼎腾(天津)科技  zq 
 * @date:   2019年5月17日 下午11:41:43   
 *     
 */
public interface IReportFormService {
    /**
     * 
     * @Title: queryEliminateEquipment   
     * @Description: TODO  根据条件统计淘汰与计划淘汰的设备数量  
     * @param: @param param
     * @param: @return      
     * @return: List<Map<String,Object>>      
     * @throws
     */
	public List<Map<String,Object>> queryEliminateEquipment(Map<String,Object> param);

	/**   
	 * @Title: queryEliminateSpecialEquipment   
	 * @Description: TODO  计划淘汰设备页面，点击查询特种作业设备统计数展示列表
	 * @param: @param param
	 * @param: @return      
	 * @return: List<Map<String,Object>>      
	 * @throws   
	 */
	public List<Map<String, Object>> queryEliminateSpecialEquipment(Map<String, Object> param);
}
