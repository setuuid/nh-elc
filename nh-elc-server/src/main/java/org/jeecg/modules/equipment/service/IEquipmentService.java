package org.jeecg.modules.equipment.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.equipment.entity.Equipment;
import org.jeecg.modules.equipment.vo.EquipmentVo;
import org.jeecg.modules.equipmentrecord.entity.EquipmentRecord;

import java.util.List;
import java.util.Map;

/**
 * @Description: 设备
 * @author： jeecg-boot
 * @date：   2019-05-14
 * @version： V1.0
 */
public interface IEquipmentService extends IService<Equipment> {

    /**查询年度计划淘汰设备*/
    public List<Equipment> EquipmentByPlanTime ();
    /**
     *@Description TOOD    根据设备种类统计
     *@return
     *@date 2019/5/16 13:18
     *auther 13662
     */
    public List<Map<String,Object>> EquipmentByEtype ();
    /**
     *@Description TOOD 根据在役状态统计
     *@return
     *@date 2019/5/16 14:09
     *auther 13662
     */
    public List<Map<String,Object>> EquipmentByStatus();
    /**
     *@Description TOOD 查询统计计划淘汰设备
     *@return
     *@date 2019/5/16 14:27
     *auther 13662
     */
    public List<Map<String,Object>> EquipmentBytime();
    /**
     *@Description TOOD 查询统计超期服役设备
     *@return
     *@date 2019/5/16 14:27
     *auther 13662
     */
    public List<Map<String,Object>> EquipmentBydestory();
    /**
     *@Description TOOD 查询统计预警设备
     *@return
     *@date 2019/5/16 14:27
     *auther 13662
     */
    public List<Map<String,Object>> EquipmentByrecord();

    //保存方法
    void add(EquipmentVo equipmentVo);

    //查询方法
    EquipmentVo queryById(Integer id);

    //编辑
    void edit(EquipmentVo equipmentVo) ;

    List<Map<String,Object>> queryCountByCompany();

    List<Map<String,Object>> queryCountBytype(@Param("typeid")String typeid);

    /**
     * 删除业务逻辑
     * @param id
     */
    void deleteById(Integer id);

    /**
     * 分页查询
     * @param pageList
     * @return
     */
    Page<EquipmentVo> queryPageList(Page<EquipmentVo> pageList, EquipmentVo equipmentVo);


    /**
      *@Description TOOD 查询预警设备ID
      *@return
      *@date 2019/5/18 11:58
      *auther 13662
     */
    List<Map> queryFindId();
    /**
      *@Description TOOD查询超期服役设备id
      *@return
      *@date 2019/5/19 13:05
      *auther 13662
     */
    List<Integer> queryFindIdByTime();
    /**
      *@Description TOOD 特种设备按类别分类统计
      *@return
      *@date 2019/5/19 16:15
      *auther 13662
     */
    List<Map<String,Object>> queryCensusById(String companyId);


    List<EquipmentVo> queryAll(EquipmentVo equipmentVo);

    /**
     * 导出保存
     * @param equipment
     * @param equipmentRecord
     */
    int exportExcelEquipment(Equipment equipment, EquipmentRecord equipmentRecord);
}

