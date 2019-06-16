package org.jeecg.modules.equipment.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class CompareEquipmentVo {
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
    /**投入使用日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date useTime;
    /**使用寿命(年)*/
    private String year;
    /**计划淘汰日期*/
    @JsonFormat(timezone = "GMT+8",pattern = "yyyy-MM-dd")
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date planDestoryTime;
    /**出场编号*/
    private String factoryNum;
    /**使用证编号*/
    private String useCardNum;
    /**设备备注*/
    private String mainNote;
    /**检验机构(特种设备特有)*/
    private String checkOrganization;
    /**
     * 种类名称
     */
    private String  eTypeName;
    /**
     * 类别名称
     */
    private String eCategoryName;
    /**
     * 使用状态值
     */
    private String useStateText;
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
    private String testResult;

    /**
     * record备注
     */
    private String note;

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

    public Date getPlanDestoryTime() {
        return planDestoryTime;
    }

    public void setPlanDestoryTime(Date planDestoryTime) {
        this.planDestoryTime = planDestoryTime;
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

    public String getUseStateText() {
        return useStateText;
    }

    public void setUseStateText(String useStateText) {
        this.useStateText = useStateText;
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

    public String getTestResult() {
        return testResult;
    }

    public void setTestResult(String testResult) {
        this.testResult = testResult;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

}
