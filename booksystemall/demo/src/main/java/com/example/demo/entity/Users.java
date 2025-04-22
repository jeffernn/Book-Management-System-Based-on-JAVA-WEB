package com.example.demo.entity;

public class Users {
    private String user;
    private String username;
    private String password;
    private String email;
    private String registration;

    public Users(String user, String username, String password, String email, String registration) {
        this.user = user;
        this.username = username;
        this.password = password;
        this.email = email;
        this.registration = registration;
    }

    public String getUser() {
        return user;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getRegistration() {
        return registration;
    }
}
