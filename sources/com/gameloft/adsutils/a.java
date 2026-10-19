package com.gameloft.adsutils;

/* JADX INFO: compiled from: BlockingRunnable.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements Runnable {
    private Runnable a;
    private boolean b = false;

    a(Runnable runnable) {
        this.a = runnable;
    }

    public void a() {
        while (!this.b) {
            try {
                Thread.sleep(10L);
            } catch (Exception unused) {
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.run();
        this.b = true;
    }
}
