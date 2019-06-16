package org.jeecg.modules.equipmentrecord.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.equipmentrecord.entity.EquipmentRecord;
import org.jeecg.modules.equipmentrecord.mapper.EquipmentRecordMapper;
import org.jeecg.modules.equipmentrecord.service.IEquipmentRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Description: 设备生命周期
 * @author： jeecg-boot
 * @date：   2019-05-15
 * @version： V1.0
 */
@Service
public class EquipmentRecordServiceImpl extends ServiceImpl<EquipmentRecordMapper, EquipmentRecord> implements IEquipmentRecordService {

    @Autowired
    private EquipmentRecordMapper equipmentRecordMapper;

}
