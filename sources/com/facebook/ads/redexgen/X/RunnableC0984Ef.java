package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ef, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class RunnableC0984Ef implements Runnable {
    public final /* synthetic */ C0988Ej A00;
    public final /* synthetic */ InterfaceC0991Em A01;

    public RunnableC0984Ef(C0988Ej c0988Ej, InterfaceC0991Em interfaceC0991Em) {
        this.A00 = c0988Ej;
        this.A01 = interfaceC0991Em;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A01.ACe(this.A00.A00, this.A00.A01);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
