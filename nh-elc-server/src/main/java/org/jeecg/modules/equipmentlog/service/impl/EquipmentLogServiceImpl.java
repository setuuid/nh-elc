package org.jeecg.modules.equipmentlog.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.common.util.DateUtils;
import org.jeecg.modules.equipmentlog.entity.EquipmentLog;
import org.jeecg.modules.equipmentlog.mapper.EquipmentLogMapper;
import org.jeecg.modules.equipmentlog.service.IEquipmentLogService;
import org.jeecg.modules.equipmentlog.vo.EquipmentLogVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @Description: 设备操作记录
 * @author： jeecg-boot
 * @date：   2019-05-16
 * @version： V1.0
 */
@Service
public class EquipmentLogServiceImpl extends ServiceImpl<EquipmentLogMapper, EquipmentLog> implements IEquipmentLogService {

    @Autowired
    private EquipmentLogMapper equipmentLogMapper;
    @Override
    public IPage<EquipmentLogVo> queryPage(Page<EquipmentLogVo> page, EquipmentLogVo equipmentLogVo) {

        List<EquipmentLogVo> equipmentLogVos = equipmentLogMapper.queryListByParam(page,equipmentLogVo);
        return page.setRecords(equipmentLogVos);
    }

    @Override
    public List<Map<String, Object>> queryContentById(Integer id) {
        EquipmentLogVo equipmentLog=equipmentLogMapper.queryContentById(id);
        String type = equipmentLog.getType();
        Integer equipmentId = equipmentLog.getEquipmentId();
        String username = equipmentLog.getUsername();
        Date addTime = equipmentLog.getAddTime();
        String content1 = (String) equipmentLog.getContent();

        List<Map<String,Object>> listObjectFir = (List<Map<String,Object>>) JSONArray.parse(content1);
        List<Map<String,Object>> objects = new ArrayList<>();
        if (listObjectFir!=null){
            for (Map<String, Object> map : listObjectFir) {
                if (map.size()>0){
                    map.put("equipmentId",equipmentId);
                    String format = DateUtils.date_sdf.format(addTime);
                    map.put("addTime",format);
                    map.put("username",username);
                    map.put("type",type);
                    objects.add(map);
                }

            }
        }
        return objects;
    }
}
