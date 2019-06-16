package org.jeecg.modules.utils;

import org.jeecg.common.util.DateUtils;

import java.lang.reflect.Field;
import java.util.*;

public class CompareTwoCalssUtil {


    /**
     * 获取两个对象同名属性内容不相同的列表
     * @param class1 对象1
     * @param class2 对象2
     * @return
     * @throws ClassNotFoundException
     * @throws IllegalAccessException
     */
    public static List<Map<String, Object>> compareTwoClass(Object class1, Object class2) throws ClassNotFoundException, IllegalAccessException {
        List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
        //获取对象的class
        Class<?> clazz1 = class1.getClass();
        Class<?> clazz2 = class2.getClass();
        //获取对象的属性列表
        Field[] field1 = clazz1.getDeclaredFields();
        Field[] field2 = clazz2.getDeclaredFields();
        //遍历属性列表field1
        for (int i = 0; i < field1.length; i++) {
            //遍历属性列表field2
            for (int j = 0; j < field2.length; j++) {
                //如果field1[i]属性名与field2[j]属性名内容相同
                if (field1[i].getName().equals(field2[j].getName())) {
                    field1[i].setAccessible(true);
                    field2[j].setAccessible(true);
                    //如果field1[i]属性值与field2[j]属性值内容不相同
//                    if (!compareTwo(field1[i].get(class1), field2[j].get(class2))) {
//                        Map<String, Object> map2 = new HashMap<String, Object>();
//                        map2.put("name", field1[i].getName());
//                        map2.put("old", field1[i].get(class1));
//                        map2.put("new", field2[j].get(class2));
//                        list.add(map2);
//                    }
                    if (!compareTwo(field1[i].get(class1), field2[j].get(class2))) {
                        Map<String, Object> map2 = new HashMap<String, Object>();

                        //判断是设备的名称吧 key==“设备名称”
                        if (field1[i].getName().equals("name")){
                            map2.put("name", "设备名称");
                        }
                        if (field1[i].getName().equals("safeLevel")){
                            map2.put("name", "安全等级");
                        }
                        if (field1[i].getName().equals("bitNumber")){
                            map2.put("name", "设备位号");
                        }
                        if (field1[i].getName().equals("unit")){
                            map2.put("name", "所属单元");
                        }
                        if (field1[i].getName().equals("model")){
                            map2.put("name", "设备型号");
                        }
                        if (field1[i].getName().equals("year")){
                            map2.put("name", "使用寿命(年)");
                        }
                        if (field1[i].getName().equals("testResult")){
                            map2.put("name", "检验结果");
                        }
                        if (field1[i].getName().equals("note")){
                            map2.put("name", "备注");
                        }
                        if (field1[i].getName().equals("useCardNum")){
                            map2.put("name", "使用证编号");
                        }
                        if (field1[i].getName().equals("mainNote")){
                            map2.put("name", "设备备注");
                        }
                        if (field1[i].getName().equals("checkOrganization")){
                            map2.put("name", "检验机构(特种设备特有)");
                        }
                        if (field1[i].getName().equals("eTypeName")){
                            map2.put("name", "设备种类");
                        }
                        if (field1[i].getName().equals("eCategoryName")){
                            map2.put("name", "设备类别");
                        }
                        if (field1[i].getName().equals("useStateText")){
                            map2.put("name", "使用状态");
                        }
                        if (field1[i].getName().equals("name") ||field1[i].getName().equals("safeLevel")||
                                field1[i].getName().equals("bitNumber")||field1[i].getName().equals("unit")||
                                field1[i].getName().equals("model")||field1[i].getName().equals("year")||
                                field1[i].getName().equals("testResult")||field1[i].getName().equals("note")||
                                field1[i].getName().equals("useCardNum")|| field1[i].getName().equals("mainNote")||
                                field1[i].getName().equals("checkOrganization")|| field1[i].getName().equals("companyName")||
                                field1[i].getName().equals("eTypeName")|| field1[i].getName().equals("eCategoryName")||
                                field1[i].getName().equals("useStateText")
                        ){
                            map2.put("old", field1[i].get(class1)==null? "":field1[i].get(class1));
                            map2.put("new", field2[j].get(class2)==null? "":field2[j].get(class2));
                        }
//---------------------------------------------------------日期格式的-------------------------------------

                        if (field1[i].getName().equals("planDestoryTime")){
                            Date idate = (Date) field1[i].get(class1);
                            String formatDate = DateUtils.date_sdf.format(idate);
                            Date jdate = (Date) field2[j].get(class2);
                            String formatDate1 = DateUtils.date_sdf.format(jdate);
                            if (!formatDate.equals(formatDate1)){
                                map2.put("old", field1[i].get(class1)==null? "":DateUtils.date_sdf.format(idate));
                                map2.put("new", field2[j].get(class2)==null? "":DateUtils.date_sdf.format(jdate));
                                map2.put("name", "计划淘汰日期");
                            }
                        }
                        if (field1[i].getName().equals("useTime")){
                            Date idate = (Date) field1[i].get(class1);
                            String formatDate = DateUtils.date_sdf.format(idate);
                            Date jdate = (Date) field2[j].get(class2);
                            String formatDate1 = DateUtils.date_sdf.format(jdate);
                            if (!formatDate.equals(formatDate1)){
                                map2.put("old", field1[i].get(class1)==null? "":DateUtils.date_sdf.format(idate));
                                map2.put("new", field2[j].get(class2)==null? "":DateUtils.date_sdf.format(jdate));
                                map2.put("name", "投入使用日期");
                            }
                        }
                        list.add(map2);
                    }
                    break;
                }
            }
        }

        return list;
    }

    //对比两个数据是否内容相同
    public static boolean compareTwo(Object object1, Object object2) {

        if (object1 == null && object2 == null) {
            return true;
        }
        //以下注掉代码，看具体需求。因有时会出现源数据是没有进行赋值，因此是null；而通过EditText获取值的时候，虽然没有值，但是会变成""，但是本质是没有赋值的。
        //if (object1 == "" && object2 == null) {
        //    return true;
        //}
        //if (object1 == null && object2 == "") {
        //    return true;
        // }
        if (object1 == null && object2 != null) {
            return false;
        }
        if (object1.equals(object2)) {
            return true;
        }
        return false;
    }
}
