package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: Stats.java */
/* JADX INFO: loaded from: classes4.dex */
class w {
    final HandlerThread a;
    final d b;
    final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f7776d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f7777e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f7778f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f7779g;
    long h;
    long i;
    long j;
    long k;
    int l;
    int m;
    int n;

    /* JADX INFO: compiled from: Stats.java */
    private static class a extends Handler {
        private final w a;

        /* JADX INFO: renamed from: com.squareup.imagelib.w$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Stats.java */
        class RunnableC0445a implements Runnable {
            final /* synthetic */ Message a;

            RunnableC0445a(Message message) {
                this.a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unhandled stats message." + this.a.what);
            }
        }

        public a(Looper looper, w wVar) {
            super(looper);
            this.a = wVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.a.j();
                return;
            }
            if (i == 1) {
                this.a.k();
                return;
            }
            if (i == 2) {
                this.a.h(message.arg1);
                return;
            }
            if (i == 3) {
                this.a.i(message.arg1);
            } else if (i != 4) {
                Picasso.a.post(new RunnableC0445a(message));
            } else {
                this.a.l((Long) message.obj);
            }
        }
    }

    w(d dVar) {
        this.b = dVar;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.a = handlerThread;
        handlerThread.start();
        a0.j(handlerThread.getLooper());
        this.c = new a(handlerThread.getLooper(), this);
    }

    private static long g(int i, long j) {
        return j / ((long) i);
    }

    private void m(Bitmap bitmap, int i) {
        int iK = a0.k(bitmap);
        Handler handler = this.c;
        handler.sendMessage(handler.obtainMessage(i, iK, 0));
    }

    x a() {
        return new x(this.b.a(), this.b.size(), this.f7776d, this.f7777e, this.f7778f, this.f7779g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, System.currentTimeMillis());
    }

    void b(Bitmap bitmap) {
        m(bitmap, 2);
    }

    void c(Bitmap bitmap) {
        m(bitmap, 3);
    }

    void d() {
        this.c.sendEmptyMessage(0);
    }

    void e() {
        this.c.sendEmptyMessage(1);
    }

    void f(long j) {
        Handler handler = this.c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j)));
    }

    void h(long j) {
        int i = this.m + 1;
        this.m = i;
        long j2 = this.f7779g + j;
        this.f7779g = j2;
        this.j = g(i, j2);
    }

    void i(long j) {
        this.n++;
        long j2 = this.h + j;
        this.h = j2;
        this.k = g(this.m, j2);
    }

    void j() {
        this.f7776d++;
    }

    void k() {
        this.f7777e++;
    }

    void l(Long l) {
        this.l++;
        long jLongValue = this.f7778f + l.longValue();
        this.f7778f = jLongValue;
        this.i = g(this.l, jLongValue);
    }
}
