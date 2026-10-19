package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9S, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C9S {
    public int A00;
    public int A01;
    public C08739e A02;
    public boolean A03;

    public C9S() {
    }

    public final void A03(int i) {
        this.A01 += i;
    }

    public final void A04(int i) {
        if (this.A03 && this.A00 != 4) {
            HI.A03(i == 4);
        } else {
            this.A03 = true;
            this.A00 = i;
        }
    }

    public final void A05(C08739e c08739e) {
        this.A02 = c08739e;
        this.A01 = 0;
        this.A03 = false;
    }

    public final boolean A06(C08739e c08739e) {
        return c08739e != this.A02 || this.A01 > 0 || this.A03;
    }
}
