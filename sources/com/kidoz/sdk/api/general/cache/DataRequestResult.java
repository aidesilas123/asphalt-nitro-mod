package com.kidoz.sdk.api.general.cache;

/* JADX INFO: loaded from: classes4.dex */
public interface DataRequestResult<T> {
    void onError(String str);

    void onResult(T t);
}
