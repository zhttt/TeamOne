package com.jk.bean.gkk;



/**
 * Created by GKB on 2018/5/9.
 */

public class TShop {


    private Integer id;

    private String image;

    private String sname;

    private Double price;

    private Integer kucun;

    private Integer xiaoid;

    private Integer daid;

    private Integer rid;

    private Integer tid;

    private String xiaoname;//==============

    private String daname;//=============

    private String pasttime;

    private Integer pcid;

    private String pcname;//==============

    private Double zhekou=1.0;

    private String zhehouprice;

    private Integer count=1;//-============

    private Double xiaoji;//================

    private String begintime;//=========

    private String endtime;//=========

    private Integer mcount;//===========

    private Double mprice;//===========

    private String namess;//===========


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getKucun() {
        return kucun;
    }

    public void setKucun(Integer kucun) {
        this.kucun = kucun;
    }

    public Integer getXiaoid() {
        return xiaoid;
    }

    public void setXiaoid(Integer xiaoid) {
        this.xiaoid = xiaoid;
    }

    public Integer getDaid() {
        return daid;
    }

    public void setDaid(Integer daid) {
        this.daid = daid;
    }

    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public Integer getTid() {
        return tid;
    }

    public void setTid(Integer tid) {
        this.tid = tid;
    }

    public String getXiaoname() {
        return xiaoname;
    }

    public void setXiaoname(String xiaoname) {
        this.xiaoname = xiaoname;
    }

    public String getDaname() {
        return daname;
    }

    public void setDaname(String daname) {
        this.daname = daname;
    }

    public String getPasttime() {
        return pasttime;
    }

    public void setPasttime(String pasttime) {
        this.pasttime = pasttime;
    }

    public Integer getPcid() {
        return pcid;
    }

    public void setPcid(Integer pcid) {
        this.pcid = pcid;
    }

    public String getPcname() {
        return pcname;
    }

    public void setPcname(String pcname) {
        this.pcname = pcname;
    }

    public Double getZhekou() {
        return zhekou;
    }

    public void setZhekou(Double zhekou) {
        this.zhekou = zhekou;
    }

    public String getZhehouprice() {
        return zhehouprice;
    }

    public void setZhehouprice(String zhehouprice) {
        this.zhehouprice = zhehouprice;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getXiaoji() {
        return xiaoji;
    }

    public void setXiaoji(Double xiaoji) {
        this.xiaoji = xiaoji;
    }

    public String getBegintime() {
        return begintime;
    }

    public void setBegintime(String begintime) {
        this.begintime = begintime;
    }

    public String getEndtime() {
        return endtime;
    }

    public void setEndtime(String endtime) {
        this.endtime = endtime;
    }

    public Integer getMcount() {
        return mcount;
    }

    public void setMcount(Integer mcount) {
        this.mcount = mcount;
    }

    public Double getMprice() {
        return mprice;
    }

    public void setMprice(Double mprice) {
        this.mprice = mprice;
    }

    public String getNamess() {
        return namess;
    }

    public void setNamess(String namess) {
        this.namess = namess;
    }

    @Override
    public String toString() {
        return "SThop{" +
                "id=" + id +
                ", image='" + image + '\'' +
                ", sname='" + sname + '\'' +
                ", price=" + price +
                ", kucun=" + kucun +
                ", xiaoid=" + xiaoid +
                ", daid=" + daid +
                ", rid=" + rid +
                ", tid=" + tid +
                ", xiaoname='" + xiaoname + '\'' +
                ", daname='" + daname + '\'' +
                ", pasttime='" + pasttime + '\'' +
                ", pcid=" + pcid +
                ", pcname='" + pcname + '\'' +
                ", zhekou=" + zhekou +
                ", zhehouprice='" + zhehouprice + '\'' +
                ", count=" + count +
                ", xiaoji=" + xiaoji +
                ", begintime='" + begintime + '\'' +
                ", endtime='" + endtime + '\'' +
                ", mcount=" + mcount +
                ", mprice=" + mprice +
                ", namess='" + namess + '\'' +
                '}';
    }
}
