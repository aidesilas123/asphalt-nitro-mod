package com.json;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d<T> {
    private Timer a;
    protected long b;
    protected T c;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            d.this.c();
        }
    }

    public d() {
    }

    public d(long j) {
        this.b = j;
    }

    protected void a(T t) {
        if (b() || t == null) {
            return;
        }
        this.c = t;
        f();
        Timer timer = new Timer();
        this.a = timer;
        timer.schedule(new a(), this.b);
    }

    protected boolean b() {
        return this.b <= 0;
    }

    protected abstract void c();

    public void d() {
        this.c = null;
    }

    protected void f() {
        Timer timer = this.a;
        if (timer != null) {
            timer.cancel();
            this.a = null;
        }
    }
}
