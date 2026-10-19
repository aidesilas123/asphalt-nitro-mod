###### Class com.unity3d.scar.adapter.v2000.b.f.b (com.unity3d.scar.adapter.v2000.b.f$b)
.class Lcom/unity3d/scar/adapter/v2000/b/f$b;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "ScarInterstitialAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/f;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/f$b;->a:Lcom/unity3d/scar/adapter/v2000/b/f;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/f$b;->a:Lcom/unity3d/scar/adapter/v2000/b/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/f;->b(Lcom/unity3d/scar/adapter/v2000/b/f;)Lcom/unity3d/scar/adapter/common/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/f$b;->a:Lcom/unity3d/scar/adapter/v2000/b/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/f;->b(Lcom/unity3d/scar/adapter/v2000/b/f;)Lcom/unity3d/scar/adapter/common/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/f;->onAdFailedToShow(ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/f$b;->a:Lcom/unity3d/scar/adapter/v2000/b/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/f;->b(Lcom/unity3d/scar/adapter/v2000/b/f;)Lcom/unity3d/scar/adapter/common/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/f;->onAdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/f$b;->a:Lcom/unity3d/scar/adapter/v2000/b/f;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/f;->b(Lcom/unity3d/scar/adapter/v2000/b/f;)Lcom/unity3d/scar/adapter/common/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdOpened()V

    return-void
.end method
