package com.bytedance.sdk.openadsdk.core.model;

/* JADX INFO: compiled from: LoadingInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class p {
    private long a = 10000;
    private long b = 10000;
    private String c = "";

    public long a() {
        return this.a;
    }

    public void a(long j) {
        if (j <= 0) {
            this.a = 10L;
        } else {
            this.a = j;
        }
    }

    public void a(String str) {
        this.c = str;
    }

    public long b() {
        return this.b;
    }

    public void b(long j) {
        if (j < 0) {
            this.b = 20L;
        } else {
            this.b = j;
        }
    }

    public String c() {
        return this.c;
    }
}
