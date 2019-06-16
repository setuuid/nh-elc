package org.jeecg.modules.equipment.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.jeecgframework.poi.excel.annotation.Excel;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @Description: 设备
 * @author： jeecg-boot
 * @date：   2019-05-14
 * @version： V1.0
 */
@TableName("equipment")
public class Equipment implements Serializable {
    private static final long serialVersionUID = 1L;
    
	/**注释*/
	@TableId(type = IdType.AUTO)
	private Integer id;
	/**公司名称*/
	@Excel(name = "公司名称", width = 15)
	private String companyId;
	/**设备种类*/
	@Excel(name = "设备种类", width = 15)
	private Integer eTypeId;
	/**设备类别*/
	@Excel(name = "设备类别", width = 15)
	private Integer eCategoryId;
	/**设备名称*/
	@Excel(name = "设备名称", width = 15)
	private String name;
	/**安全等级*/
	@Excel(name = "安全等级", width = 15)
	private String safeLevel;
	/**设备位号*/
	@Excel(name = "设备位号", width = 15)
	private String bitNumber;
	/**所属单元*/
	@Excel(name = "所属单元", width = 15)
	private String unit;
	/**设备型号*/
	@Excel(name = "设备型号", width = 15)
	private String model;
	/**使用状态*/
	@Excel(name = "使用状态", width = 15)
	private String useStatus;
	/**投入使用日期*/
	@Excel(name = "投入使用日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date useTime;
	/**使用寿命(年)*/
	@Excel(name = "使用寿命(年)", width = 15)
	private String year;
	/**报废日期*/
	@Excel(name = "报废日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date destoryTime;
	/**实际淘汰日期*/
	@Excel(name = "实际淘汰日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date realDestoryTime;
	/**计划淘汰日期*/
	@Excel(name = "计划淘汰日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date planDestoryTime;
	/**状态*/
	@Excel(name = "状态", width = 15)
	private String status;
	/**添加日期*/
	@Excel(name = "添加日期", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date addTime;
	/**最后修改时间*/
	@Excel(name = "最后修改时间", width = 15, format = "yyyy-MM-dd")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date lastUpdateTime;
	/**使用人*/
	@Excel(name = "使用人", width = 15)
	private String uid;
	/**出场编号*/
	@Excel(name = "出场编号", width = 15)
	private String factoryNum;
	/**使用证编号*/
	@Excel(name = "使用证编号", width = 15)
	private String useCardNum;
	/**设备备注*/
	@Excel(name = "设备备注", width = 15)
	private String mainNote;
	/**检验机构(特种设备特有)*/
	@Excel(name = "检验机构(特种设备特有)", width = 15)
	private String checkOrganization;
	/**维保单位/联系人(电梯类)*/
	@Excel(name = "维保单位/联系人(电梯类)", width = 15)
	private String maintenanceUnit;
	/**额定起重量（起重机械类设备特有）*/
	@Excel(name = "额定起重量（起重机械类设备特有）", width = 15)
	private String ratedLoad;
	/**二维码连接地址*/
	@Excel(name = "二维码连接地址", width = 15)
	private String qrcodeLinksrc;
	/**二维码图片地址*/
	@Excel(name = "二维码图片地址", width = 15)
	private String qrcodeImgsrc;
	/**创建人*/
	@Excel(name = "创建人", width = 15)
	private String createBy;
	/**创建时间*/
	@Excel(name = "创建时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date createTime;
	/**修改人*/
	@Excel(name = "修改人", width = 15)
	private String updateBy;
	/**修改时间*/
	@Excel(name = "修改时间", width = 20, format = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd HH:mm:ss")
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date updateTime;



	public Date getUseTime() {
		return useTime;
	}

	public void setUseTime(Date useTime) {
		this.useTime = useTime;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public Integer geteTypeId() {
		return eTypeId;
	}

	public void seteTypeId(Integer eTypeId) {
		this.eTypeId = eTypeId;
	}

	public Integer geteCategoryId() {
		return eCategoryId;
	}

	public void seteCategoryId(Integer eCategoryId) {
		this.eCategoryId = eCategoryId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSafeLevel() {
		return safeLevel;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public void setSafeLevel(String safeLevel) {
		this.safeLevel = safeLevel;
	}

	public String getBitNumber() {
		return bitNumber;
	}

	public void setBitNumber(String bitNumber) {
		this.bitNumber = bitNumber;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getUseStatus() {
		return useStatus;
	}

	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public Date getDestoryTime() {
		return destoryTime;
	}

	public void setDestoryTime(Date destoryTime) {
		this.destoryTime = destoryTime;
	}

	public Date getRealDestoryTime() {
		return realDestoryTime;
	}

	public void setRealDestoryTime(Date realDestoryTime) {
		this.realDestoryTime = realDestoryTime;
	}

	public Date getPlanDestoryTime() {
		return planDestoryTime;
	}

	public void setPlanDestoryTime(Date planDestoryTime) {
		this.planDestoryTime = planDestoryTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getFactoryNum() {
		return factoryNum;
	}

	public void setFactoryNum(String factoryNum) {
		this.factoryNum = factoryNum;
	}

	public String getUseCardNum() {
		return useCardNum;
	}

	public void setUseCardNum(String useCardNum) {
		this.useCardNum = useCardNum;
	}

	public String getMainNote() {
		return mainNote;
	}

	public void setMainNote(String mainNote) {
		this.mainNote = mainNote;
	}

	public String getCheckOrganization() {
		return checkOrganization;
	}

	public void setCheckOrganization(String checkOrganization) {
		this.checkOrganization = checkOrganization;
	}

	public String getMaintenanceUnit() {
		return maintenanceUnit;
	}

	public void setMaintenanceUnit(String maintenanceUnit) {
		this.maintenanceUnit = maintenanceUnit;
	}

	public String getRatedLoad() {
		return ratedLoad;
	}

	public void setRatedLoad(String ratedLoad) {
		this.ratedLoad = ratedLoad;
	}

	public String getQrcodeLinksrc() {
		return qrcodeLinksrc;
	}

	public void setQrcodeLinksrc(String qrcodeLinksrc) {
		this.qrcodeLinksrc = qrcodeLinksrc;
	}

	public String getQrcodeImgsrc() {
		return qrcodeImgsrc;
	}

	public void setQrcodeImgsrc(String qrcodeImgsrc) {
		this.qrcodeImgsrc = qrcodeImgsrc;
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
}
