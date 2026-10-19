package com.mbridge.msdk.foundation.same.net;

import android.net.TrafficStats;
import android.os.SystemClock;

/* JADX INFO: compiled from: BandWideUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static long a;
    private static long b;
    private static long c;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.same.net.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BandWideUtil.java */
    private static class C0405a {
        private static a a = new a();
    }

    private a() {
    }

    public static a a() {
        return C0405a.a;
    }

    public final synchronized void b() {
        if (a == 0) {
            a = SystemClock.elapsedRealtime();
            c = TrafficStats.getTotalRxBytes();
        }
    }

    public final synchronized void c() {
        if (a != 0 && c != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - a;
            if (jElapsedRealtime != 0) {
                try {
                    if (TrafficStats.getTotalRxBytes() != -1) {
                        long totalRxBytes = ((TrafficStats.getTotalRxBytes() - c) * 1000) / jElapsedRealtime;
                        if (totalRxBytes == 0) {
                            b = 1L;
                        } else {
                            b = totalRxBytes;
                        }
                    } else {
                        b = 0L;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            d();
        }
    }

    public final synchronized void d() {
        c = 0L;
        a = 0L;
    }

    public final long e() {
        return b;
    }
}
