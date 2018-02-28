package com.teamRocket.domain;

import java.io.Serializable;

/**
 * Created by dllo on 18/2/27.
 */
public class Department implements Serializable {
    private String depId;
    private String depName;

    public Department() {
    }

    public Department(String depId, String depName) {
        this.depId = depId;
        this.depName = depName;
    }

    public String getDepId() {
        return depId;
    }

    public void setDepId(String depId) {
        this.depId = depId;
    }

    public String getDepName() {
        return depName;
    }

    public void setDepName(String depName) {
        this.depName = depName;
    }

    @Override
    public String toString() {
        return "Department{" +
                "depId=" + depId +
                ", depName='" + depName + '\'' +
                '}';
    }
}
