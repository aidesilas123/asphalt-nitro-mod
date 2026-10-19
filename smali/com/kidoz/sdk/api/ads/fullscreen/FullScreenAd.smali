###### Class com.kidoz.sdk.api.ads.fullscreen.FullScreenAd (com.kidoz.sdk.api.ads.fullscreen.FullScreenAd)
.class public Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;
.super Ljava/lang/Object;
.source "FullScreenAd.java"


# static fields
.field protected static DEFAULT_INSTANCE_ID:Ljava/lang/String; = "defaultInstanceId"


# instance fields
.field private contextId:I

.field private instanceId:Ljava/lang/String;

.field private kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    invoke-direct {v0, p1, p2, p3}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->instanceId:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->contextId:I

    return-void
.end method


# virtual methods
.method protected destroy()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    :cond_a
    return-void
.end method

.method public getContextId()I
    .registers 2

    iget v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->contextId:I

    return v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->instanceId:Ljava/lang/String;

    return-object v0
.end method

.method public isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->isLoaded()Z

    move-result v0

    return v0
.end method

.method protected load()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->loadAd()V

    return-void
.end method

.method protected setInternalFullScreenEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->setOnInterstitialEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;)V

    return-void
.end method

.method protected setRewardedEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->setOnInterstitialRewardedEventListener(Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;)V

    return-void
.end method

.method public show()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/fullscreen/FullScreenAd;->kidozInterstitial:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->show()V

    return-void
.end method
