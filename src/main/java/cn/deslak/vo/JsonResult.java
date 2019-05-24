package cn.deslak.vo;

import org.apache.commons.lang3.StringUtils;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * @author zhang_xin on 2017/11/13.
 */
public final class JsonResult implements Serializable {

    private static final long serialVersionUID = -6310372790676714497L;
    /**
     * 消息码
     */
    private JsonResultCode jsonCode;
    /**
     * 数据
     */
    private Map<String, Object> data = new HashMap<>();

    /**
     *
     */
    private String msg;

    /**
     *
     */
    private JsonResult(JsonResultCode jsonCode) {
        this.jsonCode = jsonCode;
        this.msg = jsonCode.getMessage();
    }

    /**
     * @return
     */
    public static JsonResult createJsonResult(JsonResultCode jsonCode) {
        return new JsonResult(jsonCode);
    }

    /**
     * @return
     */
    public static JsonResult createSuccess() {
        return new JsonResult(JsonResultCode.SUCCESS);
    }

    /**
     * @return
     */
    public static JsonResult createSuccess(String msg) {
        JsonResult result = new JsonResult(JsonResultCode.SUCCESS);
        result.setMsg(msg);
        return result;
    }


    /**
     * @return
     */
    public static JsonResult createFaild() {
        return new JsonResult(JsonResultCode.FAILD);
    }

    /**
     * @return
     */
    public static JsonResult createFaild(String msg) {
        JsonResult result = new JsonResult(JsonResultCode.FAILD);
        result.setMsg(msg);
        return result;
    }

    /**
     * @param key
     * @param value
     */
    public void putData(String key, Object value) {
        data.put(key, value);
    }

    public int getCode() {
        return jsonCode.getCode();
    }

    /**
     * Gets 数据.
     *
     * @return Value of 数据.
     */
    public Map<String, Object> getData() {
        return data;
    }

    /**
     * Gets 具体消息.
     *
     * @return Value of 具体消息.
     */
    public String getMsg() {
        if (StringUtils.isEmpty(msg)) {
            return jsonCode.getMessage();
        }
        return msg;
    }

    /**
     * Sets new msg.
     *
     * @param msg New value of msg.
     */
    public void setMsg(String msg) {
        this.msg = msg;
    }


    /**
     *
     */
    public void setJSONResultCode(JsonResultCode code) {
        setJSONResultCode(code, code.getMessage());
    }

    /**
     *
     */
    public void setJSONResultCode(JsonResultCode code, String msg) {
        this.jsonCode = code;
        this.msg = msg;
    }

    /**
     * @return
     */
    public boolean isSuccess() {
        return getCode() >= 0;
    }
}
