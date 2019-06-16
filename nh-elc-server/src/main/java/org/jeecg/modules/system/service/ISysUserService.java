package org.jeecg.modules.system.service;

import java.util.List;

import org.jeecg.common.api.vo.Result;
import org.jeecg.modules.system.entity.SysRole;
import org.jeecg.modules.system.entity.SysUser;
import org.jeecg.modules.system.model.SysUserCacheInfo;

import com.baomidou.mybatisplus.extension.service.IService;
import org.jeecg.modules.system.vo.SysUserDepRoleVo;

/**
 * <p>
 * 用户表 服务类
 * </p>
 *
 * @author scott
 * @since 2018-12-20
 */
public interface ISysUserService extends IService<SysUser> {
	
	public SysUser getUserByName(String username);
	
	/**
	 * 添加用户和用户角色关系
	 * @param user
	 * @param roles
	 */
	public void addUserWithRole(SysUser user,String roles);
	
	
	/**
	 * 修改用户和用户角色关系
	 * @param user
	 * @param roles
	 */
	public void editUserWithRole(SysUser user,String roles);

	public void auditing(SysUser user);

	/**
	 * 获取用户的授权角色
	 * @param username
	 * @return
	 */
	public List<String> getRole(String username);
	
	/**
	  * 查询用户信息包括 部门信息
	 * @param username
	 * @return
	 */
	public SysUserCacheInfo getCacheUser(String username);

	/**
	 * 根据用户id查询juese对象
	 * @param id
	 * @return
	 */
    SysRole queryRoleByUserId(String id);

	/**
	 * 返回 用户
	 * @return
	 */
	SysUserDepRoleVo querySysUserAndDep();

}
