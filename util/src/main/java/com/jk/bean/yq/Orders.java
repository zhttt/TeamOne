package com.jk.bean.yq;


import org.springframework.format.annotation.DateTimeFormat;




public class Orders {

    private  Integer ordersid;//id

    private Integer orderscode;//订单编号

    private String  orderscreattime;//创建时间

    private Double ordersmoney;//总价格

    private String ordersproduct;//订单的产品

    private Integer orderspronum;//订单中的产品的数量

    private Integer ordersstatus;//状态

    private Integer ordersuser;//订单人id
    //分页

    private Integer page;

    private Integer rows;


    private Integer userid;

    private String ordersupdatadata;//修改时间


    private Integer guestbookid;

    private String gmassage;//留言

    public Integer getOrdersid() {
        return ordersid;
    }

    public void setOrdersid(Integer ordersid) {
        this.ordersid = ordersid;
    }

    public Integer getOrderscode() {
        return orderscode;
    }

    public void setOrderscode(Integer orderscode) {
        this.orderscode = orderscode;
    }


    public Double getOrdersmoney() {
        return ordersmoney;
    }

    public void setOrdersmoney(Double ordersmoney) {
        this.ordersmoney = ordersmoney;
    }

    public String getOrdersproduct() {
        return ordersproduct;
    }

    public void setOrdersproduct(String ordersproduct) {
        this.ordersproduct = ordersproduct;
    }

    public Integer getOrderspronum() {
        return orderspronum;
    }

    public void setOrderspronum(Integer orderspronum) {
        this.orderspronum = orderspronum;
    }

    public Integer getOrdersstatus() {
        return ordersstatus;
    }

    public void setOrdersstatus(Integer ordersstatus) {
        this.ordersstatus = ordersstatus;
    }

    public Integer getOrdersuser() {
        return ordersuser;
    }

    public void setOrdersuser(Integer ordersuser) {
        this.ordersuser = ordersuser;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getOrderscreattime() {
        return orderscreattime;
    }

    public void setOrderscreattime(String orderscreattime) {
        this.orderscreattime = orderscreattime;
    }

    public String getOrdersupdatadata() {
        return ordersupdatadata;
    }

    public void setOrdersupdatadata(String ordersupdatadata) {
        this.ordersupdatadata = ordersupdatadata;
    }

    public Integer getGuestbookid() {
        return guestbookid;
    }

    public void setGuestbookid(Integer guestbookid) {
        this.guestbookid = guestbookid;
    }

    public String getGmassage() {
        return gmassage;
    }

    public void setGmassage(String gmassage) {
        this.gmassage = gmassage;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "ordersid=" + ordersid +
                ", orderscode=" + orderscode +
                ", orderscreattime='" + orderscreattime + '\'' +
                ", ordersmoney=" + ordersmoney +
                ", ordersproduct='" + ordersproduct + '\'' +
                ", orderspronum=" + orderspronum +
                ", ordersstatus=" + ordersstatus +
                ", ordersuser=" + ordersuser +
                ", page=" + page +
                ", rows=" + rows +
                ", userid=" + userid +
                ", ordersupdatadata='" + ordersupdatadata + '\'' +
                ", guestbookid=" + guestbookid +
                ", gmassage='" + gmassage + '\'' +
                '}';
    }
}
