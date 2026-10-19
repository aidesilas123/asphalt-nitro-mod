package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ny, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1230Ny {
    public boolean A00;
    public View A03;
    public UJ A04;
    public AbstractC1172Ls A05;
    public C1108Jb A06;
    public final View A07;
    public final AbstractC1566aS A08;
    public final YA A09;
    public final InterfaceC1086If A0A;
    public final LN A0B;
    public final InterfaceC1173Lt A0C;
    public final C1285Qb A0D;
    public int A02 = 0;
    public int A01 = 1;

    public C1230Ny(YA ya, InterfaceC1086If interfaceC1086If, InterfaceC1173Lt interfaceC1173Lt, AbstractC1566aS abstractC1566aS, View view, C1285Qb c1285Qb, LN ln) {
        this.A09 = ya;
        this.A0A = interfaceC1086If;
        this.A0C = interfaceC1173Lt;
        this.A08 = abstractC1566aS;
        this.A07 = view;
        this.A0D = c1285Qb;
        this.A0B = ln;
    }

    public final C1230Ny A0D(int i) {
        this.A01 = i;
        return this;
    }

    public final C1230Ny A0E(int i) {
        this.A02 = i;
        return this;
    }

    public final C1230Ny A0F(View view) {
        this.A03 = view;
        return this;
    }

    public final C1230Ny A0G(UJ uj) {
        this.A04 = uj;
        return this;
    }

    public final C1230Ny A0H(AbstractC1172Ls abstractC1172Ls) {
        this.A05 = abstractC1172Ls;
        return this;
    }

    public final C1230Ny A0I(C1108Jb c1108Jb) {
        this.A06 = c1108Jb;
        return this;
    }

    public final C1230Ny A0J(boolean z) {
        this.A00 = z;
        return this;
    }

    public final C1231Nz A0K() {
        return new C1231Nz(this);
    }
}
