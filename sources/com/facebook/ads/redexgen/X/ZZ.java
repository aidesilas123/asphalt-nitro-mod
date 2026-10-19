package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.res.ColorStateList;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class ZZ implements C2U {
    private C2V A00(C2T c2t) {
        return (C2V) c2t.A6E();
    }

    public final void A01(C2T c2t) {
        if (!c2t.A87()) {
            c2t.AFT(0, 0, 0, 0);
            return;
        }
        float fA7E = A7E(c2t);
        float fA7e = A7e(c2t);
        int iCeil = (int) Math.ceil(C2X.A00(fA7E, fA7e, c2t.A7d()));
        int iCeil2 = (int) Math.ceil(C2X.A01(fA7E, fA7e, c2t.A7d()));
        c2t.AFT(iCeil, iCeil2, iCeil, iCeil2);
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final ColorStateList A61(C2T c2t) {
        return A00(c2t).A05();
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final float A6m(C2T c2t) {
        return c2t.A6F().getElevation();
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final float A7E(C2T c2t) {
        return A00(c2t).A03();
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final float A7J(C2T c2t) {
        return A7e(c2t) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final float A7K(C2T c2t) {
        return A7e(c2t) * 2.0f;
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final float A7e(C2T c2t) {
        return A00(c2t).A04();
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void A8h() {
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void A8i(C2T c2t, Context context, ColorStateList colorStateList, float f2, float f3, float f4) {
        c2t.AFA(new C2V(colorStateList, f2));
        C2S c2sA6F = c2t.A6F();
        c2sA6F.setClipToOutline(true);
        c2sA6F.setElevation(f3);
        AFL(c2t, f4);
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void AAs(C2T c2t) {
        AFL(c2t, A7E(c2t));
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void ACX(C2T c2t) {
        AFL(c2t, A7E(c2t));
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void AF9(C2T c2t, ColorStateList colorStateList) {
        A00(c2t).A08(colorStateList);
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void AFF(C2T c2t, float f2) {
        c2t.A6F().setElevation(f2);
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void AFL(C2T c2t, float f2) {
        A00(c2t).A07(f2, c2t.A87(), c2t.A7d());
        A01(c2t);
    }

    @Override // com.facebook.ads.redexgen.X.C2U
    public final void AFR(C2T c2t, float f2) {
        A00(c2t).A06(f2);
    }
}
