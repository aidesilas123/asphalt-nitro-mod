package com.kidoz.sdk.api.server_connect;

/* JADX INFO: loaded from: classes4.dex */
public interface ApiResultCallback<T> {
    void onFailed();

    void onServerResult(ResultData<?> resultData);
}
