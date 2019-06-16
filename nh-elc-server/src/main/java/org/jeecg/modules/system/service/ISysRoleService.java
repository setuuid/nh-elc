package org.jeecg.modules.system.service;

import org.jeecg.modules.system.entity.SysRole;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 角色表 服务类
 * </p>
 *
 * @author scott
 * @since 2018-12-19
 */
public interface ISysRoleService extends IService<SysRole> {
    /**
     *@Description TOOD 根据角色编码查找角色
     * @param roleCode
     *@return
     *@date 2019/5/23 15:18
     *auther 13662
     */
    SysRole getRoleByRoleCode(String roleCode);
    /**
      *@Description TOOD 根据用户id获取角色roleCode
      *@param userid
      *@return
      *@date 2019/5/24 10:59
      *auther 13662
     */
    SysRole getRoleCodeByUserId(String userid);

}
