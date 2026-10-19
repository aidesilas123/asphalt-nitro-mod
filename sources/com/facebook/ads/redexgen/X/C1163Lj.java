package com.facebook.ads.redexgen.X;

import java.util.concurrent.Executor;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1163Lj {
    public static C1163Lj A02;
    public final C1376Tp A00;
    public final C1165Ll A01;

    public C1163Lj(YA ya, Executor executor, C8F c8f) {
        this.A01 = new C1165Ll(ya);
        this.A00 = new C1376Tp(executor, c8f, ya);
    }

    private void A00() {
        this.A01.A03(this.A00);
    }

    public static void A01(YA ya, Executor executor, C8F c8f) {
        if (IP.A1D(ya)) {
            C1163Lj c1163Lj = A02;
            if (c1163Lj != null) {
                c1163Lj.A02(c8f);
                return;
            }
            C1163Lj c1163Lj2 = new C1163Lj(ya, executor, c8f);
            A02 = c1163Lj2;
            c1163Lj2.A00();
        }
    }

    private void A02(C8F c8f) {
        this.A00.A07(c8f);
    }
}
