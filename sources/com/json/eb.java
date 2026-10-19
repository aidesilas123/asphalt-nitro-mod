package com.json;

import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class eb {
    private com.json.mediationsdk.utils.a a;
    private fb b;
    private Timer c = null;

    class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            eb.this.b.a();
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            eb.this.b.a();
        }
    }

    public eb(com.json.mediationsdk.utils.a aVar, fb fbVar) {
        this.a = aVar;
        this.b = fbVar;
    }

    private void d() {
        Timer timer = this.c;
        if (timer != null) {
            timer.cancel();
            this.c = null;
        }
    }

    public synchronized void a() {
        d();
        Timer timer = new Timer();
        this.c = timer;
        timer.schedule(new b(), this.a.b());
    }

    public void b() {
        synchronized (this) {
            d();
        }
        this.b.a();
    }

    public synchronized void c() {
        d();
        Timer timer = new Timer();
        this.c = timer;
        timer.schedule(new a(), this.a.j());
    }
}
