package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public interface TJConnectInterface {
    @Deprecated
    void onConnectFailure();

    void onConnectFailure(int i, String str);

    void onConnectSuccess();
}
