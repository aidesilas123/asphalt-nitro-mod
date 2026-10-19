package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ts, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1379Ts<T> extends K8 {
    public final WeakReference<T> A00;

    public AbstractC1379Ts(T t) {
        this.A00 = new WeakReference<>(t);
    }

    public final T A07() {
        return this.A00.get();
    }
}
