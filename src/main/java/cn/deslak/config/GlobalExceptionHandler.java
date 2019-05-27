package cn.deslak.config;

import cn.deslak.vo.JsonResult;
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
    public JsonResult defaultExceptionHandler(Exception e) {
        JsonResult result = JsonResult.createFaild();
        result.setMsg(e.getMessage());
        return result;
    }

}
