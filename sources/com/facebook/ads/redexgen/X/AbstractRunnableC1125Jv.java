package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractRunnableC1125Jv implements Runnable {
    public static final AtomicReference<Throwable> A00 = new AtomicReference<>();

    public static Throwable A00() {
        return A00.get();
    }

    public abstract void A01();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            A01();
        } catch (Throwable th) {
            A00.set(th);
            throw th;
        }
    }
}
