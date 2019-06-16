package org.jeecg.modules.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import jdk.nashorn.internal.ir.ReturnNode;
import lombok.Data;
import lombok.ToString;
import org.jeecg.common.aspect.annotation.Dict;
import org.jeecg.modules.system.model.SysDepartTreeModel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/**
 * <p>
 * 部门表
 * <p>
 *
 * @author Steve
 * @Since  2019-01-22
 */
@Data
@TableName("sys_depart")
public class SysDepart implements Serializable {
    private static final long serialVersionUID = 1L;

    /**ID*/
    @TableId(type = IdType.UUID)
    private String id;
    /**父机构ID*/
    private String parentId;
    /**机构/部门名称*/
    private String departName;
    /**英文名*/
    private String departNameEn;
    /**缩写*/
    private String departNameAbbr;
    /**排序*/
    private Integer departOrder;
    /**描述*/
    private Object description;
    /**机构类型*/
    private String orgType;
    /**机构编码*/
    private String orgCode;
    /**手机号*/
    private String mobile;
    /**传真*/
    private String fax;
    /**地址*/
    private String address;
    /**备注*/
    private String memo;
    /**状态（1启用，0不启用）*/
    @Dict(dicCode = "depart_status")
    private String status;

    /**删除状态（0，正常，1已删除）*/
    @Dict(dicCode = "del_flag")
    private String delFlag;
    /**创建人*/
    private String createBy;
    /**创建日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    /**更新人*/
    private String updateBy;
    /**更新日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date updateTime;
    /**单位性质*/
    private String companyProperty;
    /**法人*/
    private String legalPerson;
    /**邮政编码*/
    private String zipCode;
    /**所属行业*/
    private String industry;
    /**联系人*/
    private String contactPerson;
    /**二位码开关*/
    private String qrcodeSwitch;

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        if (!super.equals(o)) {
            return false;
        }
        SysDepart sysDepart = (SysDepart) o;
        return Objects.equals(id, sysDepart.id) &&
                Objects.equals(parentId, sysDepart.parentId) &&
                Objects.equals(departName, sysDepart.departName) &&
                Objects.equals(departNameEn, sysDepart.departNameEn) &&
                Objects.equals(departNameAbbr, sysDepart.departNameAbbr) &&
                Objects.equals(departOrder, sysDepart.departOrder) &&
                Objects.equals(description, sysDepart.description) &&
                Objects.equals(orgType, sysDepart.orgType) &&
                Objects.equals(orgCode, sysDepart.orgCode) &&
                Objects.equals(mobile, sysDepart.mobile) &&
                Objects.equals(fax, sysDepart.fax) &&
                Objects.equals(address, sysDepart.address) &&
                Objects.equals(memo, sysDepart.memo) &&
                Objects.equals(status, sysDepart.status) &&
                Objects.equals(delFlag, sysDepart.delFlag) &&
                Objects.equals(createBy, sysDepart.createBy) &&
                Objects.equals(createTime, sysDepart.createTime) &&
                Objects.equals(updateBy, sysDepart.updateBy) &&
                Objects.equals(updateTime, sysDepart.updateTime) &&
                Objects.equals(companyProperty, sysDepart.companyProperty) &&
                Objects.equals(legalPerson, sysDepart.legalPerson) &&
                Objects.equals(zipCode, sysDepart.zipCode) &&
                Objects.equals(industry, sysDepart.industry) &&
                Objects.equals(contactPerson, sysDepart.contactPerson) &&
                Objects.equals(qrcodeSwitch, sysDepart.qrcodeSwitch);
    }

    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(),id, parentId, departName, departNameEn, departNameAbbr, departOrder, description, orgType, orgCode, mobile, fax, address, memo, status, delFlag, createBy, createTime, updateBy, updateTime, companyProperty, legalPerson, zipCode, industry, contactPerson, qrcodeSwitch);
    }
}
