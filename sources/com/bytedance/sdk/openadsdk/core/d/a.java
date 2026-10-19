package com.bytedance.sdk.openadsdk.core.d;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.settings.e;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: compiled from: FrequentCallController.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a a;
    private static volatile boolean b;
    private static volatile long c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f1494e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue<C0133a> f1493d = new LinkedList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f1495f = o.d();

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.d.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FrequentCallController.java */
    private static class C0133a {
        private final long a;
        private final String b;

        private C0133a(long j, String str) {
            this.a = j;
            this.b = str;
        }
    }

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    private synchronized void a(long j) {
        if (this.f1494e == null) {
            this.f1494e = new Handler(Looper.getMainLooper());
        }
        this.f1494e.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.d.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.a(false);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z) {
        b = z;
    }

    private synchronized void b(long j) {
        c = j;
    }

    private synchronized boolean b(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iX = this.f1495f.x();
        long jW = this.f1495f.w();
        if (this.f1493d.size() <= 0 || this.f1493d.size() < iX) {
            this.f1493d.offer(new C0133a(jCurrentTimeMillis, str));
        } else {
            long jAbs = Math.abs(jCurrentTimeMillis - this.f1493d.peek().a);
            if (jAbs <= jW) {
                b(jW - jAbs);
                return true;
            }
            this.f1493d.poll();
            this.f1493d.offer(new C0133a(jCurrentTimeMillis, str));
        }
        return false;
    }

    public synchronized boolean a(String str) {
        if (b(str)) {
            a(true);
            a(c);
        } else {
            a(false);
        }
        return b;
    }

    public synchronized boolean b() {
        return b;
    }

    public synchronized String c() {
        String str;
        HashMap map = new HashMap();
        for (C0133a c0133a : this.f1493d) {
            if (map.containsKey(c0133a.b)) {
                map.put(c0133a.b, Integer.valueOf(((Integer) map.get(c0133a.b)).intValue() + 1));
            } else {
                map.put(c0133a.b, 1);
            }
        }
        int i = Integer.MIN_VALUE;
        str = "";
        for (String str2 : map.keySet()) {
            int iIntValue = ((Integer) map.get(str2)).intValue();
            if (i < iIntValue) {
                str = str2;
                i = iIntValue;
            }
        }
        return str;
    }
}
