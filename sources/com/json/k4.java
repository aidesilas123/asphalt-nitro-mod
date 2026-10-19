package com.json;

import com.json.mediationsdk.logger.IronLog;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class k4 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f6182e = -1;
    private Runnable a = new a();
    private int b;
    private i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private x8 f6183d;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            IronLog.INTERNAL.verbose("loaded ads are expired");
            if (k4.this.c != null) {
                k4.this.c.b();
            }
        }
    }

    public k4(int i, i iVar) {
        this.c = iVar;
        this.b = i;
    }

    public void a() {
        if (!b() || this.f6183d == null) {
            return;
        }
        IronLog.INTERNAL.verbose("canceling expiration timer");
        this.f6183d.e();
        this.f6183d = null;
    }

    public void a(long j) {
        if (b()) {
            long millis = TimeUnit.MINUTES.toMillis(this.b) - Math.max(j, 0L);
            if (millis <= 0) {
                IronLog.INTERNAL.verbose("no delay - onAdExpired called");
                this.c.b();
                return;
            }
            a();
            this.f6183d = new x8(millis, this.a, true);
            Calendar calendar = Calendar.getInstance();
            calendar.add(14, (int) millis);
            IronLog.INTERNAL.verbose("loaded ads will expire on: " + calendar.getTime() + " in " + String.format("%.2f", Double.valueOf((millis / 1000.0d) / 60.0d)) + " minutes");
        }
    }

    public boolean b() {
        return this.b > 0;
    }
}
