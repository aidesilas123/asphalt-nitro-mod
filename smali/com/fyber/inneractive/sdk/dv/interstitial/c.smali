###### Class com.fyber.inneractive.sdk.dv.interstitial.c (com.fyber.inneractive.sdk.dv.interstitial.c)
.class public Lcom/fyber/inneractive/sdk/dv/interstitial/c;
.super Lcom/fyber/inneractive/sdk/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/a<",
        "Lcom/google/android/gms/ads/InterstitialAd;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Lcom/google/android/gms/ads/AdListener;

.field public final l:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/a;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V

    new-instance p1, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;-><init>(Lcom/fyber/inneractive/sdk/dv/interstitial/c;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c;->k:Lcom/google/android/gms/ads/AdListener;

    new-instance p1, Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;

    invoke-direct {p1, p0}, Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;-><init>(Lcom/fyber/inneractive/sdk/dv/interstitial/c;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c;->l:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/dv/interstitial/a;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    if-eqz p1, :cond_14

    check-cast p1, Lcom/google/android/gms/ads/InterstitialAd;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c;->l:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_14
    return-void
.end method

.method public a(Lcom/google/android/gms/ads/AdRequest;Lcom/fyber/inneractive/sdk/dv/d;)V
    .registers 4

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    new-instance p2, Lcom/google/android/gms/ads/InterstitialAd;

    sget-object v0, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    invoke-direct {p2, v0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c;->k:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/ads/InterstitialAd;

    const-string v0, "FyberInterstitial"

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/dv/a;->i:Ljava/lang/Object;

    check-cast p2, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

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

    if-eqz v0, :cond_e

    check-cast v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

###### Class com.fyber.inneractive.sdk.dv.interstitial.c.a (com.fyber.inneractive.sdk.dv.interstitial.c$a)
.class public Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/dv/interstitial/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/dv/interstitial/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    if-eqz v0, :cond_34

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/dv/b;->l()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/flow/q;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getSpotId()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    sget-object v1, Lcom/fyber/inneractive/sdk/dv/enums/a;->Load:Lcom/fyber/inneractive/sdk/dv/enums/a;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v3, v2, Lcom/fyber/inneractive/sdk/flow/q;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    iget-object v2, v2, Lcom/fyber/inneractive/sdk/flow/q;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v2, Lcom/fyber/inneractive/sdk/dv/f;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "errorCode - %d"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v3, v2, p1}, Lcom/fyber/inneractive/sdk/dv/handler/c;->a(Ljava/lang/String;Lcom/fyber/inneractive/sdk/dv/enums/a;Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;Lcom/fyber/inneractive/sdk/response/e;Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/a;->j()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$a;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/dv/a;->g:Lcom/fyber/inneractive/sdk/dv/d;

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/b;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/flow/h;->h()V

    :cond_12
    return-void
.end method

###### Class com.fyber.inneractive.sdk.dv.interstitial.c.b (com.fyber.inneractive.sdk.dv.interstitial.c$b)
.class public Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/dv/interstitial/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/dv/interstitial/c;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->d()V

    :cond_9
    return-void
.end method

.method public onAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->i()V

    :cond_9
    return-void
.end method

.method public onAdImpression()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->w()V

    :cond_9
    return-void
.end method

.method public onAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/dv/interstitial/c$b;->a:Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/a;->j:Lcom/fyber/inneractive/sdk/dv/interstitial/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/dv/interstitial/a;->w()V

    :cond_9
    return-void
.end method
