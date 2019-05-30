package cn.deslak.entity;

import lombok.Data;

/**
 * @author zhang_xin on 2019/05/30.
 */
@Data
public class Material {

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
    private String contact;
    /**
     * 所属区域
     */
    private String phone;

}
