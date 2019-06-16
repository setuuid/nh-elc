package org.jeecg.modules.etype.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.etype.entity.Etype;

import java.util.List;

/**
 * @Description: 设备种类表
 * @author： jeecg-boot
 * @date：   2019-05-15
 * @version： V1.0
 */
public interface EtypeMapper extends BaseMapper<Etype> {
    /**
     * 查询所有
     * @return
     */
    List<Etype> findAll();
}
