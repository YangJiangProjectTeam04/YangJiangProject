package com.teamRocket.service;

public class TRException extends Exception {

    public TRException() {
    }

    public TRException(String message) {
        super(message);
    }

    public TRException(String message, Throwable cause) {
        super(message, cause);
    }

    public TRException(Throwable cause) {
        super(cause);
    }

}
