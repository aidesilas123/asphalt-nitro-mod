package com.tapjoy;

/* JADX INFO: loaded from: classes4.dex */
public final class p0 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;

    public p0(int i, String str) {
        this.a = i;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = TapjoyConnectCore.f7831d;
        if (nVar != null) {
            nVar.onConnectFailure(this.a, this.b);
            TapjoyConnectCore.f7831d.onConnectFailure();
        }
    }
}
