package cn.deslak.entity;

import lombok.Data;

/**
 * @author zhang_xin on 2019/06/05.
 */
@Data
public class User {

    /**
     * ID
     */
    private String id;
    /**
     *eovaID
     */
    private String eovaId;
    /**
     *登入名称
     */
    private String loginId;
    /**
     *登入密码
     */
    private String loginPwd;
    /**
     *别名
     */
    private String nickname;
    /**
     *角色ID
     */
    private String rid;
    /**
     *身份ID
     */
    private String shenfenId;


}
