package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0895Ab extends ZC {
    public static String[] A08 = {"bHvO3zM", "7z8VpEP", "iw2Y0c", "LME8njBPiXs011hhslbtp", "9K0lNzbR5X2b0vS5", "Pt0EnZUFnGQLsNks8pQcEgn0FivkNzUh", "t6anbflpJj2CGicCnIMdWTRCydsD", "D9TL9YTSSd0lWzGeUvgWfvwaUF0YdAOx"};
    public float A00;
    public int A01;
    public int A02;
    public C0902Ai A03;
    public int[] A04;
    public final YA A05;
    public final P5 A06;
    public final P6 A07;

    public C0895Ab(YA ya, P6 p6, P5 p5) {
        super(ya);
        this.A02 = 0;
        this.A00 = 50.0f;
        this.A05 = ya;
        this.A07 = p6;
        this.A06 = p5;
        this.A01 = -1;
        this.A03 = new C0902Ai(this, ya);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00f7  */
    @Override // com.facebook.ads.redexgen.X.AbstractC07544c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A1J(com.facebook.ads.redexgen.X.C07614k r17, com.facebook.ads.redexgen.X.C07684r r18, int r19, int r20) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0895Ab.A1J(com.facebook.ads.redexgen.X.4k, com.facebook.ads.redexgen.X.4r, int, int):void");
    }

    @Override // com.facebook.ads.redexgen.X.ZC, com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A1t(int i) {
        A2F(i, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.ZC, com.facebook.ads.redexgen.X.AbstractC07544c
    public final void A21(ED ed, C07684r c07684r, int i) {
        this.A03.A0A(i);
        A1L(this.A03);
    }

    public final void A2K(double d2) {
        if (d2 <= 0.0d) {
            d2 = 1.0d;
        }
        this.A00 = (float) (50.0d / d2);
        this.A03 = new C0902Ai(this, this.A05);
    }

    public final void A2L(int i) {
        this.A01 = i;
    }

    public final void A2M(int i) {
        this.A02 = i;
    }
}
