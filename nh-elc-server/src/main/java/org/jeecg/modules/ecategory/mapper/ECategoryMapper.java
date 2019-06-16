package org.jeecg.modules.ecategory.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.ecategory.entity.ECategory;

import java.util.List;

public interface ECategoryMapper extends BaseMapper<ECategory> {

    List<ECategory> queryItemsECateGory(@Param(value = "eTypeId") Integer eTypeId);


    List<ECategory> queryECateGoryItems();
}
