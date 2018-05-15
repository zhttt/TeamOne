package com.jk.bean.yq;
public class Guestbook {

    private Integer gid;

    private String gusername;

    private String gmassage;

    private String gcreateTime;

    private Integer gstatus;

    private String greturnMassage;

    private String greturnTime;

    private String glastUpdTime;

    private String greturnPeople;

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGusername() {
        return gusername;
    }

    public void setGusername(String gusername) {
        this.gusername = gusername;
    }

    public String getGmassage() {
        return gmassage;
    }

    public void setGmassage(String gmassage) {
        this.gmassage = gmassage;
    }

    public String getGcreateTime() {
        return gcreateTime;
    }

    public void setGcreateTime(String gcreateTime) {
        this.gcreateTime = gcreateTime;
    }

    public Integer getGstatus() {
        return gstatus;
    }

    public void setGstatus(Integer gstatus) {
        this.gstatus = gstatus;
    }

    public String getGreturnMassage() {
        return greturnMassage;
    }

    public void setGreturnMassage(String greturnMassage) {
        this.greturnMassage = greturnMassage;
    }

    public String getGreturnTime() {
        return greturnTime;
    }

    public void setGreturnTime(String greturnTime) {
        this.greturnTime = greturnTime;
    }

    public String getGlastUpdTime() {
        return glastUpdTime;
    }

    public void setGlastUpdTime(String glastUpdTime) {
        this.glastUpdTime = glastUpdTime;
    }

    public String getGreturnPeople() {
        return greturnPeople;
    }

    public void setGreturnPeople(String greturnPeople) {
        this.greturnPeople = greturnPeople;
    }

    @Override
    public String toString() {
        return "Guestbook{" +
                "gid=" + gid +
                ", gusername='" + gusername + '\'' +
                ", gmassage='" + gmassage + '\'' +
                ", gcreateTime='" + gcreateTime + '\'' +
                ", gstatus=" + gstatus +
                ", greturnMassage='" + greturnMassage + '\'' +
                ", greturnTime='" + greturnTime + '\'' +
                ", glastUpdTime='" + glastUpdTime + '\'' +
                ", greturnPeople='" + greturnPeople + '\'' +
                '}';
    }
}
