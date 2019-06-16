package org.jeecg.modules.equipment.service.impl;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.apache.ibatis.annotations.Param;
import org.apache.shiro.SecurityUtils;
import org.jeecg.modules.equipment.entity.Equipment;
import org.jeecg.modules.equipment.mapper.EquipmentMapper;
import org.jeecg.modules.equipment.service.IEquipmentService;
import org.jeecg.modules.equipment.vo.CompareEquipmentVo;
import org.jeecg.modules.equipment.vo.EquipmentVo;
import org.jeecg.modules.equipmentlog.entity.EquipmentLog;
import org.jeecg.modules.equipmentlog.mapper.EquipmentLogMapper;
import org.jeecg.modules.equipmentrecord.entity.EquipmentRecord;
import org.jeecg.modules.equipmentrecord.mapper.EquipmentRecordMapper;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecg.modules.system.mapper.SysDepartMapper;
import org.jeecg.modules.system.mapper.SysUserMapper;
import org.jeecg.modules.utils.CompareTwoCalssUtil;
import org.jeecg.modules.utils.FinalUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * @Description: 设备
 * @author： jeecg-boot
 * @date：   2019-05-14
 * @version： V1.0
 */
@Service
public class EquipmentServiceImpl extends ServiceImpl<EquipmentMapper, Equipment> implements IEquipmentService {


    @Autowired
    private EquipmentMapper equipmentMapper;

    @Autowired
    private EquipmentRecordMapper equipmentRecordMapper;

    @Autowired
    private SysDepartMapper sysDepartMapper;

    @Autowired
    private EquipmentLogMapper equipmentLogMapper;

    @Autowired
    private SysUserMapper sysUserMapper;
    @Override
    public List<Equipment> EquipmentByPlanTime() {
        List<Equipment> equipmentList = equipmentMapper.EquipmentByPlanTime();
        return equipmentList;
    }

    @Override
    public List<Map<String, Object>> EquipmentByEtype() {
        List<Map<String,Object>> equipmentMap = equipmentMapper.EquipmentByEtype();
        return equipmentMap;
    }

    @Override
    public List<Map<String, Object>> EquipmentByStatus() {
        List<Map<String,Object>> equipmentMap = equipmentMapper.EquipmentByStatus();
        return equipmentMap;
    }

    @Override
    public List<Map<String, Object>> EquipmentBytime() {
        List<Map<String,Object>> equipmentMap = equipmentMapper.EquipmentBytime();
        return equipmentMap;
    }

    @Override
    public List<Map<String, Object>> EquipmentBydestory() {
        List<Map<String,Object>> equipmentMap = equipmentMapper.EquipmentBydestory();
        return equipmentMap;
    }

    @Override
    public List<Map<String, Object>> EquipmentByrecord() {
        List<Map<String,Object>> equipmentMap = equipmentMapper.EquipmentByrecord();
        return equipmentMap;
    }

    /**
     * 业务保存
     * @param equipmentVo
     */
    @Override
    public void add(EquipmentVo equipmentVo) {
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        String userId = sysUser.getId();
        String companyId =sysDepartMapper.queryCompanyUserId(userId);
        Date date = new Date();
        Equipment equipment = new Equipment();
        BeanUtils.copyProperties(equipmentVo, equipment);
        //用户id
        equipment.setUid(userId);
        //添加时间
        equipment.setAddTime(date);
        //部门id
        equipment.setCompanyId(companyId);
        //状态 1
        equipment.setStatus(FinalUtil.STATUS);
        //如果使用状态是3淘汰  那么实际淘汰时间就是当前时间
        if (equipmentVo.getUseStatus().equals(FinalUtil.EQUIPMENT_USE_STATUS_IS_DIE)){
            equipment.setRealDestoryTime(date);
        }
        //保存设备
        equipmentMapper.add(equipment);
        //保存设备生命周期表
        EquipmentRecord equipmentRecord = new EquipmentRecord();
        BeanUtils.copyProperties(equipmentVo, equipmentRecord);
        equipmentRecord.setEquipmentId(equipment.getId());
        equipmentRecord.setStatus(FinalUtil.STATUS);
        equipmentRecord.setUid(userId);
        equipmentRecord.setAddTime(date);
        //添加类型
        equipmentRecord.setAddType(FinalUtil.EQUIPMENT_RECORD_TYPE_ADD);
        equipmentRecordMapper.insert(equipmentRecord);
    }

    /**
     * 设备业务查询（设备+生命周期）根据设备id
     * @param id
     * @return
     */
    @Override
    public EquipmentVo queryById(Integer id) {
        EquipmentVo equipmentvo = equipmentMapper.queryById(id);
        return equipmentvo;
    }

    /**
     * 业务编辑
     * @param equipmentVo
     */
    @Override
    public void edit(EquipmentVo equipmentVo)  {
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        String userId = sysUser.getId();
        String companyId =sysDepartMapper.queryCompanyUserId(userId);
        try {
            //保存日志
            this.saveTypeIsEditLog(equipmentVo,sysUser,companyId);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Equipment equipment = new Equipment();
        BeanUtils.copyProperties(equipmentVo,equipment);
        equipment.setCompanyId(companyId);
        equipment.setLastUpdateTime(new Date());
        if (equipment.getUseStatus().equals(FinalUtil.EQUIPMENT_USE_STATUS_IS_DIE)){
            equipment.setRealDestoryTime(new Date());
        }
        //更新设备
        equipmentMapper.updateById(equipment);
//        equipmentMapper.updateEquipment(equipment);
        EquipmentRecord equipmentRecord = new EquipmentRecord();
        BeanUtils.copyProperties(equipmentVo,equipmentRecord);
        //
        //recordId
        equipmentRecord.setId(equipmentVo.getEquipmentRecordId());
        //record关联设备id
        equipmentRecord.setEquipmentId(equipmentVo.getId());
        //保存时间
        equipmentRecord.setAddTime(new Date());
        //状态
        equipmentRecord.setStatus(FinalUtil.STATUS);
        //结论
        equipmentRecord.setResult(equipmentVo.getResult());
        //更新生命周期
        equipmentRecordMapper.updateById(equipmentRecord);
//        equipmentRecordMapper.updateEquipmentRecord(equipmentRecord);
      
    }

    /**
     * 编辑保存日志 操作记录
     * @param newEquipmentVo
     * @param sysUser
     * @param companyId
     * @throws IllegalAccessException
     * @throws ClassNotFoundException
     */
    private void saveTypeIsEditLog(EquipmentVo newEquipmentVo, SysUser sysUser,String companyId) throws IllegalAccessException, ClassNotFoundException {
        Integer id = newEquipmentVo.getId();
        EquipmentVo OldEquipmentVo = equipmentMapper.queryById(id);
        CompareEquipmentVo newObj = new CompareEquipmentVo();
        CompareEquipmentVo oldObj = new CompareEquipmentVo();
        BeanUtils.copyProperties(newEquipmentVo,newObj);
        BeanUtils.copyProperties(OldEquipmentVo,oldObj);
        //比较两个对象
        /***
         * TODO  日期  待修改
         */
        List<Map<String, Object>> list = CompareTwoCalssUtil.compareTwoClass(oldObj, newObj);
        List<Map<String, Object>> maps = new ArrayList<>();
        for (Map<String, Object> map : list) {
            if (map.size()>0){
                maps.add(map);
            }
        }
        if (maps.size()>0){
            EquipmentLog equipmentLog = new EquipmentLog();
            equipmentLog.setCompanyId(companyId);
            equipmentLog.setEquipmentId(id);
            equipmentLog.setEquipmentRecordId(newEquipmentVo.getEquipmentRecordId());
            equipmentLog.setStatus(FinalUtil.STATUS);
            equipmentLog.setUserId(sysUser.getId());
            equipmentLog.setUsername(sysUser.getUsername());
            equipmentLog.setAddTime(new Date());
            equipmentLog.setContent(JSON.toJSONString(maps));
            equipmentLog.setType(FinalUtil.EQUIPMENT_LOG_TYPE_EDIT);
            equipmentLogMapper.insert(equipmentLog);
        }
    }

    @Override
    public List<Map<String, Object>> queryCountByCompany() {
        List<Map<String,Object>> equipmentList = equipmentMapper.queryCountByCompany();
        return equipmentList;
    }

    @Override
    public List<Map<String, Object>> queryCountBytype(@Param("typeid") String typeid) {
        List<Map<String,Object>> equipmentMap = equipmentMapper.queryCountBytype(typeid);
        return equipmentMap;
    }

    /**
     * 逻辑删除
     * @param id
     */
    @Override
    public void deleteById(Integer id) {
        equipmentMapper.editById(id);
        int i = equipmentRecordMapper.queryCountByEquipmentId(id);
        if (i>0){
            equipmentRecordMapper.editByEquipmentId(id);
        }
        this.saveTypeIsDelLog(id);
    }

    /**
     * 分页查询
     * @param pageList
     * @return
     */
    @Override
    public Page<EquipmentVo> queryPageList(Page<EquipmentVo> pageList, EquipmentVo equipmentVo) {
        List<EquipmentVo> equipmentVos = equipmentMapper.queryListByParam(pageList,equipmentVo);
        return pageList.setRecords(equipmentVos);
    }
    /**
      *@Description TOOD、查询预警设备id
      *@return
      *@date 2019/5/19 13:06
      *auther 13662
     */
    @Override
    public List<Map> queryFindId() {
        List<Map> equipmentList = equipmentMapper.queryFindId();
        return equipmentList;
    }
    /**
      *@Description TOOD查询超期服役设备ID
      *@return
      *@date 2019/5/19 13:07
      *auther 13662
     */
    @Override
    public List<Integer> queryFindIdByTime() {
        List<Integer> equipmentList = equipmentMapper.queryFindIdByTime();
        return equipmentList;
    }
    /**
      *@Description TOOD特种设备按类别分类统计
      *@return
      *@date 2019/5/19 16:18
      *auther 13662
     */
    @Override
    public List<Map<String, Object>> queryCensusById(String companyId) {
        List<Map<String,Object>> equipmentList = equipmentMapper.queryCensusById(companyId);
        return equipmentList;
    }

    /**
     * 查询所有根据参数 不带分页
     * @param equipmentVo
     * @return
     */
    @Override
    public List<EquipmentVo> queryAll(EquipmentVo equipmentVo) {
        return equipmentMapper.queryAll(equipmentVo);
    }

    /**
     * 导入设备信息保存
     * @param equipment
     * @param equipmentRecord
     */
    @Override
    public int exportExcelEquipment(Equipment equipment, EquipmentRecord equipmentRecord) {
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        String userId = sysUser.getId();
        equipment.setUid(userId);
        equipment.setAddTime(new Date());
        equipment.setStatus(FinalUtil.STATUS);
        equipmentMapper.add(equipment);
        Integer id = equipment.getId();
        equipmentRecord.setEquipmentId(id);
        //导入 2
        equipmentRecord.setAddType(FinalUtil.EQUIPMENT_RECORD_TYPE_EXPORT);
        equipmentRecord.setAddTime(new Date());
        equipmentRecord.setStatus(FinalUtil.STATUS);
        equipmentRecord.setUid(userId);
        int insert = equipmentRecordMapper.insert(equipmentRecord);
        return insert;

    }


    /**
     * 删除操作保存日志
     * @param id
     */
    private void saveTypeIsDelLog(Integer id) {
        EquipmentLog equipmentLog = new EquipmentLog();
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> map = new HashMap<>();
        map.put("equipmentId",id);
        list.add(map);

        equipmentLog.setAddTime(new Date());
        equipmentLog.setContent(JSON.toJSONString(list));
        equipmentLog.setUserId(sysUser.getId());
        String companyId =sysDepartMapper.queryCompanyUserId(sysUser.getId());
        equipmentLog.setUsername(sysUser.getUsername());
        equipmentLog.setCompanyId(companyId);
        equipmentLog.setStatus(FinalUtil.STATUS);
        equipmentLog.setType(FinalUtil.EQUIPMENT_LOG_TYPE_DEL);
        equipmentLog.setEquipmentId(id);
        Integer recordId = equipmentRecordMapper.queryRecordIdByEquipId(id);
        equipmentLog.setEquipmentRecordId(recordId);
        equipmentLogMapper.insert(equipmentLog);
    }


}
