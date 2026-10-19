package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7R, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C7R {
    public static final AtomicReference<Y9> A00 = new AtomicReference<>();

    public static Y9 A00() {
        return A00.get();
    }

    public static void A01(Y9 y9) {
        if (y9 == null) {
            return;
        }
        C7Q.A00(A00, null, y9);
    }
}
