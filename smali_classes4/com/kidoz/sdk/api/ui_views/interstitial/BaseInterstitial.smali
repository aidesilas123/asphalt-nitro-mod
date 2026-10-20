###### Class com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial (com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial)
.class public Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;
.super Ljava/lang/Object;
.source "BaseInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;,
        Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;
    }
.end annotation


# instance fields
.field protected mInterstitialView:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
