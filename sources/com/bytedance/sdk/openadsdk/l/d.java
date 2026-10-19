package com.bytedance.sdk.openadsdk.l;

import com.json.k2;

/* JADX INFO: compiled from: NetType.java */
/* JADX INFO: loaded from: classes2.dex */
public enum d {
    TYPE_2G("2g"),
    TYPE_3G(k2.a),
    TYPE_4G("4g"),
    TYPE_5G("5g"),
    TYPE_WIFI(k2.b),
    TYPE_MOBILE("mobile"),
    TYPE_UNKNOWN("unknown");

    private String h;

    d(String str) {
        this.h = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.h;
    }
}
