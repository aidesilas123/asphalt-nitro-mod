package com.mbridge.msdk.foundation.same.report.b;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;

/* JADX INFO: compiled from: AnrMonitor.java */
/* JADX INFO: loaded from: classes4.dex */
public class b extends Thread {
    private static volatile b b;
    private int a;
    private final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile a f7181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.b.a f7182e;

    /* JADX INFO: compiled from: AnrMonitor.java */
    private class a implements Runnable {
        private boolean b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f7183d;

        private a() {
            this.f7183d = SystemClock.uptimeMillis();
        }

        final void a() {
            this.b = false;
            this.c = SystemClock.uptimeMillis();
            b.this.c.postAtFrontOfQueue(this);
        }

        final boolean b() {
            return !this.b || this.f7183d - this.c >= ((long) b.this.a);
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (b.this) {
                Log.d("ANRMonitorActivity", "check task done");
                this.b = true;
                this.f7183d = SystemClock.uptimeMillis();
            }
        }
    }

    private b() {
        super("AnrMonitor-Thread");
        this.a = 5000;
        this.c = new Handler(Looper.getMainLooper());
    }

    public static b a() {
        if (b == null) {
            synchronized (b.class) {
                if (b == null) {
                    b = new b();
                }
            }
        }
        return b;
    }

    public final b a(int i, com.mbridge.msdk.foundation.same.report.b.a aVar) {
        this.a = i;
        this.f7182e = aVar;
        return this;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            if (isInterrupted() || !(this.f7181d == null || this.f7181d.b)) {
                try {
                    Thread.sleep(this.a);
                } catch (Exception unused) {
                }
            } else {
                synchronized (this) {
                    if (this.f7181d == null) {
                        this.f7181d = new a();
                    }
                    this.f7181d.a();
                    long jUptimeMillis = this.a;
                    long jUptimeMillis2 = SystemClock.uptimeMillis();
                    while (jUptimeMillis > 0) {
                        try {
                            wait(jUptimeMillis);
                        } catch (InterruptedException e2) {
                            Log.w("AnrMonitor", e2.toString());
                        }
                        jUptimeMillis = ((long) this.a) - (SystemClock.uptimeMillis() - jUptimeMillis2);
                    }
                    if (!this.f7181d.b()) {
                        com.mbridge.msdk.foundation.same.report.b.a aVar = this.f7182e;
                        if (aVar != null) {
                            aVar.a();
                        }
                    } else if (!Debug.isDebuggerConnected() && !Debug.waitingForDebugger() && this.f7182e != null) {
                        StackTraceElement[] stackTrace = Looper.getMainLooper().getThread().getStackTrace();
                        this.f7182e.a(c.b(stackTrace), stackTrace);
                    }
                }
            }
        }
    }
}
