package com.jk.bean.cjb;

public class CjbNotice {
    private Integer noticeid;
    private String noticename;
    private String noticedate;
    private String noticebulletin;

    public CjbNotice() {
    }

    public CjbNotice(Integer noticeid, String noticename, String noticedate, String noticebulletin) {
        this.noticeid = noticeid;
        this.noticename = noticename;
        this.noticedate = noticedate;
        this.noticebulletin = noticebulletin;
    }

    @Override
    public String toString() {
        return "CjbNotice{" +
                "noticeid=" + noticeid +
                ", noticename='" + noticename + '\'' +
                ", noticedate='" + noticedate + '\'' +
                ", noticebulletin='" + noticebulletin + '\'' +
                '}';
    }

    public Integer getNoticeid() {
        return noticeid;
    }

    public void setNoticeid(Integer noticeid) {
        this.noticeid = noticeid;
    }

    public String getNoticename() {
        return noticename;
    }

    public void setNoticename(String noticename) {
        this.noticename = noticename;
    }

    public String getNoticedate() {
        return noticedate;
    }

    public void setNoticedate(String noticedate) {
        this.noticedate = noticedate;
    }

    public String getNoticebulletin() {
        return noticebulletin;
    }

    public void setNoticebulletin(String noticebulletin) {
        this.noticebulletin = noticebulletin;
    }
}
