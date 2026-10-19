package com.facebook.ads.redexgen.X;

import java.util.concurrent.ThreadFactory;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ThreadFactoryC1077Hw implements ThreadFactory {
    public final /* synthetic */ String A00;

    public ThreadFactoryC1077Hw(String str) {
        this.A00 = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.A00);
    }
}
