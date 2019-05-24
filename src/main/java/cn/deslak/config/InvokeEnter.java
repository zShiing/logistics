package cn.deslak.config;

import cn.deslak.constant.Constants;
import cn.deslak.constant.ContentType;
import cn.deslak.constant.HttpHeader;
import cn.deslak.constant.HttpSchema;
import cn.deslak.enums.Method;
import cn.deslak.util.MessageDigestUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;

public class InvokeEnter {

    private static final Logger LOG = LoggerFactory.getLogger(InvokeEnter.class);
    //APP KEY
    private final static String ACCESS_ID = "7vhr0b";
    // APP密钥
    private final static String SECRET_KEY = "bImcozhqJFj1crwMIouybjb5QaOgJ9Bx";
    //API域名
    private final static String BaseURL = "openapi.huoyunren.com";

    /**
     * GET方法
     * @param path
     * @param querys
     * @return
     */
    public static String getMethod(String path, Map<String, String> querys) {
        String responseBody = "";
        try {
            //设置headers
            Map<String, String> headers = new HashMap<String, String>();
            headers.put(HttpHeader.HTTP_HEADER_G7_TIMESTAMP, "" + System.currentTimeMillis());
            //建立请求
            Request request = new Request(Method.GET, HttpSchema.HTTP + BaseURL, path, ACCESS_ID, SECRET_KEY, Constants.DEFAULT_TIMEOUT);
            request.setHeaders(headers);
            //设置参数
            request.setQueries(querys);
            //调用服务端
            Response response = Client.execute(request);
            responseBody = response.getBody();
            LOG.info(responseBody);
        } catch (Exception e) {
            LOG.error("请求错误！");
        }
        return responseBody;
    }

    /**
     * POST方法
     * @param path
     * @param jsonString
     * @return
     */
    public static String postMethod(String path, String jsonString) {
        String responseBody = "";
        try {
            //设置headers
            Map<String, String> headers = new HashMap<String, String>();
            headers.put(HttpHeader.HTTP_HEADER_CONTENT_MD5, MessageDigestUtil.base64AndMD5(jsonString));
            headers.put(HttpHeader.HTTP_HEADER_CONTENT_TYPE, ContentType.CONTENT_TYPE_JSON);
            headers.put(HttpHeader.HTTP_HEADER_G7_TIMESTAMP, "" + System.currentTimeMillis());
            //建立请求
            Request request = new Request(Method.POST_JSON, HttpSchema.HTTP + BaseURL, path, ACCESS_ID, SECRET_KEY, Constants.DEFAULT_TIMEOUT);
            request.setHeaders(headers);
            //设置参数
            request.setJsonStrBody(jsonString);
            //调用服务端
            Response response = Client.execute(request);
            responseBody = response.getBody();
            LOG.info(responseBody);
        }catch (Exception e) {
            LOG.error("请求错误！");
        }
        return responseBody;
    }
}
