package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7N, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C7N extends AbstractC1219Nn {
    public final /* synthetic */ C7K A00;

    public C7N(C7K c7k) {
        this.A00 = c7k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(OK ok) {
        new Handler(Looper.getMainLooper()).post(new P4(this));
    }
}
