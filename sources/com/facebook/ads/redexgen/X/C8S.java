package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8S, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C8S {
    public static C8S A00 = new C8S();

    public static C8S A00() {
        return A00;
    }

    public final C1467Xf A01(C7S c7s, boolean z) {
        return new C1467Xf(c7s, z, new C6G());
    }

    public final Map<String, String> A02(C7S c7s) {
        try {
            return A01(c7s, false).A0C();
        } catch (Throwable th) {
            c7s.A07().A3Y(th);
            return C8O.A01(c7s);
        }
    }
}
