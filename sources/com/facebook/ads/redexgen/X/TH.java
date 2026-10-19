package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class TH extends C4Q<C1327Rr> {
    public int A00;
    public int A01;
    public int A02;
    public InterfaceC1173Lt A03;
    public C1285Qb A04;
    public String A05;
    public List<PC> A06;
    public final SparseBooleanArray A07 = new SparseBooleanArray();
    public final AbstractC1566aS A08;
    public final C6Q A09;
    public final YA A0A;
    public final InterfaceC1086If A0B;
    public final UJ A0C;
    public final LN A0D;
    public final C08789j A0E;
    public final C1108Jb A0F;

    public TH(YA ya, List<PC> list, AbstractC1566aS abstractC1566aS, InterfaceC1086If interfaceC1086If, UJ uj, InterfaceC1173Lt interfaceC1173Lt, String str, C08789j c08789j, C1108Jb c1108Jb) {
        this.A0A = ya;
        this.A0B = interfaceC1086If;
        this.A0C = uj;
        this.A09 = uj.A10();
        this.A04 = uj.A1A();
        this.A0D = uj.A19();
        this.A03 = interfaceC1173Lt;
        this.A08 = abstractC1566aS;
        this.A06 = list;
        this.A05 = str;
        this.A0E = c08789j;
        this.A0F = c1108Jb;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1327Rr A0C(ViewGroup viewGroup, int i) {
        return new C1327Rr(NX.A00(new C1230Ny(this.A0A, this.A0B, this.A03, this.A08, null, this.A04, this.A0D).A0I(this.A0F).A0G(this.A0C).A0K(), this.A0C, this.A05, this.A0E), this.A07, this.A04, this.A06.size(), this.A0A, this.A08.A0x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A0E(C1327Rr c1327Rr, int i) {
        PC pc = this.A06.get(i);
        c1327Rr.A0m(this.A04);
        c1327Rr.A0l(pc, this.A0B, this.A09, this.A0D, this.A05, this.A00, this.A02, this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.C4Q
    public final int A0D() {
        return this.A06.size();
    }

    public final void A0F(int i, int i2, int i3) {
        boolean z = i != this.A00;
        this.A00 = i;
        this.A02 = i2;
        this.A01 = i3;
        if (z) {
            A06();
        }
    }

    public final void A0G(C1285Qb c1285Qb) {
        this.A04 = c1285Qb;
    }
}
