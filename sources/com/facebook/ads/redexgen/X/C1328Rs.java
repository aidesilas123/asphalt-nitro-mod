package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1328Rs implements ON {
    public static String[] A02 = {"z07VqEjGvJ", "HVUavbLQzawZdZVBJZvs2mdfMmVurwko", "OXCJr9QWCT6iNhGP7b2SKXpA8jzUGtxO", "XfWPaMhvYm", "d0mI5Otk4DkPTVLBqA06pYB2qhxVYO4x", "4lS6eLthtLYEvbxsvILcFz16jeQVP", "9TNy9PrFUeRgfy9Rk5pKZK4U", "r8zM3TRfMT7OJmVxj71ND5jlCBdKG"};
    public final /* synthetic */ PC A00;
    public final /* synthetic */ C1327Rr A01;

    public C1328Rs(C1327Rr c1327Rr, PC pc) {
        this.A01 = c1327Rr;
        this.A00 = pc;
    }

    @Override // com.facebook.ads.redexgen.X.ON
    public final void AAY() {
        if (this.A00.A02() == 0) {
            C1285Qb c1285Qb = this.A01.A02;
            String[] strArr = A02;
            if (strArr[3].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "rJocaZsUv9";
            strArr2[6] = "3nzpDtzjz9tePwbisyAfJiul";
            c1285Qb.A0U();
        }
        if (this.A01.A03 != null) {
            this.A01.A03.A0U();
        }
    }
}
