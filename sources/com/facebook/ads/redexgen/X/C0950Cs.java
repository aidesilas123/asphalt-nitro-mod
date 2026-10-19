package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0950Cs {
    public final int A00;
    public final String A01;
    public final List<C0949Cr> A02;
    public final byte[] A03;

    public C0950Cs(int i, String str, List<C0949Cr> list, byte[] bArr) {
        this.A00 = i;
        this.A01 = str;
        this.A02 = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.A03 = bArr;
    }
}
