package com.facebook;

/* JADX INFO: compiled from: LoginStatusCallback.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface LoginStatusCallback {
    void onCompleted(AccessToken accessToken);

    void onError(Exception exc);

    void onFailure();
}
