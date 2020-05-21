package com.gloxn.bean;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.List;
import java.util.ListResourceBundle;

public class Menv {
    private int id;
    @JsonProperty(value = "text")
    private String name;
    private int pid;

    public Attributes getAttributes() {
        return attributes;
    }

    public void setAttributes(Attributes attributes) {
        this.attributes = attributes;
    }

    private  Attributes attributes;
    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    private String filename;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public List<Menv> getChildren() {
        return children;
    }

    public void setChildren(List<Menv> children) {
        this.children = children;
    }

    private List<Menv> children;
}
