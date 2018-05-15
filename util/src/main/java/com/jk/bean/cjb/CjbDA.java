package com.jk.bean.cjb;

public class CjbDA {
    private Integer id;
    private String name;
    private String notes;
    private Integer daid;
    private String daname;

    public CjbDA() {
    }

    public CjbDA(Integer id, String name, String notes, Integer daid, String daname) {
        this.id = id;
        this.name = name;
        this.notes = notes;
        this.daid = daid;
        this.daname = daname;
    }

    @Override
    public String toString() {
        return "CjbDA{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", notes='" + notes + '\'' +
                ", daid=" + daid +
                ", daname='" + daname + '\'' +
                '}';
    }

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

    public String getNotes() {
        return notes;
    }

    public void setNotes(String notes) {
        this.notes = notes;
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
}
