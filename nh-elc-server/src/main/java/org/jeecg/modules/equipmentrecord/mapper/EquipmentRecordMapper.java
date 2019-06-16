package org.jeecg.modules.equipmentrecord.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.equipmentrecord.entity.EquipmentRecord;

/**
 * @Description: 设备生命周期
 * @author： jeecg-boot
 * @date：   2019-05-15
 * @version： V1.0
 */
public interface EquipmentRecordMapper extends BaseMapper<EquipmentRecord> {

    /**
     * 根据设备id 查询设备生命周期
     * @param equipmentId
     * @return
     */
    EquipmentRecord queryByEquipId(@Param(value = "equipmentId") Integer equipmentId);

    void editByEquipmentId(@Param(value = "equipmentId")Integer equipmentId);

    /**
     * 更新
     * @param equipmentRecord
     */
    void updateEquipmentRecord(EquipmentRecord equipmentRecord);

    /**
     * 根据设备id查询统计record 表
     * @param equipmentId
     */
    int queryCountByEquipmentId(@Param(value = "equipmentId")Integer equipmentId);

    /**
     * 根据设备id 查询设备recordid
     * @param id
     * @return
     */
    Integer queryRecordIdByEquipId(@Param(value = "equipmentId")Integer id);
}
