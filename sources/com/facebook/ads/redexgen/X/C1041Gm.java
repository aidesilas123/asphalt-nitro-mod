package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1041Gm extends IOException {
    public final int A00;
    public final C1037Gg A01;

    public C1041Gm(IOException iOException, C1037Gg c1037Gg, int i) {
        super(iOException);
        this.A01 = c1037Gg;
        this.A00 = i;
    }

    public C1041Gm(String str, C1037Gg c1037Gg, int i) {
        super(str);
        this.A01 = c1037Gg;
        this.A00 = i;
    }

    public C1041Gm(String str, IOException iOException, C1037Gg c1037Gg, int i) {
        super(str, iOException);
        this.A01 = c1037Gg;
        this.A00 = i;
    }
}
