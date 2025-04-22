package com.example.demo.entity;

public class Borrow {
    private String record;
    private String user;
    private String id;
    private String borrow;
    private String returnn;

    public Borrow(String record, String user, String id, String borrow, String returnn) {
        this.record = record;
        this.user = user;
        this.id = id;
        this.borrow = borrow;
        this.returnn = returnn;
    }

    public String getRecord() {
        return record;
    }

    public String getUser() {
        return user;
    }

    public String getId() {
        return id;
    }

    public String getBorrow() {
        return borrow;
    }

    public String getReturnn() {
        return returnn;
    }
}
