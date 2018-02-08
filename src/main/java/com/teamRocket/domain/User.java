package com.teamRocket.domain;

import java.io.Serializable;

public class User implements Serializable{

    private String userId;

    private String username;

    private String email;

    private String loginName;

    private String password;

    private String phoneNumber;

    public User() {

    }

    public User(String userId, String username) {
        this.userId = userId;
        this.username = username;
    }

    public User(String userId, String username, String email, String loginName, String password) {
        this.userId = userId;
        this.username = username;
        this.email = email;
        this.loginName = loginName;
        this.password = password;
    }

    public User(String userId, String username, String email, String loginName, String password, String phoneNumber) {
        this.userId = userId;
        this.username = username;
        this.email = email;
        this.loginName = loginName;
        this.password = password;
        this.phoneNumber = phoneNumber;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", loginName='" + loginName + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
