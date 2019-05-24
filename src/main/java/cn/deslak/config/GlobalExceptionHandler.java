package cn.deslak.config;

import cn.deslak.vo.Result;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zhang_xin on 2019/05/24.
 */
@ControllerAdvice
public class GlobalExceptionHandler {

    @ResponseBody
    @ExceptionHandler(value = Exception.class)
    public Result defaultExceptionHandler(Exception e) {
        Result result = Result.createFailed();
        result.setMsg(e.getMessage());
        return result;
    }

}
