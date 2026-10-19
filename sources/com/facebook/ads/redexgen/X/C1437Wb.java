package com.facebook.ads.redexgen.X;

import androidx.work.WorkRequest;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1437Wb implements InterfaceC0927Bj {
    public final /* synthetic */ C1436Wa A00;

    public C1437Wb(C1436Wa c1436Wa) {
        this.A00 = c1436Wa;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final long A6k() {
        return this.A00.A0B.A03(this.A00.A07);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final C0926Bi A7l(long j) {
        if (j == 0) {
            return new C0926Bi(new C0928Bk(0L, this.A00.A09));
        }
        long jA04 = this.A00.A0B.A04(j);
        C1436Wa c1436Wa = this.A00;
        return new C0926Bi(new C0928Bk(j, c1436Wa.A00(c1436Wa.A09, jA04, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS)));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0927Bj
    public final boolean A95() {
        return true;
    }
}
