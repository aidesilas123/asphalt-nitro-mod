package com.facebook.ads.redexgen.X;

import java.util.Set;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ql, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1295Ql {
    public C1299Qp A00;
    public Set<String> A01;
    public Set<String> A02;
    public boolean A03;
    public boolean A04 = true;

    public final C1295Ql A00(C1299Qp c1299Qp) {
        this.A00 = c1299Qp;
        return this;
    }

    public final C1295Ql A01(Set<String> set) {
        this.A01 = set;
        return this;
    }

    public final C1295Ql A02(Set<String> set) {
        this.A02 = set;
        return this;
    }

    public final C1295Ql A03(boolean z) {
        this.A04 = z;
        return this;
    }

    public final C1295Ql A04(boolean z) {
        this.A03 = z;
        return this;
    }

    public final C1296Qm A05() {
        return new C1296Qm(this.A00, this.A04, this.A02, this.A01, this.A03);
    }
}
