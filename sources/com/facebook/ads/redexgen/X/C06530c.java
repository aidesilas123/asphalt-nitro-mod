package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0c, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C06530c extends C06831h {
    @Override // com.facebook.ads.redexgen.X.EM, com.facebook.ads.redexgen.X.C3G
    public final void A0C(View view, int i) {
        view.setImportantForAccessibility(i);
    }

    @Override // com.facebook.ads.redexgen.X.C3G
    public final boolean A0J(View view) {
        return view.isAttachedToWindow();
    }
}
