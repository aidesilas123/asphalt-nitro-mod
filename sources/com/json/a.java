package com.json;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class a extends Thread {
    private static final sb a = new C0330a();
    private static final ud b = new b();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f5089f;
    private sb c = a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ud f5087d = b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Handler f5088e = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f5090g = "";
    private boolean h = false;
    private boolean i = false;
    private volatile int j = 0;
    private int k = 1;
    private int l = 0;
    private final Runnable m = new c();

    /* JADX INFO: renamed from: com.ironsource.a$a, reason: collision with other inner class name */
    class C0330a implements sb {
        C0330a() {
        }

        @Override // com.json.sb
        public void a() {
        }

        @Override // com.json.sb
        public void b() {
            throw new RuntimeException("ANRHandler has given up");
        }
    }

    class b implements ud {
        b() {
        }

        @Override // com.json.ud
        public void a(InterruptedException interruptedException) {
            Log.w("ANRHandler", "Interrupted: " + interruptedException.getMessage());
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.j = (aVar.j + 1) % Integer.MAX_VALUE;
        }
    }

    public a(int i) {
        this.f5089f = i;
    }

    public int a() {
        return this.l;
    }

    public a a(sb sbVar) {
        if (sbVar == null) {
            sbVar = a;
        }
        this.c = sbVar;
        return this;
    }

    public a a(ud udVar) {
        if (udVar == null) {
            udVar = b;
        }
        this.f5087d = udVar;
        return this;
    }

    public a a(String str) {
        if (str == null) {
            str = "";
        }
        this.f5090g = str;
        return this;
    }

    public a a(boolean z) {
        this.i = z;
        return this;
    }

    public void a(int i) {
        this.k = i;
    }

    public int b() {
        return this.k;
    }

    public a b(boolean z) {
        this.h = z;
        return this;
    }

    public a c() {
        this.f5090g = null;
        return this;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        setName("|ANR-ANRHandler|");
        int i = -1;
        while (!isInterrupted() && this.l < this.k) {
            int i2 = this.j;
            this.f5088e.post(this.m);
            try {
                Thread.sleep(this.f5089f);
                if (this.j != i2) {
                    this.l = 0;
                } else if (this.i || !Debug.isDebuggerConnected()) {
                    this.l++;
                    this.c.a();
                    String str = u2.l;
                    if (str != null && !str.trim().isEmpty()) {
                        new j4(u2.l, String.valueOf(System.currentTimeMillis()), "ANR").a();
                    }
                } else {
                    if (this.j != i) {
                        Log.w("ANRHandler", "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))");
                    }
                    i = this.j;
                }
            } catch (InterruptedException e2) {
                this.f5087d.a(e2);
                return;
            }
        }
        if (this.l >= this.k) {
            this.c.b();
        }
    }
}
