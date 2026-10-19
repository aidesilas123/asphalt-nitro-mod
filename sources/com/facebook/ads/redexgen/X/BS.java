package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class BS extends AbstractC1426Vn implements ET {
    public long A00;
    public boolean A01;
    public final int A02;
    public final int A03;
    public final Uri A04;
    public final InterfaceC0923Bd A05;
    public final InterfaceC1032Gb A06;
    public final Object A07;
    public final String A08;

    public BS(Uri uri, InterfaceC1032Gb interfaceC1032Gb, InterfaceC0923Bd interfaceC0923Bd, int i, String str, int i2, Object obj) {
        this.A04 = uri;
        this.A06 = interfaceC1032Gb;
        this.A05 = interfaceC0923Bd;
        this.A03 = i;
        this.A08 = str;
        this.A02 = i2;
        this.A00 = C.TIME_UNSET;
        this.A07 = obj;
    }

    private void A00(long j, boolean z) {
        this.A00 = j;
        this.A01 = z;
        A01(new C1417Ve(this.A00, this.A01, false, this.A07), null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1426Vn
    public final void A02() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1426Vn
    public final void A03(XT xt, boolean z) {
        A00(this.A00, false);
    }

    @Override // com.facebook.ads.redexgen.X.EY
    public final InterfaceC1419Vg A4g(EW ew, GU gu) {
        HI.A03(ew.A02 == 0);
        return new BT(this.A04, this.A06.A4U(), this.A05.A4Y(), this.A03, A00(ew), this, gu, this.A08, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.EY
    public final void AA4() throws IOException {
    }

    @Override // com.facebook.ads.redexgen.X.ET
    public final void ACy(long j, boolean z) {
        if (j == C.TIME_UNSET) {
            j = this.A00;
        }
        if (this.A00 == j && this.A01 == z) {
            return;
        }
        A00(j, z);
    }

    @Override // com.facebook.ads.redexgen.X.EY
    public final void AET(InterfaceC1419Vg interfaceC1419Vg) {
        ((BT) interfaceC1419Vg).A0R();
    }
}
