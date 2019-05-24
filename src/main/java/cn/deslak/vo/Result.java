package cn.deslak.vo;


import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author zhang_xin on 2019/05/24.
 */
@Data
public final class Result<T> implements Serializable {

    private static final long serialVersionUID = -6310372790676714497L;

    private Integer code;

    private List<T> data = new ArrayList();

    private String msg;

    private Long count;

    public static Result createSuccess() {
        Result result = new Result();
        result.setCode(0);
        result.setMsg("操作成功");
        return result;
    }

    public static Result createFailed() {
        Result result = new Result();
        result.setCode(-1);
        result.setMsg("操作失败");
        return result;
    }
}
