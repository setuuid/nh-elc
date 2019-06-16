package org.jeecg.modules.system.service;

import java.util.List;
import java.util.Map;

import org.jeecg.modules.system.entity.SysRole;
import org.jeecg.modules.system.entity.SysUserRole;

import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 用户角色表 服务类
 * </p>
 *
 * @author scott
 * @since 2018-12-21
 */
public interface ISysUserRoleService extends IService<SysUserRole> {
	
	/**
	 * 查询所有的用户角色信息
	 * @return
	 */
	Map<String,String> queryUserRole();
	/**
	 * 根据用户id获取用户的角色信息
	 * @Title: getRoleByUserId   
	 * @Description: TODO  
	 * @param: @param userId
	 * @param: @return      
	 * @return: List<SysRole>      
	 * @throws
	 */
	List<SysRole> getRoleByUserId(String userId);
}
