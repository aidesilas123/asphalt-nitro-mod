package com.facebook;

/* JADX INFO: compiled from: FacebookCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface FacebookCallback<RESULT> {
    void onCancel();

    void onError(FacebookException facebookException);

    void onSuccess(RESULT result);
}
