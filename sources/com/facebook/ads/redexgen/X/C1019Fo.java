package com.facebook.ads.redexgen.X;

import android.util.SparseArray;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1019Fo {
    public C1013Fi A00;
    public C1015Fk A01;
    public final int A02;
    public final int A03;
    public final SparseArray<C1017Fm> A08 = new SparseArray<>();
    public final SparseArray<C1012Fh> A06 = new SparseArray<>();
    public final SparseArray<C1014Fj> A07 = new SparseArray<>();
    public final SparseArray<C1012Fh> A04 = new SparseArray<>();
    public final SparseArray<C1014Fj> A05 = new SparseArray<>();

    public C1019Fo(int i, int i2) {
        this.A03 = i;
        this.A02 = i2;
    }

    public final void A00() {
        this.A08.clear();
        this.A06.clear();
        this.A07.clear();
        this.A04.clear();
        this.A05.clear();
        this.A00 = null;
        this.A01 = null;
    }
}
