package org.jeecg.modules.system.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.system.entity.SysRole;
import org.jeecg.modules.system.entity.SysUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 用户表 Mapper 接口
 * </p>
 *
 * @author scott
 * @since 2018-12-20
 */
public interface SysUserMapper extends BaseMapper<SysUser> {
	/**
	  * 通过用户账号查询用户信息
	 * @param username
	 * @return
	 */
	public SysUser getUserByName(@Param("username") String username);
	
	
	/**   
	 * @Title: getRoleByUserId   
	 * @Description: TODO  
	 * @param: @param userId
	 * @param: @return      
	 * @return: List<SysRole>      
	 * @throws   
	 */
	List<SysRole> getRoleByUserId(@Param("userId") String userId);

	/**
	 * 查询对象
	 * @param id
	 * @return
	 */
	SysRole queryRoleByUserId(@Param("userId")String id);

	/**
	 * 更新 user
	 * @param user
	 */
	void updateUser(Result<SysUser> user);
}
