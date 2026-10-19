###### Class com.kidoz.sdk.api.general.MemoryManager (com.kidoz.sdk.api.general.MemoryManager)
.class public Lcom/kidoz/sdk/api/general/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 0

    invoke-static {}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->resetSession()V

    invoke-static {}, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedManager;->resetSession()V

    return-void
.end method

.method public static onActivityDestroyed(Landroid/app/Activity;)V
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->clearActivitySession(I)V

    invoke-static {p0}, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedManager;->clearActivitySession(I)V

    return-void
.end method
