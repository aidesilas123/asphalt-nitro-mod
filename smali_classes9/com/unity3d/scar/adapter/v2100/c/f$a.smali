###### Class com.unity3d.scar.adapter.v2100.c.f.a (com.unity3d.scar.adapter.v2100.c.f$a)
.class Lcom/unity3d/scar/adapter/v2100/c/f$a;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "ScarInterstitialAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2100/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2100/c/f;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2100/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/f$a;->a:Lcom/unity3d/scar/adapter/v2100/c/f;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/f$a;->a:Lcom/unity3d/scar/adapter/v2100/c/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2100/c/f;->b(Lcom/unity3d/scar/adapter/v2100/c/f;)Lcom/unity3d/scar/adapter/common/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/c;->onAdFailedToLoad(ILjava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/ads/interstitial/InterstitialAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/f$a;->a:Lcom/unity3d/scar/adapter/v2100/c/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2100/c/f;->b(Lcom/unity3d/scar/adapter/v2100/c/f;)Lcom/unity3d/scar/adapter/common/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdLoaded()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/f$a;->a:Lcom/unity3d/scar/adapter/v2100/c/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2100/c/f;->c(Lcom/unity3d/scar/adapter/v2100/c/f;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2100/c/f$a;->a:Lcom/unity3d/scar/adapter/v2100/c/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2100/c/f;->d(Lcom/unity3d/scar/adapter/v2100/c/f;)Lcom/unity3d/scar/adapter/v2100/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unity3d/scar/adapter/v2100/c/a;->c(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/scar/adapter/v2100/c/f$a;->a:Lcom/unity3d/scar/adapter/v2100/c/f;

    iget-object p1, p1, Lcom/unity3d/scar/adapter/v2100/c/b;->a:Lcom/unity3d/scar/adapter/common/scarads/b;

    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/unity3d/scar/adapter/common/scarads/b;->onAdLoaded()V

    :cond_27
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/unity3d/scar/adapter/v2100/c/f$a;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
