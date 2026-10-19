package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4X, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C4X {
    public int A00;
    public int A01;
    public int A02;
    public int A03;

    private final C4X A00(AbstractC07714u abstractC07714u, int i) {
        View view = abstractC07714u.A0H;
        this.A01 = view.getLeft();
        this.A03 = view.getTop();
        this.A02 = view.getRight();
        this.A00 = view.getBottom();
        return this;
    }

    public final C4X A01(AbstractC07714u abstractC07714u) {
        return A00(abstractC07714u, 0);
    }
}
