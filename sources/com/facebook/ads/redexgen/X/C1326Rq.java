package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1326Rq extends C4Q<C1319Rj> {
    public static String[] A0H = {"U2dBX20JaeRgS8KUkn4U", "4wbYdEjd6EY1wYpAHERmBQ5UbLFk3rIE", "poCzv8x7tLJqIV5ZIWq", "9iyDRDGf0xWQ70I4mtfqA0IQycZfZ47C", "v2glKkwlOEfR0MfsI3TqmdNecXONmhZ3", "6XdF3RdtkhprEZiVEVCq65KOMzsBziM7", "2OiOSmaAlP7OTnmHwLOjTjXlL7jeDPuL", "nkMLdycTxYcJ5galJfvG8bjM9rVBse8i"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public AbstractC1172Ls A04;
    public InterfaceC1173Lt A05;
    public String A06;
    public List<PC> A07;
    public boolean A08;
    public final SparseBooleanArray A09 = new SparseBooleanArray();
    public final AbstractC1566aS A0A;
    public final C6Q A0B;
    public final YA A0C;
    public final InterfaceC1086If A0D;
    public final LN A0E;
    public final S0 A0F;
    public final C1285Qb A0G;

    public C1326Rq(YA ya, List<PC> list, AbstractC1566aS abstractC1566aS, InterfaceC1086If interfaceC1086If, C6Q c6q, C1285Qb c1285Qb, LN ln, InterfaceC1173Lt interfaceC1173Lt, String str, int i, int i2, int i3, int i4, S0 s0, AbstractC1172Ls abstractC1172Ls) {
        this.A0C = ya;
        this.A0D = interfaceC1086If;
        this.A0B = c6q;
        this.A0G = c1285Qb;
        this.A0E = ln;
        this.A05 = interfaceC1173Lt;
        this.A0A = abstractC1566aS;
        this.A07 = list;
        this.A00 = i;
        this.A03 = i4;
        this.A06 = str;
        this.A01 = i3;
        this.A02 = i2;
        this.A0F = s0;
        this.A04 = abstractC1172Ls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1319Rj A0C(ViewGroup viewGroup, int i) {
        return new C1319Rj(OT.A00(new C1230Ny(this.A0C, this.A0D, this.A05, this.A0A, null, this.A0G, this.A0E).A0H(this.A04).A0K(), this.A03, this.A06, this.A0F), this.A09, this.A0G, this.A00, this.A01, this.A02, this.A07.size(), this.A0C, this.A0A.A0x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1319Rj c1319Rj, int i) {
        c1319Rj.A0l(this.A07.get(i), this.A0D, this.A0B, this.A0E, this.A06);
        if (this.A08 || i != 0) {
            return;
        }
        c1319Rj.AF7();
        String[] strArr = A0H;
        if (strArr[3].charAt(29) == strArr[6].charAt(29)) {
            throw new RuntimeException();
        }
        A0H[1] = "f5MkbcX2dFxcVTBDK6f4VKhLC7wzzoeI";
        this.A08 = true;
    }

    @Override // com.facebook.ads.redexgen.X.C4Q
    public final int A0D() {
        return this.A07.size();
    }
}
