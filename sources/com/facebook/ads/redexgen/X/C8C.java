package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8C, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C8C extends AbstractC1219Nn {
    public final /* synthetic */ SM A00;

    public C8C(SM sm) {
        this.A00 = sm;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(OK ok) {
        new Handler(Looper.getMainLooper()).post(new RunnableC1256Oy(this));
    }
}
