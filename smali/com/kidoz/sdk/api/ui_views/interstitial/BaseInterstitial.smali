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

###### Class com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialEventListener (com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial$IOnInterstitialEventListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialEventListener;
.super Ljava/lang/Object;
.source "BaseInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnInterstitialEventListener"
.end annotation


# virtual methods
.method public abstract onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

.method public abstract onAdImpression()V
.end method

.method public abstract onAdLoaded()V
.end method

.method public abstract onAdShown()V
.end method

.method public abstract onClosed()V
.end method

.method public abstract onFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
.end method

###### Class com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialRewardedEventListener (com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial$IOnInterstitialRewardedEventListener)
.class public interface abstract Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial$IOnInterstitialRewardedEventListener;
.super Ljava/lang/Object;
.source "BaseInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/BaseInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnInterstitialRewardedEventListener"
.end annotation


# virtual methods
.method public abstract onRewardReceived()V
.end method
