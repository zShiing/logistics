package cn.deslak.util;

import java.util.Date;

public class BusinessUtil {

    /**
     * 检查参数合法
     * @param license
     * @param acceptTime
     * @param downTime
     * @return
     */
    public static Boolean varValidation(String license, Date acceptTime, Date downTime) {
        if(license == null || "".equals(license.trim())) {
            return false;
        }
        if(acceptTime == null) {
            return false;
        }
        if(downTime == null) {
            return false;
        }
        return true;
    }

}
