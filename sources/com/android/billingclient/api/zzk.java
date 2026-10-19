package com.android.billingclient.api;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzk implements Callable {
    public final /* synthetic */ BillingClientImpl a;
    public final /* synthetic */ QueryProductDetailsParams b;
    public final /* synthetic */ ProductDetailsResponseListener c;

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        this.a.N(this.b, this.c);
        return null;
    }
}
