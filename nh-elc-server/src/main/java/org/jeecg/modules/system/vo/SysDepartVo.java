package org.jeecg.modules.system.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.jeecg.common.aspect.annotation.Dict;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class SysDepartVo {

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

    private String companyPropertyName;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getDepartName() {
        return departName;
    }

    public void setDepartName(String departName) {
        this.departName = departName;
    }

    public String getDepartNameEn() {
        return departNameEn;
    }

    public void setDepartNameEn(String departNameEn) {
        this.departNameEn = departNameEn;
    }

    public String getDepartNameAbbr() {
        return departNameAbbr;
    }

    public void setDepartNameAbbr(String departNameAbbr) {
        this.departNameAbbr = departNameAbbr;
    }

    public Integer getDepartOrder() {
        return departOrder;
    }

    public void setDepartOrder(Integer departOrder) {
        this.departOrder = departOrder;
    }

    public Object getDescription() {
        return description;
    }

    public void setDescription(Object description) {
        this.description = description;
    }

    public String getOrgType() {
        return orgType;
    }

    public void setOrgType(String orgType) {
        this.orgType = orgType;
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getCompanyProperty() {
        return companyProperty;
    }

    public void setCompanyProperty(String companyProperty) {
        this.companyProperty = companyProperty;
    }

    public String getLegalPerson() {
        return legalPerson;
    }

    public void setLegalPerson(String legalPerson) {
        this.legalPerson = legalPerson;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getContactPerson() {
        return contactPerson;
    }

    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    public String getQrcodeSwitch() {
        return qrcodeSwitch;
    }

    public void setQrcodeSwitch(String qrcodeSwitch) {
        this.qrcodeSwitch = qrcodeSwitch;
    }

    public String getCompanyPropertyName() {
        return companyPropertyName;
    }

    public void setCompanyPropertyName(String companyPropertyName) {
        this.companyPropertyName = companyPropertyName;
    }
}
