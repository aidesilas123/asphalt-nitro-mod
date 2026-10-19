package com.unity3d.scar.adapter.common;

/* JADX INFO: compiled from: DispatchGroup.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private int a;
    private Runnable b;

    public a() {
        this.a = 0;
        this.a = 0;
    }

    private void d() {
        Runnable runnable;
        if (this.a > 0 || (runnable = this.b) == null) {
            return;
        }
        runnable.run();
    }

    public synchronized void a() {
        this.a++;
    }

    public synchronized void b() {
        this.a--;
        d();
    }

    public void c(Runnable runnable) {
        this.b = runnable;
        d();
    }
}
