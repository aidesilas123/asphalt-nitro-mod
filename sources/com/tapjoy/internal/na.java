package com.tapjoy.internal;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public abstract class na {
    public static volatile boolean a;
    public static volatile long b;
    public static volatile long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile long f7947d;

    static {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (na.class) {
            a = false;
            b = jCurrentTimeMillis;
            c = jElapsedRealtime;
            f7947d = b - c;
            a();
            System.currentTimeMillis();
        }
    }

    public static long a() {
        return SystemClock.elapsedRealtime() + f7947d;
    }
}
