###### Class com.unity3d.services.ads.gmascar.models.BiddingSignals (com.unity3d.services.ads.gmascar.models.BiddingSignals)
.class public Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;
.super Ljava/lang/Object;
.source "BiddingSignals.java"


# instance fields
.field private final bannerSignal:Ljava/lang/String;

.field private final interstitialSignal:Ljava/lang/String;

.field private final rvSignal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->rvSignal:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->interstitialSignal:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->bannerSignal:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->rvSignal:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->interstitialSignal:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->bannerSignal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBannerSignal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->bannerSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getInterstitialSignal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->interstitialSignal:Ljava/lang/String;

    return-object v0
.end method

.method public getMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getRvSignal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getRvSignal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getInterstitialSignal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getInterstitialSignal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "in"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getBannerSignal()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getBannerSignal()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-object v0
.end method

.method public getRvSignal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->rvSignal:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getRvSignal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getInterstitialSignal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/unity3d/services/ads/gmascar/models/BiddingSignals;->getBannerSignal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method
