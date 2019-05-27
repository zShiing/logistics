package cn.deslak.entity;

import lombok.Data;

import java.math.BigDecimal;

/**
 * @author zhang_xin on 2019/05/27.
 */
@Data
public class Section {

    /**
     * ID
     */
    private String id;
    /**
     * 名称
     */
    private String name;
    /**
     * 所属施工方
     */
    private String carryId;
    /**
     * 地理坐标
     */
    private String location;
    /**
     * 所属区域
     */
    private String area;
    /**
     * 库容量
     */
    private BigDecimal capacity;
    /**
     * 库存量
     */
    private BigDecimal stock;
    /**
     * 日消耗量
     */
    private BigDecimal daily;
    /**
     * 库存红线
     */
    private BigDecimal redLine;
    /**
     * 调度主管
     */
    private String contact;
    /**
     * 调度员
     */
    private String control;

}
