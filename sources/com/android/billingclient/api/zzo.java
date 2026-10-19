package com.android.billingclient.api;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzo implements Runnable {
    public final /* synthetic */ BillingClientImpl a;
    public final /* synthetic */ PurchaseHistoryResponseListener b;

    @Override // java.lang.Runnable
    public final void run() {
        this.a.s(this.b);
    }
}
