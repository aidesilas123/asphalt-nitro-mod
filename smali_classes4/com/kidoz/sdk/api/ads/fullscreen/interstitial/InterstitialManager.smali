###### Class com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialManager (com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialManager)
.class public Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;
.super Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;
.source "InterstitialManager.java"


# static fields
.field private static instance:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;-><init>()V

    return-void
.end method

.method public static clearActivitySession(I)V
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->instance:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;

    invoke-virtual {v0, p0}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->clearActivitySession_(I)V

    return-void
.end method

.method protected static getInstance()Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->instance:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;

    return-object v0
.end method

.method public static resetSession()V
    .registers 1

    new-instance v0, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->instance:Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic getNewAdInstance(Landroid/app/Activity;Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialManager;->getNewAdInstance(Landroid/app/Activity;Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    move-result-object p1

    return-object p1
.end method

.method protected getNewAdInstance(Landroid/app/Activity;Ljava/lang/String;)Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;

    invoke-direct {v0, p1, p2}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected loadAd(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAdCallback;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozFullScreenAdManager;->loadFullScreenAd(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/AdCallback;)V

    return-void
.end method
