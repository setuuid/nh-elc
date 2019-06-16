package org.jeecg.modules.equipment.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import io.lettuce.core.dynamic.annotation.Param;
import org.jeecg.common.system.query.QueryGenerator;
import org.jeecg.modules.equipment.entity.Equipment;
import org.jeecg.modules.equipment.vo.EquipmentVo;

import java.util.List;
import java.util.Map;

/**
 * @Description: 设备
 * @author： jeecg-boot
 * @date：   2019-05-14
 * @version： V1.0
 */
public interface EquipmentMapper extends BaseMapper<Equipment> {
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

    /**
     * 业务根据id查询设备
     * @param id
     * @return
     */
    EquipmentVo queryById(@Param(value = "id") Integer id);


    List<Map<String,Object>> queryCountByCompany();

    List<Map<String,Object>> queryCountBytype( @Param("typeid") String typeid);

    /**
     * 根据设备id逻辑删除
     * @param id
     */
    void editById(@Param(value = "id")Integer id);

    /**
     * 保存sql
     * @param equipment
     * @return
     */
    Integer add(Equipment equipment);

    /**
     * 分 页查询
     * @param pageList
     * @return
     */
    List<EquipmentVo> queryListByParam(Page<EquipmentVo> pageList, EquipmentVo equipmentVo);
    /**
      *@Description TOOD 查询预警设备ID
      *@return
      *@date 2019/5/18 11:16
      *auther 13662
     */
    List<Map> queryFindId();

    /**
     * 更新
     * @param equipment
     */
    void updateEquipment(Equipment equipment);

    /**
     * 查询所有 根据参数
     * @param equipmentVo
     * @return
     */
    List<EquipmentVo> queryAll(EquipmentVo equipmentVo);
    /**
      *@Description TOOD查询超期服役设备ID
      *@return
      *@date 2019/5/19 13:04
      *auther 13662
     */
    List<Integer> queryFindIdByTime();
    /**
      *@Description TOOD 特种设备按类别分类统计
      *@return
      *@date 2019/5/19 16:13
      *auther 13662
     */
    List<Map<String,Object>> queryCensusById(String companyId);
}
