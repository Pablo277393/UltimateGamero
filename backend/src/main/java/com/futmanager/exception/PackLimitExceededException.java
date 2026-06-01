package com.futmanager.exception;

public class PackLimitExceededException extends RuntimeException {
    public PackLimitExceededException(String message) {
        super(message);
    }
}
