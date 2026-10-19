package com.json;

import com.json.mediationsdk.logger.IronLog;
import com.json.y;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class z {
    private final y a;
    private final a9 b;
    private final w8 c = g();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Timer f6746d;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.this.b.a();
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            z.this.b.a();
        }
    }

    public z(y yVar, a9 a9Var) {
        this.a = yVar;
        this.b = a9Var;
    }

    private void b(long j) {
        this.c.a(j);
    }

    private w8 g() {
        return new w8(new a(), com.json.lifecycle.b.d(), new oc());
    }

    private void h(long j) {
        k();
        Timer timer = new Timer();
        this.f6746d = timer;
        timer.schedule(new b(), j);
    }

    private void j() {
        this.c.b();
    }

    private void k() {
        Timer timer = this.f6746d;
        if (timer != null) {
            timer.cancel();
            this.f6746d = null;
        }
    }

    public void a() {
        if (this.a.a() == y.a.MANUAL_WITH_AUTOMATIC_RELOAD) {
            j();
        }
    }

    public void c() {
        if (this.a.e()) {
            IronLog.INTERNAL.verbose();
            h(this.a.c());
        }
    }

    public void d() {
        if (this.a.a() == y.a.AUTOMATIC_LOAD_AFTER_CLOSE) {
            IronLog.INTERNAL.verbose();
            h(this.a.d());
        }
    }

    public void e() {
        if (this.a.e()) {
            IronLog.INTERNAL.verbose();
            h(0L);
        }
    }

    public void f() {
        if (this.a.a() == y.a.AUTOMATIC_LOAD_WHILE_SHOW) {
            IronLog.INTERNAL.verbose();
            h(this.a.d());
        }
    }

    public void i() {
        if (this.a.a() != y.a.MANUAL_WITH_AUTOMATIC_RELOAD || this.a.b() <= 0) {
            return;
        }
        IronLog.INTERNAL.verbose();
        b(this.a.b());
    }
}
