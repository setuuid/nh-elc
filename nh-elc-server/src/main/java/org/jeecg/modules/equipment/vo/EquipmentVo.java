package org.jeecg.modules.equipment.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.jeecg.modules.equipmentrecord.entity.EquipmentRecord;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class EquipmentVo {


    /**注释*/
    private Integer id;
    /**公司名称*/
    private String companyId;
    /**设备种类*/
    private Integer eTypeId;
    /**设备类别*/
    private Integer eCategoryId;
    /**设备名称*/
    private String name;
    /**安全等级*/
    private String safeLevel;
    /**设备位号*/
    private String bitNumber;
    /**所属单元*/
    private String unit;
    /**设备型号*/
    private String model;
    /**使用状态*/
    private String useStatus;
    /**投入使用日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date useTime;
    /**使用寿命(年)*/
    private String year;
    /**报废日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date destoryTime;
    /**实际淘汰日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date realDestoryTime;
    /**计划淘汰日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date planDestoryTime;
    /**状态*/
    private String status;
    /**添加日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date addTime;
    /**最后修改时间*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date lastUpdateTime;
    /**使用人*/
    private String uid;
    /**出场编号*/
    private String factoryNum;
    /**使用证编号*/
    private String useCardNum;
    /**设备备注*/
    private String mainNote;
    /**检验机构(特种设备特有)*/
    private String checkOrganization;
    /**维保单位/联系人(电梯类)*/
    private String maintenanceUnit;
    /**额定起重量（起重机械类设备特有）*/
    private String ratedLoad;
    /**二维码连接地址*/
    private String qrcodeLinksrc;
    /**二维码图片地址*/
    private String qrcodeImgsrc;

    /**
     * 公司名称
     */
    private String companyName;

    /**
     * 种类名称
     */
    private String  eTypeName;

    /**
     * 类别名称
     */
    private String eCategoryName;

    /**
     * 用户名
     */
    private  String username;

    /**
     * 使用状态值
     */
    private String useStateText;
    /**
     * ids字符串
     */
    private String ids;
    //---------------------------------------------

    /**
     * 本次 检验 时间
     */
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date checkTime;

    /**
     * 下次检验时间
     */
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date nextCheckTime;
    /**
     * 检验结论
     */
    private String result;
    /**
     * 检验结论值
     */
    private String testResult;
    /**
     * 设备id
     */
    private Integer equipmentId;
    /**
     * 添加类型
     */
    private String addType;
    /**
     * record备注
     */
    private String note;
    /**
     * 设备生命周期id
     */
    private Integer equipmentRecordId;
    //--------------------------------------
    /**
     * string类型的 实际淘汰时间
     */
    private String realDestoryDate;

    /**
     * 使用年限 查询
     */
    private int yearType;

    /**
     * 参数  统计的参数年  （已淘汰和计划淘汰）
     */
    private String useCountYear;

    /**
     * 已淘汰和计划淘汰的
     */
    private int deiOrPlanDeiType;

    private  int eStatus;

    //---------------------------------------------------


    public int getYearType() {
        return yearType;
    }

    public void setYearType(int yearType) {
        this.yearType = yearType;
    }

    public int geteStatus() {
        return eStatus;
    }

    public void seteStatus(int eStatus) {
        this.eStatus = eStatus;
    }

    public String getUseCountYear() {
        return useCountYear;
    }

    public void setUseCountYear(String useCountYear) {
        this.useCountYear = useCountYear;
    }

    public int getDeiOrPlanDeiType() {
        return deiOrPlanDeiType;
    }

    public void setDeiOrPlanDeiType(int deiOrPlanDeiType) {
        this.deiOrPlanDeiType = deiOrPlanDeiType;
    }

    public String getRealDestoryDate() {
        return realDestoryDate;
    }

    public void setRealDestoryDate(String realDestoryDate) {
        this.realDestoryDate = realDestoryDate;
    }

    public Date getCheckTime() {
        return checkTime;
    }

    public void setCheckTime(Date checkTime) {
        this.checkTime = checkTime;
    }

    public Date getNextCheckTime() {
        return nextCheckTime;
    }

    public void setNextCheckTime(Date nextCheckTime) {
        this.nextCheckTime = nextCheckTime;
    }

    public Integer getEquipmentRecordId() {
        return equipmentRecordId;
    }

    public void setEquipmentRecordId(Integer equipmentRecordId) {
        this.equipmentRecordId = equipmentRecordId;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Integer getEquipmentId() {
        return equipmentId;
    }

    public void setEquipmentId(Integer equipmentId) {
        this.equipmentId = equipmentId;
    }

    public String getAddType() {
        return addType;
    }

    public void setAddType(String addType) {
        this.addType = addType;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }


    public String getTestResult() {
        return testResult;
    }

    public void setTestResult(String testResult) {
        this.testResult = testResult;
    }

    public String getUseStateText() {
        return useStateText;
    }

    public void setUseStateText(String useStateText) {
        this.useStateText = useStateText;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String geteTypeName() {
        return eTypeName;
    }

    public void seteTypeName(String eTypeName) {
        this.eTypeName = eTypeName;
    }

    public String geteCategoryName() {
        return eCategoryName;
    }

    public void seteCategoryName(String eCategoryName) {
        this.eCategoryName = eCategoryName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public Date getUseTime() {
        return useTime;
    }

    public void setUseTime(Date useTime) {
        this.useTime = useTime;
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

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
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

    public String getIds(){
        return ids;
    }
    public void setIds(String ids){
        this.ids = ids;
    }
    public Integer getEtatus(){
        return eStatus;
    }
    public void seteStatus(Integer eStatus){
        this.eStatus = eStatus;
    }
}
