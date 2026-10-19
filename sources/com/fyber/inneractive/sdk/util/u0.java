package com.fyber.inneractive.sdk.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class u0 {
    public final TimeUnit a;
    public final long b;
    public Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f2745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2746f;

    public static class a extends Handler {
        public final WeakReference<u0> a;

        public a(u0 u0Var) {
            super(Looper.getMainLooper());
            this.a = new WeakReference<>(u0Var);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            u0 u0Var = this.a.get();
            if (u0Var == null || message.what != 1932593528 || u0Var.f2744d) {
                return;
            }
            u0Var.a(message.getWhen());
        }
    }

    public interface b {
        void a(u0 u0Var);
    }

    public u0(TimeUnit timeUnit, long j) {
        this.f2744d = false;
        this.f2746f = 0L;
        this.b = j;
        this.a = timeUnit;
        IAlog.a("Visible time counter init - time %d", Long.valueOf(j));
    }

    public u0(TimeUnit timeUnit, long j, long j2) {
        this.f2744d = false;
        this.f2746f = 0L;
        this.b = j;
        this.a = timeUnit;
        this.f2746f = j2;
        IAlog.a("Visible time counter init - time %d", Long.valueOf(j));
    }

    public void a() {
        this.f2744d = true;
        Handler handler = this.c;
        if (handler != null) {
            handler.removeMessages(1932593528);
        }
    }

    public final void a(long j) {
        long jUptimeMillis = this.f2746f + (SystemClock.uptimeMillis() - j) + 50;
        this.f2746f = jUptimeMillis;
        if (this.f2745e != null && jUptimeMillis > this.a.toMillis(this.b)) {
            this.f2745e.a(this);
            return;
        }
        Handler handler = this.c;
        if (handler == null || this.f2745e == null) {
            return;
        }
        handler.removeMessages(1932593528);
        this.c.sendEmptyMessageDelayed(1932593528, 50L);
    }

    public void b() {
        this.f2744d = false;
        a(SystemClock.uptimeMillis());
    }

    public void c() {
        a aVar = new a(this);
        this.c = aVar;
        this.f2744d = false;
        aVar.sendEmptyMessage(1932593528);
    }
}
