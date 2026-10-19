###### Class com.kidoz.sdk.api.ui_views.interstitial.LocalIntrst (com.kidoz.sdk.api.ui_views.interstitial.LocalIntrst)
.class public Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;
.super Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;
.source "LocalIntrst.java"


# instance fields
.field private mAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V
    .registers 4

    const-string v0, "instanceId"

    invoke-direct {p0, p1, v0, p2}, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;->mAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    return-void
.end method


# virtual methods
.method public loadAd()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setIsLocalRequest(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/LocalIntrst;->mAdType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->load(Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;)V

    :cond_f
    return-void
.end method

.method protected setRequestType()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;->mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->setIsLocalRequest(Z)V

    return-void
.end method
