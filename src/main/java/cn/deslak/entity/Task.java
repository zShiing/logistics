package cn.deslak.entity;

import lombok.Data;

import java.math.BigDecimal;
import java.sql.Timestamp;

@Data
public class Task {

    private String id;

    private String code;

    private int dailyId;

    private int cementId;

    private int sectionId;

    private int carId;

    private int routeId;

    private String driver;

    private int tasks;

    private BigDecimal realUp;

    private BigDecimal realDown;

    private String realUpImg;

    private String realDownImg;

    private int isOk;

    private int state;

    private int weight;

    private BigDecimal weight2;

    private int pass1;

    private int pass2;

    private String remark;

    private Timestamp finTime;

    private int pici;

    private String license;

    private String riqi;

    private String batch;

    private Timestamp genTimestamp;

    private int huowuId;

    private String huowuName;

    private String vorcher;

    private Timestamp acceptTime;

    private Timestamp upTime;

    private Timestamp downTime;

    private Timestamp upSubmitTime;

    private Timestamp downSubmitTime;

    private int isUp;

    private int isDown;

    private String remarkUp;

    private String remarkDown;

    private int isChangeCar;

    private String beforeCar;

    private Timestamp upOverTime;

    private Timestamp traverOverTime;

    private String errorMsg;

    private String errorFile;

    private BigDecimal fuel;

    private BigDecimal mileage;

    private Integer drivingTime;
}
