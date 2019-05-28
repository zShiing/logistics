package cn.deslak.entity;

import lombok.Data;

/**
 * @author zhang_xin on 2019/05/28.
 */
@Data
public class Dicts {

    /**
     * ID
     */
    private String id;
    /**
     * 字典值
     */
    private String value;
    /**
     *字典中文
     */
    private String name;
    /**
     *表名
     */
    private String object;
    /**
     *字段名
     */
    private String field;
    /**
     *扩展名
     */
    private String ext;

}
