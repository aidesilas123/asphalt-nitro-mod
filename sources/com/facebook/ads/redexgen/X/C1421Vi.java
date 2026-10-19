package com.facebook.ads.redexgen.X;

import android.net.Uri;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1421Vi implements FK {
    public InterfaceC0923Bd A02;
    public Object A03;
    public String A04;
    public boolean A05;
    public final InterfaceC1032Gb A06;
    public int A01 = -1;
    public int A00 = 1048576;

    public C1421Vi(InterfaceC1032Gb interfaceC1032Gb) {
        this.A06 = interfaceC1032Gb;
    }

    public final C1421Vi A00(String str) {
        HI.A04(!this.A05);
        this.A04 = str;
        return this;
    }

    public final BS A01(Uri uri) {
        this.A05 = true;
        if (this.A02 == null) {
            this.A02 = new X3();
        }
        return new BS(uri, this.A06, this.A02, this.A01, this.A04, this.A00, this.A03);
    }
}
