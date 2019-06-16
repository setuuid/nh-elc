package org.jeecg.modules.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.system.entity.SysDepart;
import org.jeecg.modules.system.model.SysDepartTreeModel;
import org.jeecg.modules.system.vo.SysDepartVo;

import java.util.List;
import java.util.Map;

/**
 * <p>
 * 部门表 服务实现类
 * <p>
 * 
 * @author：Steve
 * @Since：   2019-01-22
 */
public interface ISysDepartService extends IService<SysDepart>{


    /**
     * 查询所有部门信息,并分节点进行显示
     * @return
     */
    List<SysDepartTreeModel> queryTreeList();

    /**
     * 保存部门数据
     * @param sysDepart
     */
    void saveDepartData(SysDepart sysDepart,String username);

    /**
     * 更新depart数据
     * @param sysDepart
     * @return
     */
    Boolean updateDepartDataById(SysDepart sysDepart,String username);
    
    /**
     * 删除depart数据
     * @param id
     * @return
     */
	/* boolean removeDepartDataById(String id); */
    
    /**
     * 根据关键字搜索相关的部门数据
     * @param keyWord
     * @return
     */
    List<SysDepartTreeModel> searhBy(String keyWord);
    
    /**
     * 根据部门id删除并删除其可能存在的子级部门
     * @param id
     * @return
     */
    boolean delete(String id);

    /**
     * 根据用户id 查询部门id
     * @param userId
     * @return
     */
    String queryCompanyUserId(String userId);

    /**
     * 查询公司 org= 1 的id name
     * @return
     */
    List<Map<String, Object>> queryConmpanyItems();

    /**
     * 根据用户id 查询公司
     * @return
     */
    SysDepartVo queryCompanyByUserId();

    /**
     * 查询企业公司
     * @return
     */
    List<Map<String, Object>> queryBusConmpanyItems();
}
