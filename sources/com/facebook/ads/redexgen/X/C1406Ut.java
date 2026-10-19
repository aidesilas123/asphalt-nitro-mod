package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ut, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1406Ut implements HL {
    @Override // com.facebook.ads.redexgen.X.HL
    public final C1405Us A4Z(Looper looper, Handler.Callback callback) {
        return new C1405Us(new Handler(looper, callback));
    }

    @Override // com.facebook.ads.redexgen.X.HL
    public final long A5O() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.facebook.ads.redexgen.X.HL
    public final long AG7() {
        return SystemClock.uptimeMillis();
    }
}
