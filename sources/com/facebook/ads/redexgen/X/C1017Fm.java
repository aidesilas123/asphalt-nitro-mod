package com.facebook.ads.redexgen.X;

import android.util.SparseArray;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1017Fm {
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final SparseArray<C1018Fn> A09;
    public final boolean A0A;

    public C1017Fm(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<C1018Fn> sparseArray) {
        this.A03 = i;
        this.A0A = z;
        this.A08 = i2;
        this.A02 = i3;
        this.A04 = i4;
        this.A01 = i5;
        this.A00 = i6;
        this.A07 = i7;
        this.A06 = i8;
        this.A05 = i9;
        this.A09 = sparseArray;
    }

    public final void A00(C1017Fm c1017Fm) {
        if (c1017Fm == null) {
            return;
        }
        SparseArray<C1018Fn> sparseArray = c1017Fm.A09;
        for (int i = 0; i < sparseArray.size(); i++) {
            this.A09.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
        }
    }
}
