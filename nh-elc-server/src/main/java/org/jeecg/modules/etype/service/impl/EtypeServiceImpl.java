package org.jeecg.modules.etype.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.etype.entity.Etype;
import org.jeecg.modules.etype.mapper.EtypeMapper;
import org.jeecg.modules.etype.service.IEtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @Description: 设备种类表
 * @author： jeecg-boot
 * @date：   2019-05-15
 * @version： V1.0
 */
@Service
public class EtypeServiceImpl extends ServiceImpl<EtypeMapper, Etype> implements IEtypeService {

    @Autowired
    private EtypeMapper etypeMapper;

    /**
     * 查询所有
     * @return
     */
    @Override
    public List<Etype> findAll() {
        return etypeMapper.findAll();
    }

    /**
     * 查询种类id  name
     * @return
     */
    @Override
    public List<Map<String, Object>> queryItemsEType() {
        List<Etype> all = etypeMapper.findAll();
        List<Map<String, Object>> mapList= new ArrayList<>();
        for (Etype etype : all) {
            Map<String, Object> map = new HashMap<>();
            Integer id = etype.getId();
            String name = etype.getName();
            map.put("eTypeId",id);
            map.put("eTypeName",name);
            mapList.add(map);
        }
        return mapList;
    }


}
