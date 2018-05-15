package com.jk.bean.gkk;


import org.springframework.data.annotation.Id;

/**
 * Created by GKB on 2018/5/9.
 */

public class TShopxiaolei {


    private Integer id;

    private String name;

    private Integer daid;

    private String daname;

    private String notes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDaid() {
        return daid;
    }

    public void setDaid(Integer daid) {
        this.daid = daid;
    }

    public String getDaname() {
        return daname;
    }

    public void setDaname(String daname) {
        this.daname = daname;
    }

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
    }

    @Override
    public String toString() {
        return "TShopxiaolei{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", daid=" + daid +
                ", daname='" + daname + '\'' +
                ", notes='" + notes + '\'' +
                '}';
    }
}
