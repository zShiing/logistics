package cn.deslak.entity;

import lombok.Data;

@Data
public class Truck {

    /**
     * ID
     */
    private String id;
    /**
     * 所属车队
     */
    private String motoId;
    /**
     * 车辆类型
     */
    private String type;
    /**
     * 车牌号
     */
    private String license;
    /**
     * 车牌号
     */
    private String driver;
    /**
     * 驾驶员
     */
    private String state;
    /**
     * 位置
     */
    private String position;

}
