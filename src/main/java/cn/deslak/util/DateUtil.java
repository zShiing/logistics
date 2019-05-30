package cn.deslak.util;

import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class DateUtil {

    /**
     * 日期转换
     * @param date
     * @return
     */
    public static String dateTransfer(Date date) {
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        Instant instant = date.toInstant();
        ZoneId zoneId = ZoneId.systemDefault();
        return LocalDateTime.ofInstant(instant, zoneId).format(formatter);
    }

    /**
     * 分割layui日期范围的字符串
     * @param dateRange
     * @return
     */
    public static String[] splitOnLayuiDateRangeString(String dateRange) {
        if(dateRange == null) {
            return null;
        }
        return dateRange.split(" - ");
    }

}
