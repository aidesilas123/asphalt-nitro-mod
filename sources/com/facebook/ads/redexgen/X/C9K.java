package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9K, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C9K extends Exception {
    public final int A00;
    public final int A01;

    public C9K(int i, String str, Throwable th, int i2) {
        super(str, th);
        this.A01 = i;
        this.A00 = i2;
    }

    public static C9K A00(IOException iOException) {
        return new C9K(0, null, iOException, -1);
    }

    public static C9K A01(Exception exc, int i) {
        return new C9K(1, null, exc, i);
    }

    public static C9K A02(RuntimeException runtimeException) {
        return new C9K(2, null, runtimeException, -1);
    }
}
