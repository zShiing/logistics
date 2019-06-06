package cn.deslak.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.sql.Timestamp;

/**
 * @author zhang_xin on 2019/06/06.
 */
@Data
public class TaskRefuseEdit {

    /**
     * ID
     */
    private String id;
    /**
     * 任务单编码
     */
    private String code;
    /**
     * 所属计划ID
     */
    private int dailyId;
    private String dailyCode;
    /**
     *水泥厂ID
     */
    private int cementId;
    private String cementName;
    /**
     *标段ID
     */
    private int sectionId;
    private String sectionName;
    /**
     *车辆ID
     */
    private int carId;
    private String car;
    private String motorcadeName;
    /**
     *路线ID
     */
    private int routeId;
    private String routeName;
    /**
     *司机
     */
    private int driver;
    /**
     *运输任务
     */
    private int tasks;
    /**
     *实装
     */
    private BigDecimal realUp;
    /**
     *实卸
     */
    private BigDecimal realDown;
    /**
     *实装凭据
     */
    private String realUpImg;
    /**
     *实卸凭据
     */
    private String realDownImg;
    /**
     *审核
     */
    private int isOk;
    /**
     *状态
     */
    private int state;
    /**
     *权重
     */
    private int weight;
    /**
     *权重2
     */
    private BigDecimal weight2;
    /**
     *一级审核
     */
    private int pass1;
    /**
     *二级审核
     */
    private int pass2;
    /**
     *备注
     */
    private String remark;
    /**
     *完成时间
     */
    private Timestamp finTime;
    /**
     *所属批次
     */
    private int pici;
    /**
     *车牌
     */
    private String license;
    /**
     *日期
     */
    private String riqi;
    /**
     *当天生成批次
     */
    private String batch;
    /**
     *任务单生成日期
     */
    private Timestamp genDate;
    /**
     *货物ID
     */
    private int huowuId;
    /**
     *货物名称
     */
    private String huowuName;
    /**
     *凭证路径
     */
    private String vorcher;
    /**
     *接单时间
     */
    private Timestamp acceptTime;
    /**
     *装货时间
     */
    private Timestamp upTime;
    /**
     *卸货时间
     */
    private Timestamp downTime;
    /**
     *装货提交时间
     */
    private Timestamp upSubmitTime;
    /**
     *卸货提交时间
     */
    private Timestamp downSubmitTime;
    /**
     *是否装货审核
     */
    private int isUp;
    /**
     *是否卸货审核
     */
    private int isDown;
    /**
     *装货审核备注
     */
    private String remarkUp;
    /**
     *卸货审核备注
     */
    private String remarkDown;
    /**
     *是否车辆改派
     */
    private int isChangeCar;
    /**
     *改派前车辆
     */
    private String beforeCar;
    /**
     *装货超时时间
     */
    private Timestamp upOverTime;
    /**
     *运输超时时间
     */
    private Timestamp traverOverTime;
    /**
     *异常信息
     */
    private String errorMsg;
    /**
     *异常文件
     */
    private String errorFile;
    /**
     *是否装货超时
     */
    private Integer isUpOver;
    /**
     *是否运输超时
     */
    private Integer isTraverOver;
    /**
     *消耗燃料(升)
     */
    private BigDecimal fuel;
    /**
     *运输路程(千米)
     */
    private BigDecimal mileage;
    /**
     *驾驶时间(秒)
     */
    private Integer drivingTime;
}
