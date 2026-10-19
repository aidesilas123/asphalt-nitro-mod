###### Class com.gameloft.android2d.iap.IAP_CallBack (com.gameloft.android2d.iap.IAP_CallBack)
.class public Lcom/gameloft/android2d/iap/IAP_CallBack;
.super Ljava/lang/Object;
.source "IAP_CallBack.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IAP_GetLimitsValidationCB(Z)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_GetLimitsValidationCB(Z)V

    return-void
.end method

.method public static IAP_GetListInfoRestoreCB([Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_GetListInfoRestoreCB([Ljava/lang/String;)V

    return-void
.end method

.method public static IAP_GetListItemsRestoreCB([Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_GetListItemsRestoreCB([Ljava/lang/String;)V

    return-void
.end method

.method public static IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    return-void
.end method

.method public static IAP_OnLimitRequestCallback(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_OnLimitRequestCallback(Ljava/lang/String;)V

    return-void
.end method

.method public static IAP_OnPurchaseRequestCancelCallback()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_OnPurchaseRequestCancelCallback()V

    return-void
.end method

.method public static IAP_OnPurchaseRequestSentCallback()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_OnPurchaseRequestSentCallback()V

    return-void
.end method

.method public static IAP_OnReLoadFeedCallback()V
    .registers 0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->NIAP_OnReLoadFeedCallback()V

    return-void
.end method

.method public static native NIAP_GetLimitsValidationCB(Z)V
.end method

.method public static native NIAP_GetListInfoRestoreCB([Ljava/lang/String;)V
.end method

.method public static native NIAP_GetListItemsRestoreCB([Ljava/lang/String;)V
.end method

.method public static native NIAP_GetSubscriptionStatusCB(Ljava/lang/String;)V
.end method

.method public static native NIAP_OnLimitRequestCallback(Ljava/lang/String;)V
.end method

.method public static native NIAP_OnPurchaseRequestCancelCallback()V
.end method

.method public static native NIAP_OnPurchaseRequestSentCallback()V
.end method

.method public static native NIAP_OnReLoadFeedCallback()V
.end method
