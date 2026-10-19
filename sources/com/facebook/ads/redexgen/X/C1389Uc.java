package com.facebook.ads.redexgen.X;

import android.content.Context;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1389Uc implements InterfaceC1099Is {
    public final Context A00;

    public C1389Uc(Context context) {
        this.A00 = context;
    }

    public final void A01(boolean z, String str, String str2, String str3, long j) {
        ExecutorC1154La.A06.execute(new C1390Ud(this, str, z, str2, str3, j));
    }
}
