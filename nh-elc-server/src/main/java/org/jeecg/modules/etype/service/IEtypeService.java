package org.jeecg.modules.etype.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.etype.entity.Etype;

import java.util.List;
import java.util.Map;

/**
 * @Description: 设备种类表
 * @author： jeecg-boot
 * @date：   2019-05-15
 * @version： V1.0
 */
public interface IEtypeService extends IService<Etype> {

    /**
     * 查询 设备种类表 所有
     * @return
     */
    List<Etype> findAll();

    /**
     * 查询  id  name 设备种类 提供查询下拉
     * @return
     */
    List<Map<String, Object>> queryItemsEType();
}
