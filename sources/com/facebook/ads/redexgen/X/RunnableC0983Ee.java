package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ee, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class RunnableC0983Ee implements Runnable {
    public final /* synthetic */ C0988Ej A00;
    public final /* synthetic */ C0989Ek A01;
    public final /* synthetic */ C0990El A02;
    public final /* synthetic */ InterfaceC0991Em A03;
    public final /* synthetic */ IOException A04;
    public final /* synthetic */ boolean A05;

    public RunnableC0983Ee(C0988Ej c0988Ej, InterfaceC0991Em interfaceC0991Em, C0989Ek c0989Ek, C0990El c0990El, IOException iOException, boolean z) {
        this.A00 = c0988Ej;
        this.A03 = interfaceC0991Em;
        this.A01 = c0989Ek;
        this.A02 = c0990El;
        this.A04 = iOException;
        this.A05 = z;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A03.ABt(this.A00.A00, this.A00.A01, this.A01, this.A02, this.A04, this.A05);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
