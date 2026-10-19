package com.android.billingclient.api;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzl implements Runnable {
    public final /* synthetic */ BillingClientImpl a;
    public final /* synthetic */ ProductDetailsResponseListener b;

    @Override // java.lang.Runnable
    public final void run() {
        this.a.r(this.b);
    }
}
