package com.bytedance.sdk.openadsdk.utils;

import android.os.SystemClock;

/* JADX INFO: compiled from: TimeStamp.java */
/* JADX INFO: loaded from: classes2.dex */
public class ab {
    public long a;
    private long b;

    private ab(boolean z) {
        if (z) {
            d();
        }
    }

    public static ab a() {
        return new ab(true);
    }

    public static ab b() {
        return new ab(false);
    }

    public long a(ab abVar) {
        return Math.abs(abVar.b - this.b);
    }

    public long c() {
        return SystemClock.elapsedRealtime() - this.b;
    }

    public void d() {
        this.a = System.currentTimeMillis();
        this.b = SystemClock.elapsedRealtime();
    }

    public boolean e() {
        return this.b > 0;
    }

    public String toString() {
        return String.valueOf(this.a);
    }
}
