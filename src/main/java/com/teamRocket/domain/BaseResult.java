package com.teamRocket.domain;

/**
 * 封装结果集
 */
public class BaseResult<T> {
    private int resultCode;
    private String resultMsg;
    private T t;

    public BaseResult() {
    }

    public BaseResult(int resultCode, String resultMsg) {
        this.resultCode = resultCode;
        this.resultMsg = resultMsg;
    }

    public BaseResult(int resultCode, String resultMsg, T t) {
        this.resultCode = resultCode;
        this.resultMsg = resultMsg;
        this.t = t;
    }

    public int getResultCode() {
        return resultCode;
    }

    public void setResultCode(int resultCode) {
        this.resultCode = resultCode;
    }

    public String getResultMsg() {
        return resultMsg;
    }

    public void setResultMsg(String resultMsg) {
        this.resultMsg = resultMsg;
    }

    public T getT() {
        return t;
    }

    public void setT(T t) {
        this.t = t;
    }
}
