package com.example.demo.entity;

public class Relation {
    private String relation;
    private String user;
    private String id;

    public Relation(String relation, String user, String id) {
        this.relation = relation;
        this.user = user;
        this.id = id;
    }

    public String getRelation() {
        return relation;
    }

    public String getUser() {
        return user;
    }

    public String getId() {
        return id;
    }
}
