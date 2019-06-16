package org.jeecg.modules.ecategory.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

@TableName("e_category")
public class ECategory implements Serializable {
    private static final long serialVersionUID = 1L;
    /**id*/
    @TableId(type = IdType.AUTO)
    private Integer id;
    /**名称*/
    private String name;
    /**排序*/
    private Integer ord;
    /**状态*/
    private Integer status;
    /**类型*/
    private int type;
    /**统计分组*/
    private Integer eGroup;



    //-------------------------------------------------------------------
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getOrd() {
        return ord;
    }

    public void setOrd(Integer ord) {
        this.ord = ord;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public Integer geteGroup() {
        return eGroup;
    }

    public void seteGroup(Integer eGroup) {
        this.eGroup = eGroup;
    }
}
