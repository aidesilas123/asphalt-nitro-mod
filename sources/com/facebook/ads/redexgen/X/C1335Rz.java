package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1335Rz extends C4Q<C1327Rr> {
    public int A00;
    public int A01;
    public int A02;
    public AbstractC1172Ls A03;
    public InterfaceC1173Lt A04;
    public String A05;
    public List<PC> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AbstractC1566aS A08;
    public final C6Q A09;
    public final YA A0A;
    public final InterfaceC1086If A0B;
    public final LN A0C;
    public final S0 A0D;
    public final C1108Jb A0E;
    public final C1285Qb A0F;

    public C1335Rz(YA ya, List<PC> list, AbstractC1566aS abstractC1566aS, InterfaceC1086If interfaceC1086If, C6Q c6q, C1285Qb c1285Qb, LN ln, InterfaceC1173Lt interfaceC1173Lt, String str, S0 s0, C1108Jb c1108Jb, AbstractC1172Ls abstractC1172Ls) {
        this.A0A = ya;
        this.A0B = interfaceC1086If;
        this.A09 = c6q;
        this.A0F = c1285Qb;
        this.A0C = ln;
        this.A04 = interfaceC1173Lt;
        this.A08 = abstractC1566aS;
        this.A06 = list;
        this.A05 = str;
        this.A0D = s0;
        this.A0E = c1108Jb;
        this.A03 = abstractC1172Ls;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1327Rr A0C(ViewGroup viewGroup, int i) {
        InterfaceC1173Lt interfaceC1173Lt = this.A04;
        if (interfaceC1173Lt == null || this.A00 == 0) {
            return null;
        }
        return new C1327Rr(NX.A01(new C1230Ny(this.A0A, this.A0B, interfaceC1173Lt, this.A08, null, this.A0F, this.A0C).A0I(this.A0E).A0H(this.A03).A0K(), this.A05, this.A0D), this.A07, this.A0F, this.A06.size(), this.A0A, this.A08.A0x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1327Rr c1327Rr, int i) {
        c1327Rr.A0l(this.A06.get(i), this.A0B, this.A09, this.A0C, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.C4Q
    public final int A0D() {
        return this.A06.size();
    }

    public final void A0F(int i, int i2, int i3) {
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
    }
}
