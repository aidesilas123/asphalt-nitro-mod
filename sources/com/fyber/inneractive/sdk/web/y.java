package com.fyber.inneractive.sdk.web;

/* JADX INFO: loaded from: classes2.dex */
public class y implements Runnable {
    public final /* synthetic */ z a;

    public y(z zVar) {
        this.a = zVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.a.evictAll();
        } catch (Throwable unused) {
        }
    }
}
