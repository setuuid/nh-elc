package org.jeecg.modules.system.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.jeecg.modules.system.entity.SysDepart;
import org.jeecg.modules.system.model.SysDepartTreeModel;
import org.jeecg.modules.system.model.TreeModel;
import org.jeecg.modules.system.vo.SysDepartVo;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * <p>
 * 部门 Mapper 接口
 * <p>
 * 
 * @author： Steve
 * @Since：   2019-01-22
 */
public interface SysDepartMapper extends BaseMapper<SysDepart> {
	
	/**
	 * 根据用户ID查询部门集合
	 */
	public List<SysDepart> queryUserDeparts(@Param("userId") String userId);
	/**
	 * 根据用户ID查询公司
	 */
	public String queryCompanyUserId(@Param(value="userId")  String userId);

	/**
	 * 查询公司  org=1
	 * @return
	 */
    List<SysDepart> findAll();

	/**
	 * 根据用户id 查询公司  org=1
	 * @param userId
	 * @return
	 */
	SysDepartVo queryCompanyByUserId(@Param(value = "userId") String userId);

    SysDepart queryCompanyById(@Param(value = "id")String id);

	/**
	 * 查询企业公司
	 * @return
	 */
	List<SysDepart> queryBusConmpanyItems();

}
