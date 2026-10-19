package com.kidoz.sdk.api.server_connect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class ResultData<T> implements Serializable {
    private static final long serialVersionUID = 1;
    private T mData;
    private ResponseStatus mResponseStatus;

    public T getData() {
        return this.mData;
    }

    public ResponseStatus getResponseStatus() {
        return this.mResponseStatus;
    }

    public void setData(T t) {
        this.mData = t;
    }

    public void setResponseStatus(ResponseStatus responseStatus) {
        this.mResponseStatus = responseStatus;
    }
}
