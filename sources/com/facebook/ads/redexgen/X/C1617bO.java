package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1617bO {
    public final C1628bZ A00;
    public final C1626bX A01;

    public C1617bO(AbstractC1633be abstractC1633be, C1626bX c1626bX, C1628bZ c1628bZ) {
        this.A00 = c1628bZ;
        this.A01 = c1626bX;
        abstractC1633be.A02(new C1005Fa(c1626bX));
    }

    public static C1617bO A00(AbstractC1633be abstractC1633be, InterfaceC1637bi interfaceC1637bi, InterfaceC1027Fw interfaceC1027Fw) {
        C1628bZ c1628bZ = new C1628bZ();
        return new C1617bO(abstractC1633be, new C1626bX(interfaceC1637bi, new G2(), interfaceC1027Fw, c1628bZ, new Handler(Looper.getMainLooper())), c1628bZ);
    }

    public final void A01(View view) {
        this.A00.A01(view);
    }

    public final void A02(View view, C1635bg c1635bg) {
        this.A00.A02(view, c1635bg);
    }

    public final void A03(InterfaceC1632bd interfaceC1632bd) {
        this.A01.A09(interfaceC1632bd);
    }

    public final void A04(InterfaceC1630bb interfaceC1630bb) {
        this.A01.A0A(interfaceC1630bb);
    }
}
