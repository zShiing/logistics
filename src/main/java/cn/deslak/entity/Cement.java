package cn.deslak.entity;

import lombok.Data;

/**
 * @author zhang_xin on 2019/05/27.
 */
@Data
public class Cement {

    /**
     * ID
     */
    private String id;
    /**
     * 名称
     */
    private String name;
    /**
     * 具体位置
     */
    private String position;
    /**
     * 地理坐标
     */
    private String location;
    /**
     * 所属区域
     */
    private String area;
    /**
     * 联系人
     */
    private String contact;
    /**
     * 联系电话
     */
    private String tel;
    /**
     * 接单范围
     */
    private String radio;

}
