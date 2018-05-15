package com.jk.bean.cjb;

public class CjbNews {

    private Integer newsid;
    private String newsname;
    private String newstime;
    private String newsneirun;

    public CjbNews() {
    }

    public CjbNews(Integer newsid, String newsname, String newstime, String newsneirun) {
        this.newsid = newsid;
        this.newsname = newsname;
        this.newstime = newstime;
        this.newsneirun = newsneirun;
    }

    @Override
    public String toString() {
        return "CjbNews{" +
                "newsid=" + newsid +
                ", newsname='" + newsname + '\'' +
                ", newstime='" + newstime + '\'' +
                ", newsneirun='" + newsneirun + '\'' +
                '}';
    }

    public Integer getNewsid() {
        return newsid;
    }

    public void setNewsid(Integer newsid) {
        this.newsid = newsid;
    }

    public String getNewsname() {
        return newsname;
    }

    public void setNewsname(String newsname) {
        this.newsname = newsname;
    }

    public String getNewstime() {
        return newstime;
    }

    public void setNewstime(String newstime) {
        this.newstime = newstime;
    }

    public String getNewsneirun() {
        return newsneirun;
    }

    public void setNewsneirun(String newsneirun) {
        this.newsneirun = newsneirun;
    }
}
