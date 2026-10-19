package com.fyber.inneractive.sdk.player.controller;

/* JADX INFO: loaded from: classes2.dex */
public class o implements Runnable {
    public final /* synthetic */ n a;

    public o(n nVar) {
        this.a = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        n nVar = this.a;
        nVar.j = null;
        nVar.u();
    }
}
