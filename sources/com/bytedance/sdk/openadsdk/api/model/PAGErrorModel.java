package com.bytedance.sdk.openadsdk.api.model;

/* JADX INFO: loaded from: classes2.dex */
public class PAGErrorModel {
    private final int a;
    private final String b;

    public PAGErrorModel(int i, String str) {
        this.a = i;
        this.b = str;
    }

    public int getErrorCode() {
        return this.a;
    }

    public String getErrorMessage() {
        return this.b;
    }
}
