###### Class com.fyber.inneractive.sdk.dv.interstitial.b (com.fyber.inneractive.sdk.dv.interstitial.b)
.class public Lcom/fyber/inneractive/sdk/dv/interstitial/b;
.super Lcom/fyber/inneractive/sdk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/a<",
        "Lcom/google/android/gms/ads/interstitial/InterstitialAd;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

.field public final l:Lcom/google/android/gms/ads/FullScreenContentCallback;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/a;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V

    new-instance p1, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;-><init>(Lcom/fyber/inneractive/sdk/dv/interstitial/b;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b;->k:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    new-instance p1, Lcom/fyber/inneractive/sdk/dv/interstitial/b$b;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/dv/interstitial/b$b;-><init>(Lcom/fyber/inneractive/sdk/dv/interstitial/b;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b;->l:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/dv/interstitial/a;Landroid/app/Activity;)V
    .registers 4

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    if-eqz p1, :cond_14

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b;->l:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    :cond_14
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/AdRequest;Lcom/fyber/inneractive/sdk/dv/d;)V
    .registers 5

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    sget-object p2, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b;->k:Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;

    const-string v1, "FyberInterstitial"

    invoke-static {p2, v1, p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

###### Class com.fyber.inneractive.sdk.dv.interstitial.b.a (com.fyber.inneractive.sdk.dv.interstitial.b$a)
.class public Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/dv/interstitial/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/dv/interstitial/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/ads/LoadAdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    if-eqz v0, :cond_28

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/dv/b;->l()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/q;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    sget-object v1, Lcom/fyber/inneractive/sdk/dv/enums/a;->Load:Lcom/fyber/inneractive/sdk/dv/enums/a;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/flow/q;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v2, Lcom/fyber/inneractive/sdk/dv/f;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v3, v2, p1}, Lcom/fyber/inneractive/sdk/dv/handler/c;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/dv/enums/a;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public onAdLoaded(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    if-eqz v1, :cond_16

    iput-object p1, v0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/a;->j()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    check-cast p1, Lcom/fyber/inneractive/sdk/dv/b;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/flow/h;->h()V

    :cond_16
    return-void
.end method

###### Class com.fyber.inneractive.sdk.dv.interstitial.b.C0155b (com.fyber.inneractive.sdk.dv.interstitial.b$b)
.class public Lcom/fyber/inneractive/sdk/dv/interstitial/b$b;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/dv/interstitial/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/dv/interstitial/b;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->i()V

    :cond_9
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/b$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->w()V

    :cond_9
    return-void
.end method
