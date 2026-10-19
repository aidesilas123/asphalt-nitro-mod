package com.fyber.inneractive.sdk.player.mediaplayer;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ a b;

    public c(a aVar, int i) {
        this.b = aVar;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        a aVar = this.b;
        int i = this.a;
        String strC = aVar.c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        aVar.seekTo(i);
        String str = strC + "timelog: seekTo took " + (System.currentTimeMillis() - jCurrentTimeMillis) + " msec";
    }
}
