package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ib, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1082Ib {
    public double A00;
    public EnumC1088Ih A01;
    public EnumC1089Ii A02;
    public String A03;
    public String A04;
    public Map<String, String> A05;
    public boolean A06;

    public final C1082Ib A00(double d2) {
        this.A00 = d2;
        return this;
    }

    public final C1082Ib A01(EnumC1088Ih enumC1088Ih) {
        this.A01 = enumC1088Ih;
        return this;
    }

    public final C1082Ib A02(EnumC1089Ii enumC1089Ii) {
        this.A02 = enumC1089Ii;
        return this;
    }

    public final C1082Ib A03(String str) {
        this.A03 = str;
        return this;
    }

    public final C1082Ib A04(String str) {
        this.A04 = str;
        return this;
    }

    public final C1082Ib A05(Map<String, String> map) {
        this.A05 = map;
        return this;
    }

    public final C1082Ib A06(boolean z) {
        this.A06 = z;
        return this;
    }

    public final C1083Ic A07(C7S c7s) {
        return new C1083Ic(c7s, this.A04, this.A00, this.A03, this.A05, this.A01, this.A02, this.A06);
    }
}
