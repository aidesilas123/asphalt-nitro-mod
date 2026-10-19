package com.fyber.inneractive.sdk.network;

/* JADX INFO: loaded from: classes2.dex */
public enum x0 {
    EVENT_TABLE("sdk_event_"),
    ERROR_TABLE("sdk_error_");

    private final String tableName;

    x0(String str) {
        this.tableName = str;
    }

    public String e() {
        return this.tableName;
    }
}
