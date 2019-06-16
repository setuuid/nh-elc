package org.jeecg.modules.equipmentlog.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.equipmentlog.entity.EquipmentLog;
import org.jeecg.modules.equipmentlog.vo.EquipmentLogVo;

import java.util.List;
import java.util.Map;

/**
 * @Description: 设备操作记录
 * @author： jeecg-boot
 * @date：   2019-05-16
 * @version： V1.0
 */
public interface IEquipmentLogService extends IService<EquipmentLog> {

    IPage<EquipmentLogVo> queryPage(Page<EquipmentLogVo> page, EquipmentLogVo equipmentLogVo);

    List<Map<String, Object>> queryContentById(Integer id);
}
