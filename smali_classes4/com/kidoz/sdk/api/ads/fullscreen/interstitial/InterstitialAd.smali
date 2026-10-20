###### Class com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialAd (com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialAd)
.class public Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;
.super Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;
.source "InterstitialAd.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->INTERSTITIAL:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    invoke-direct {p0, p1, p2, v0}, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    return-void
.end method

.method public static load(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAdCallback;)V
    .registers 4

    invoke-static {}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->getInstance()Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->DEFAULT_INSTANCE_ID:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->loadAd(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAdCallback;)V

    return-void
.end method
