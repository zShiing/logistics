package cn.deslak.entity;

import lombok.Data;

/**
 * @author zhang_xin on 2019/06/05.
 */
@Data
public class Motorcade {

    /**
     * ID
     */
    private String id;
    /**
     * 车队名称
     */
    private String name;
    /**
     * 队长
     */
    private String captain;
    /**
     * 区域
     */
    private String area;

}
