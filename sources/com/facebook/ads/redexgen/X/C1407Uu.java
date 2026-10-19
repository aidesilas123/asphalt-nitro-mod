package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1407Uu implements HY {
    public long A00;
    public long A01;
    public C08749f A02 = C08749f.A04;
    public boolean A03;
    public final HL A04;

    public C1407Uu(HL hl) {
        this.A04 = hl;
    }

    public final void A00() {
        if (this.A03) {
            return;
        }
        this.A00 = this.A04.A5O();
        this.A03 = true;
    }

    public final void A01() {
        if (this.A03) {
            A02(A7c());
            this.A03 = false;
        }
    }

    public final void A02(long j) {
        this.A01 = j;
        if (this.A03) {
            this.A00 = this.A04.A5O();
        }
    }

    @Override // com.facebook.ads.redexgen.X.HY
    public final C08749f A7Z() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.HY
    public final long A7c() {
        long j = this.A01;
        if (!this.A03) {
            return j;
        }
        long jA5O = this.A04.A5O() - this.A00;
        return this.A02.A01 == 1.0f ? j + C9E.A00(jA5O) : j + this.A02.A00(jA5O);
    }

    @Override // com.facebook.ads.redexgen.X.HY
    public final C08749f AFP(C08749f c08749f) {
        if (this.A03) {
            A02(A7c());
        }
        this.A02 = c08749f;
        return c08749f;
    }
}
