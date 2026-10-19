package com.android.billingclient.api;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzz implements Callable {
    final /* synthetic */ String a;
    final /* synthetic */ PurchaseHistoryResponseListener b;
    final /* synthetic */ BillingClientImpl c;

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzai zzaiVarH = BillingClientImpl.H(this.c, this.a);
        this.b.f(zzaiVarH.a(), zzaiVarH.b());
        return null;
    }
}
