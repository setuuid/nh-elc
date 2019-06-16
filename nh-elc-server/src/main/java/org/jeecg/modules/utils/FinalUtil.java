package org.jeecg.modules.utils;

public final class FinalUtil {

    public  static  final  String STATUS = "1";

    /**
     * 设备日志类型 1 添加  2 编辑 3删除
     */
    public  static  final  String EQUIPMENT_LOG_TYPE_EDIT = "1";
    public  static  final  String EQUIPMENT_LOG_TYPE_DEL = "2";

    /**
     * 设备记录表是
     */
    public  static  final  String EQUIPMENT_RECORD_TYPE_ADD = "1";
    public  static  final  String EQUIPMENT_RECORD_TYPE_EXPORT = "2";

    /**
     * 企业用户 CODE
     */
    public  static  final  String ROLE_CODE_ENTERPRISE="enterpriseUser";

    /**
     * 设备使用状态
     */
    public static final String EQUIPMENT_USE_STATUS_IS_DIE = "3";

    /**
     * 字典使用状态code
     */
    public static final String DICT_USE_STATUS = "use_status";
    /**
     * 字典检查结果 code
     */
    public static final String DICT_CHECK_RESULT = "check_result";
    /**
     * 用户审核未通过
     */
    public static final String LOGIN_AUDIT_NO_APPROVE = "1";

    /**
     * 统计 查询传参  已淘汰或者是计划淘汰
     * <p>
     * 已淘汰查询 状态为3 的
     * <p>
     * 计划淘汰是 有计划淘汰时间的
     */
    public static final int DEI = 1;
    public  static final int PLANDEITYPE=2;

    /**
     * 性别 字典code
     */
    public static final String DICT_SEX = "sex";
    public static final String FILE_NAME = "设备导入模板";
}
