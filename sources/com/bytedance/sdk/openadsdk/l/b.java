package com.bytedance.sdk.openadsdk.l;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: CrashMonitor.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private h b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f1809e;
    private ScheduledExecutorService a = null;
    private long c = 0;

    /* JADX INFO: compiled from: CrashMonitor.java */
    public interface a {
        void a();
    }

    public b(h hVar, int i) {
        this.f1808d = 700;
        this.b = hVar;
        this.f1808d = i;
    }

    public void a() {
        ScheduledExecutorService scheduledExecutorService = this.a;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }

    public void a(int i) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
        this.a = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(new Runnable() { // from class: com.bytedance.sdk.openadsdk.l.b.1
            @Override // java.lang.Runnable
            public void run() {
                g.a("Playable_CrashMonitor", "-- check page stuck  " + (System.currentTimeMillis() - b.this.c));
                if (System.currentTimeMillis() - b.this.c > b.this.f1808d) {
                    b.this.a.shutdown();
                    if (b.this.b != null) {
                        b.this.b.b(0, "Automatic detection of stuck");
                    }
                    if (b.this.f1809e != null) {
                        b.this.f1809e.a();
                    }
                }
            }
        }, 0L, i, TimeUnit.MILLISECONDS);
    }

    public void a(long j) {
        this.c = j;
    }

    public boolean b() {
        ScheduledExecutorService scheduledExecutorService = this.a;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }
}
