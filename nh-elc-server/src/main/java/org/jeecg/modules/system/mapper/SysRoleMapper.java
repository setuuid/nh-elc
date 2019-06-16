package org.jeecg.modules.system.mapper;

import org.apache.ibatis.annotations.Param;
import org.jeecg.modules.system.entity.SysRole;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 角色表 Mapper 接口
 * </p>
 *
 * @author scott
 * @since 2018-12-19
 */
public interface SysRoleMapper extends BaseMapper<SysRole> {

    SysRole queryRoleByUserId(@Param("userId") String userId);
    SysRole queryRoleByRoleCode(String roleCode);
}
