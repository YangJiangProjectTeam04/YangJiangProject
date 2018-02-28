package com.teamRocket.utils.page;

import java.util.List;

/**
 * Created by bobbi on 18/2/27.
 */
public class MINIBaseResult<T> {
    private int total;
    private List<T> Data;

    @Override
    public String toString() {
        return "MINIBaseResult{" +
                "total=" + total +
                ", Data=" + Data +
                '}';
    }

    public MINIBaseResult() {
    }

    public MINIBaseResult(int total, List<T> data) {

        this.total = total;
        Data = data;
    }

    public int getTotal() {

        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<T> getData() {
        return Data;
    }

    public void setData(List<T> data) {
        Data = data;
    }
}
