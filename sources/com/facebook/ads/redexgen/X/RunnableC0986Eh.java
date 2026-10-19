package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Eh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class RunnableC0986Eh implements Runnable {
    public final /* synthetic */ C0988Ej A00;
    public final /* synthetic */ C0990El A01;
    public final /* synthetic */ InterfaceC0991Em A02;

    public RunnableC0986Eh(C0988Ej c0988Ej, InterfaceC0991Em interfaceC0991Em, C0990El c0990El) {
        this.A00 = c0988Ej;
        this.A02 = interfaceC0991Em;
        this.A01 = c0990El;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A02.AB8(this.A00.A00, this.A00.A01, this.A01);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
