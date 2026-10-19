package com.android.billingclient.api;

import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.android.billingclient:billing@@6.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzaj implements AcknowledgePurchaseResponseListener, BillingClientStateListener, ConsumeResponseListener, PurchaseHistoryResponseListener, PurchasesResponseListener, PurchasesUpdatedListener, SkuDetailsResponseListener {
    private final long a = 0;

    zzaj() {
    }

    public static native void nativeOnAcknowledgePurchaseResponse(int i, String str, long j);

    public static native void nativeOnBillingServiceDisconnected();

    public static native void nativeOnBillingSetupFinished(int i, String str, long j);

    public static native void nativeOnConsumePurchaseResponse(int i, String str, String str2, long j);

    public static native void nativeOnPriceChangeConfirmationResult(int i, String str, long j);

    public static native void nativeOnPurchaseHistoryResponse(int i, String str, PurchaseHistoryRecord[] purchaseHistoryRecordArr, long j);

    public static native void nativeOnPurchasesUpdated(int i, String str, Purchase[] purchaseArr);

    public static native void nativeOnQueryPurchasesResponse(int i, String str, Purchase[] purchaseArr, long j);

    public static native void nativeOnSkuDetailsResponse(int i, String str, SkuDetails[] skuDetailsArr, long j);

    @Override // com.android.billingclient.api.PurchasesResponseListener
    public final void a(BillingResult billingResult, List<Purchase> list) {
        nativeOnQueryPurchasesResponse(billingResult.b(), billingResult.a(), (Purchase[]) list.toArray(new Purchase[list.size()]), this.a);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void b(BillingResult billingResult) {
        nativeOnBillingSetupFinished(billingResult.b(), billingResult.a(), this.a);
    }

    @Override // com.android.billingclient.api.SkuDetailsResponseListener
    public final void c(BillingResult billingResult, List<SkuDetails> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnSkuDetailsResponse(billingResult.b(), billingResult.a(), (SkuDetails[]) list.toArray(new SkuDetails[list.size()]), this.a);
    }

    @Override // com.android.billingclient.api.PurchasesUpdatedListener
    public final void d(BillingResult billingResult, List<Purchase> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnPurchasesUpdated(billingResult.b(), billingResult.a(), (Purchase[]) list.toArray(new Purchase[list.size()]));
    }

    @Override // com.android.billingclient.api.AcknowledgePurchaseResponseListener
    public final void e(BillingResult billingResult) {
        nativeOnAcknowledgePurchaseResponse(billingResult.b(), billingResult.a(), this.a);
    }

    @Override // com.android.billingclient.api.PurchaseHistoryResponseListener
    public final void f(BillingResult billingResult, List<PurchaseHistoryRecord> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        nativeOnPurchaseHistoryResponse(billingResult.b(), billingResult.a(), (PurchaseHistoryRecord[]) list.toArray(new PurchaseHistoryRecord[list.size()]), this.a);
    }

    @Override // com.android.billingclient.api.ConsumeResponseListener
    public final void g(BillingResult billingResult, String str) {
        nativeOnConsumePurchaseResponse(billingResult.b(), billingResult.a(), str, this.a);
    }

    @Override // com.android.billingclient.api.BillingClientStateListener
    public final void onBillingServiceDisconnected() {
        nativeOnBillingServiceDisconnected();
    }
}
