/**
 * Copyright(c) 2017 Guizhou Yuantai Technology Co., Ltd.
 * All rights reserved.
 * Created on  2017/11/13 16:33
 */
package cn.deslak.vo;

/**
 * @author zhang_xin on 2017/11/13.
 */
public enum JsonResultCode {

    //操作成功
    SUCCESS(0, "操作成功"),
    //用户相关的100-199
    USER_NOT_LOGIN(100, "用户未登录"),
    USER_ADD(101, "用户添加成功"),
    USER_EXISTS(102, "用户已经存在"),
    USER_NOT_EXISTS(103, "用户不存在"),
    USER_NOT_NULL_USERNAME(104, "用户名不能为空"),


    //负数操作失败
    FAILD(-1, "系统错误，请联系管理员"),
    //参数验证失败
    FAILD_VALIDATION_PARAMETER(-2, "参数验证失败或者格式不对"),
    //没有登录
    FAILD_NO_LOGIN(-3, "没有登录"),
    //刷新权限
    FAILD_REFRESH_PERMISSION(-4, "管理员已经修改了权限，刷新获得新权限"),
    //没有权限
    FAILD_NO_PERMISSION(-5, "没有此功能权限，有疑问请联系管理员"),
    //没有操作token
    FAILD_NO_OPERATE_TOKEN(-6, "重复提交或者超时，请刷新再试");

    /**
     * 错误号码
     */
    private int code;


    /**
     * 消息
     */
    private String message;


    /**
     * @param code
     * @param message
     */
    JsonResultCode(int code, String message) {
        this.code = code;
        this.message = message;
    }


    /**
     * Gets 错误号码.
     *
     * @return Value of 错误号码.
     */
    public int getCode() {
        return code;
    }

    /**
     * Gets 消息.
     *
     * @return Value of 消息.
     */
    public String getMessage() {
        return message;
    }
}
