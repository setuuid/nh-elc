package org.jeecg.modules.ecategory.service;

import java.util.List;
import java.util.Map;

/**
 * 设备类别service 接口
 */
public interface IECategoryService {
    /**
     * 根据设备种类id 查询下拉
     * @param eTypeId
     * @return
     */
    List<Map<String, Object>> queryItemsECateGory(Integer eTypeId);


    List<Map<String, Object>> queryECateGoryItems();
}
