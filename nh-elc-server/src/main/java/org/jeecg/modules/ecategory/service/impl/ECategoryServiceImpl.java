package org.jeecg.modules.ecategory.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.ecategory.entity.ECategory;
import org.jeecg.modules.ecategory.mapper.ECategoryMapper;
import org.jeecg.modules.ecategory.service.IECategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 设备类别serviceImpl
 */
@Service
public class ECategoryServiceImpl extends ServiceImpl<ECategoryMapper, ECategory> implements IECategoryService {
    @Autowired
    ECategoryMapper eCategoryMapper;

    @Override
    public List<Map<String, Object>> queryItemsECateGory(Integer eTypeId) {
        List<ECategory> list = eCategoryMapper.queryItemsECateGory(eTypeId);
        List<Map<String, Object>> mapList= new ArrayList<>();
        for (ECategory eCategory : list) {
            Map<String, Object> map = new HashMap<>();
            Integer id = eCategory.getId();
            String name = eCategory.getName();
            map.put("eCategoryId",id);
            map.put("eCategoryName",name);
            mapList.add(map);
        }
        return mapList;
    }

    @Override
    public List<Map<String, Object>> queryECateGoryItems() {
        List<ECategory> list=eCategoryMapper.queryECateGoryItems();
        List<Map<String, Object>> mapList= new ArrayList<>();
        for (ECategory eCategory : list) {
            Map<String, Object> map = new HashMap<>();
            Integer id = eCategory.getId();
            String name = eCategory.getName();
            map.put("eCategoryId",id);
            map.put("eCategoryName",name);
            mapList.add(map);
        }
        return mapList;
    }

}
