package com.android.billingclient.api;

import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzy implements Callable {
    final /* synthetic */ String a;
    final /* synthetic */ PurchasesResponseListener b;
    final /* synthetic */ BillingClientImpl c;

    zzy(BillingClientImpl billingClientImpl, String str, PurchasesResponseListener purchasesResponseListener) {
        this.c = billingClientImpl;
        this.a = str;
        this.b = purchasesResponseListener;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzbj zzbjVarV = BillingClientImpl.v(this.c, this.a, 9);
        if (zzbjVarV.b() != null) {
            this.b.a(zzbjVarV.a(), zzbjVarV.b());
            return null;
        }
        this.b.a(zzbjVarV.a(), com.google.android.gms.internal.play_billing.zzu.zzk());
        return null;
    }
}
