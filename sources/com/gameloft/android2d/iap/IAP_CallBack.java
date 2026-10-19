package com.gameloft.android2d.iap;

/* JADX INFO: loaded from: classes2.dex */
public class IAP_CallBack {
    public static void IAP_GetLimitsValidationCB(boolean z) {
        NIAP_GetLimitsValidationCB(z);
    }

    public static void IAP_GetListInfoRestoreCB(String[] strArr) {
        NIAP_GetListInfoRestoreCB(strArr);
    }

    public static void IAP_GetListItemsRestoreCB(String[] strArr) {
        NIAP_GetListItemsRestoreCB(strArr);
    }

    public static void IAP_GetSubscriptionStatusCB(String str) {
        NIAP_GetSubscriptionStatusCB(str);
    }

    public static void IAP_OnLimitRequestCallback(String str) {
        NIAP_OnLimitRequestCallback(str);
    }

    public static void IAP_OnPurchaseRequestCancelCallback() {
        NIAP_OnPurchaseRequestCancelCallback();
    }

    public static void IAP_OnPurchaseRequestSentCallback() {
        NIAP_OnPurchaseRequestSentCallback();
    }

    public static void IAP_OnReLoadFeedCallback() {
        NIAP_OnReLoadFeedCallback();
    }

    public static native void NIAP_GetLimitsValidationCB(boolean z);

    public static native void NIAP_GetListInfoRestoreCB(String[] strArr);

    public static native void NIAP_GetListItemsRestoreCB(String[] strArr);

    public static native void NIAP_GetSubscriptionStatusCB(String str);

    public static native void NIAP_OnLimitRequestCallback(String str);

    public static native void NIAP_OnPurchaseRequestCancelCallback();

    public static native void NIAP_OnPurchaseRequestSentCallback();

    public static native void NIAP_OnReLoadFeedCallback();
}
