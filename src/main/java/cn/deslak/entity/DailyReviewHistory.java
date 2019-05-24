package cn.deslak.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.sql.Timestamp;

/**
 * @author zhang_xin on 2019/05/24.
 */
@Data
public class DailyReviewHistory {

    /**
     * ID
     */
    private String id;
    /**
     * 任务单编码
     */
    private String code;
    /**
     * 标站ID
     */
    private int sectionId;
    /**
     *标站ID
     */
    private String section;
    /**
     *库容量
     */
    private BigDecimal capacity;
    /**
     *库存量(吨)
     */
    private BigDecimal stock;
    /**
     *库存数据来源
     */
    private int stock_source;
    /**
     *库存容量比
     */
    private BigDecimal bite;
    /**
     *库存红线(吨)
     */
    private int stockLine;
    /**
     *库存实际询问时间
     */
    private Timestamp stockAskTime;
    /**
     *日用量询问方式
     */
    private int dayDosageAsk;
    /**
     *半夜日均用量(吨)
     */
    private BigDecimal halfMonth;
    /**
     *工地上报日用量(吨)
     */
    private BigDecimal dayDosage;
    /**
     *当前在途数量(吨)
     */
    private BigDecimal onRoad;
    /**
     *预计发货量(吨)
     */
    private BigDecimal estimatedShipments;
    /**
     *单趟时长(吨)
     */
    private BigDecimal routeTime;
    /**
     *优先车型
     */
    private int carType;
    /**
     *优先车型(吨)
     */
    private BigDecimal carTypeWeight;
    /**
     *计划任务单数
     */
    private int taskNums;
    /**
     *第一批次任务
     */
    private int firstTask;
    /**
     *一批次剩余
     */
    private int firstOverplus;
    /**
     *第二批次任务
     */
    private int secondTask;
    /**
     *二批次剩余
     */
    private int secondOverplus;
    /**
     *第三批次任务
     */
    private int thirdTask;
    /**
     *备注
     */
    private String remark;
    /**
     *生成时间
     */
    private Timestamp addTime;
    /**
     *审核
     */
    private int isOk;
    /**
     *状态
     */
    private int statue;
    /**
     *计划库存
     */
    private BigDecimal planeStock;
    /**
     *物资公司id
     */
    private int materia;
    /**
     *当天生成批次
     */
    private String batch;
    /**
     *货物ID
     */
    private int huowuId;
    /**
     *货物名称
     */
    private String huowuName;
    /**
     *生成时间
     */
    private Timestamp genDate;

}
