###### Class com.unity3d.scar.adapter.v2000.b.d.a (com.unity3d.scar.adapter.v2000.b.d$a)
.class Lcom/unity3d/scar/adapter/v2000/b/d$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "ScarBannerAdListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/scar/adapter/v2000/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/scar/adapter/v2000/b/d;


# direct methods
.method constructor <init>(Lcom/unity3d/scar/adapter/v2000/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/d;->b(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/common/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/d;->b(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/common/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/d;->c(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/v2000/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/scar/adapter/v2000/b/c;->d()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/d;->b(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/common/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/scar/adapter/common/c;->onAdFailedToLoad(ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/d;->b(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/common/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/e;->onAdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/d;->b(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/common/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdLoaded()V

    return-void
.end method

.method public onAdOpened()V
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    iget-object v0, p0, Lcom/unity3d/scar/adapter/v2000/b/d$a;->a:Lcom/unity3d/scar/adapter/v2000/b/d;

    invoke-static {v0}, Lcom/unity3d/scar/adapter/v2000/b/d;->b(Lcom/unity3d/scar/adapter/v2000/b/d;)Lcom/unity3d/scar/adapter/common/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/scar/adapter/common/c;->onAdOpened()V

    return-void
.end method
