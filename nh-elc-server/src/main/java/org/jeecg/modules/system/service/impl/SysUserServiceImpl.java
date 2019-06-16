package org.jeecg.modules.system.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.shiro.SecurityUtils;
import org.jeecg.common.api.vo.Result;
import org.jeecg.common.util.PasswordUtil;
import org.jeecg.common.util.oConvertUtils;
import org.jeecg.modules.system.entity.*;
import org.jeecg.modules.system.mapper.*;
import org.jeecg.modules.system.model.SysUserCacheInfo;
import org.jeecg.modules.system.service.ISysUserService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.jeecg.modules.system.vo.SysUserDepRoleVo;
import org.jeecg.modules.utils.FinalUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 用户表 服务实现类
 * </p>
 *
 * @author scott
 * @since 2018-12-20
 */
@Service
public class SysUserServiceImpl extends ServiceImpl<SysUserMapper, SysUser> implements ISysUserService {
	
	@Autowired
	private SysUserMapper userMapper;
	
	@Autowired
	private SysUserRoleMapper sysUserRoleMapper;
	
	@Autowired
	private SysDepartMapper sysDepartMapper;
    @Autowired
    private SysDictMapper sysDictMapper;
    @Autowired
    private SysRoleMapper sysRoleMapper;
	@Override
	public SysUser getUserByName(String username) {
		return userMapper.getUserByName(username);
	}
	
	
	@Override
	public void addUserWithRole(SysUser user, String roles) {
		this.save(user);
		if(oConvertUtils.isNotEmpty(roles)) {
			String[] arr = roles.split(",");
			for (String roleId : arr) {
				SysUserRole userRole = new SysUserRole(user.getId(), roleId);
				sysUserRoleMapper.insert(userRole);
			}
		}
	}

	@Override
	public void editUserWithRole(SysUser user, String roles) {
		this.updateById(user);
		//先删后加
		sysUserRoleMapper.delete(new QueryWrapper<SysUserRole>().lambda().eq(SysUserRole::getUserId, user.getId()));
		if(oConvertUtils.isNotEmpty(roles)) {
			String[] arr = roles.split(",");
			for (String roleId : arr) {
				SysUserRole userRole = new SysUserRole(user.getId(), roleId);
				sysUserRoleMapper.insert(userRole);
			}
		}
	}

	@Override
	public void auditing(SysUser user) {
		this.updateById(user);
	}


	@Override
	public List<String> getRole(String username) {
		return sysUserRoleMapper.getRoleByUserName(username);
	}


	@Override
	public SysUserCacheInfo getCacheUser(String username) {
		SysUserCacheInfo info = new SysUserCacheInfo();
		info.setOneDepart(true);
		SysUser user = userMapper.getUserByName(username);
		info.setSysUserCode(user.getUsername());
		info.setSysUserName(user.getRealname());
		
		List<SysDepart> list = sysDepartMapper.queryUserDeparts(user.getId());
		List<String> sysOrgCode = new ArrayList<String>();
		if(list==null || list.size()==0) {
			//当前用户无部门
			sysOrgCode.add("0");
		}else if(list.size()==1) {
			sysOrgCode.add(list.get(0).getOrgCode());
		}else {
			info.setOneDepart(false);
			for (SysDepart dpt : list) {
				sysOrgCode.add(dpt.getOrgCode());
			}
		}
		info.setSysOrgCode(sysOrgCode);
		// TODO companycode 没有处理
		return info;
	}

	@Override
	public SysRole queryRoleByUserId(String userId) {
		return userMapper.queryRoleByUserId(userId);
	}

	@Override
	public SysUserDepRoleVo querySysUserAndDep() {
        SysUserDepRoleVo sysUserDepRoleVo = new SysUserDepRoleVo();
        SysUser sysUser = (SysUser) SecurityUtils.getSubject().getPrincipal();
//        String password = sysUser.getPassword();
//        String encrypt = PasswordUtil.decrypt(sysUser.getUsername(), password, sysUser.getSalt());
//        System.out.println(encrypt);
        BeanUtils.copyProperties(sysUser,sysUserDepRoleVo);
        int sex = sysUser.getSex();
        String s = String.valueOf(sex) ;
        String s1 = sysDictMapper.queryDictTextByKey(FinalUtil.DICT_SEX, s);
        sysUserDepRoleVo.setSexName(s1);
        String userId = sysUser.getId();
        SysRole sysRole=sysRoleMapper.queryRoleByUserId(userId);
        sysUserDepRoleVo.setRoleId(sysRole.getId());
        sysUserDepRoleVo.setRoleName(sysRole.getRoleName());
		return sysUserDepRoleVo;
	}


}
