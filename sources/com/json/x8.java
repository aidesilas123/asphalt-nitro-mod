package com.json;

import com.json.lifecycle.b;
import java.util.Calendar;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class x8 implements l8 {
    private Timer b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f6735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Runnable f6736f;
    private String a = "INTERNAL";
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Long f6734d = null;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            x8.this.f6736f.run();
        }
    }

    public x8(long j, Runnable runnable, boolean z) {
        this.f6735e = j;
        this.f6736f = runnable;
        if (z) {
            g();
        }
    }

    private void f() {
        Timer timer = this.b;
        if (timer != null) {
            timer.cancel();
            this.b = null;
        }
    }

    private void h() {
        if (this.b == null) {
            Timer timer = new Timer();
            this.b = timer;
            timer.schedule(new a(), this.f6735e);
            Calendar.getInstance().setTimeInMillis(this.f6734d.longValue());
        }
    }

    @Override // com.json.l8
    public void a() {
    }

    @Override // com.json.l8
    public void b() {
        if (this.b != null) {
            f();
        }
    }

    @Override // com.json.l8
    public void c() {
        Long l;
        if (this.b == null && (l = this.f6734d) != null) {
            long jLongValue = l.longValue() - System.currentTimeMillis();
            this.f6735e = jLongValue;
            if (jLongValue > 0) {
                h();
            } else {
                e();
                this.f6736f.run();
            }
        }
    }

    @Override // com.json.l8
    public void d() {
    }

    public void e() {
        f();
        this.c = false;
        this.f6734d = null;
        b.d().b(this);
    }

    public void g() {
        if (this.c) {
            return;
        }
        this.c = true;
        b.d().a(this);
        this.f6734d = Long.valueOf(System.currentTimeMillis() + this.f6735e);
        if (b.d().e()) {
            return;
        }
        h();
    }
}
