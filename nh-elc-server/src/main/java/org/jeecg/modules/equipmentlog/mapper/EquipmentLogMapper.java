package org.jeecg.modules.equipmentlog.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.equipmentlog.entity.EquipmentLog;
import org.jeecg.modules.equipmentlog.vo.EquipmentLogVo;

import java.util.List;

/**
 * @Description: 设备操作记录
 * @author： jeecg-boot
 * @date：   2019-05-16
 * @version： V1.0
 */
public interface EquipmentLogMapper extends BaseMapper<EquipmentLog> {

    List<EquipmentLogVo> queryListByParam(Page<EquipmentLogVo> page, EquipmentLogVo equipmentLogVo);

    EquipmentLogVo queryContentById(@Param(value = "id") Integer id);
}
