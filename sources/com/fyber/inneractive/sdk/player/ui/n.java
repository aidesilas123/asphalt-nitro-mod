package com.fyber.inneractive.sdk.player.ui;

/* JADX INFO: loaded from: classes2.dex */
public class n implements Runnable {
    public final /* synthetic */ l a;

    public n(l lVar) {
        this.a = lVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        l lVar = this.a;
        int i = lVar.D + 200;
        lVar.D = i;
        lVar.w.setProgress(i);
        l lVar2 = this.a;
        if (lVar2.D != lVar2.E) {
            lVar2.postDelayed(lVar2.F, 200L);
            return;
        }
        lVar2.F = null;
        lVar2.D = 0;
        lVar2.E = 0;
    }
}
