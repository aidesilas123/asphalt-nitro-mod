package com.bytedance.sdk.component.e.a.d.b;

/* JADX INFO: compiled from: PolicyConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private int a;
    private int b;

    a(int i, int i2, long j) {
        if (i2 < i) {
            throw new IllegalStateException("atMostBatchSendCount should meet a condition (atMostBatchSendCount >= maxCacheCount)");
        }
        this.a = i;
        this.b = i2;
    }

    public static a c() {
        return new a(1, 100, 172800000L);
    }

    public static a d() {
        return new a(1, 100, -1L);
    }

    public static a e() {
        return new a(3, 100, 172800000L);
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }
}
