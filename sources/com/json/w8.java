package com.json;

import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class w8 {
    private static final String a = "w8";
    private final com.json.lifecycle.b b;
    private final Runnable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final oc f6716d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Timer f6718f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f6717e = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final l8 f6719g = new a();

    class a implements l8 {
        a() {
        }

        @Override // com.json.l8
        public void a() {
        }

        @Override // com.json.l8
        public void b() {
            w8.this.f6716d.c(System.currentTimeMillis());
            w8.this.f();
        }

        @Override // com.json.l8
        public void c() {
            w8.this.f6716d.b(System.currentTimeMillis());
            w8 w8Var = w8.this;
            w8Var.c(w8Var.f6716d.a());
        }

        @Override // com.json.l8
        public void d() {
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            w8.this.b.b(w8.this.f6719g);
            w8.this.f6716d.b();
            w8.this.c.run();
        }
    }

    public w8(Runnable runnable, com.json.lifecycle.b bVar, oc ocVar) {
        this.c = runnable;
        this.b = bVar;
        this.f6716d = ocVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(long j) {
        synchronized (this.f6717e) {
            f();
            Timer timer = new Timer();
            this.f6718f = timer;
            timer.schedule(new b(), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        synchronized (this.f6717e) {
            Timer timer = this.f6718f;
            if (timer != null) {
                timer.cancel();
                this.f6718f = null;
            }
        }
    }

    public void a() {
        a(0L);
    }

    public void a(long j) {
        if (j < 0) {
            Log.d(a, "cannot start timer with delay < 0");
            return;
        }
        this.b.a(this.f6719g);
        this.f6716d.a(j);
        if (this.b.e()) {
            this.f6716d.c(System.currentTimeMillis());
        } else {
            c(j);
        }
    }

    public void b() {
        f();
        this.b.b(this.f6719g);
        this.f6716d.b();
    }
}
