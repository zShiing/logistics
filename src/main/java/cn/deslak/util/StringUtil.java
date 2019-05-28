package cn.deslak.util;

import java.util.ArrayList;
import java.util.List;

/**
 * @author zhang_xin on 2019/05/28.
 */
public class StringUtil {

    /**
     * 去掉字符串里的空格
     * @param str
     * @return
     */
    public static String replaceBlankOnString(String str) {
        return str.replace(" ", "");
    }

    /**
     * 去掉List里所有字符串的空格
     * @param strList
     * @return
     */
    public static List<String> replaceBlankOnStringList(List<String> strList) {
        List<String> newList = new ArrayList();
        strList.forEach(str -> newList.add(replaceBlankOnString(str)));
        return newList;
    }

}
