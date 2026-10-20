###### Class com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAd (com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAd)
.class public Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;
.super Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;
.source "RewardedAd.java"


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    invoke-direct {p0, p1, p2, v0}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    return-void
.end method

.method public static load(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAdCallback;)V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedManager;->getInstance()Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedManager;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->DEFAULT_INSTANCE_ID:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedManager;->loadAd(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAdCallback;)V

    return-void
.end method
