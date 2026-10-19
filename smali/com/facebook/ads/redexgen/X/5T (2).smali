###### Class com.facebook.ads.redexgen.X.C5T (com.facebook.ads.redexgen.X.5T)
.class public final Lcom/facebook/ads/redexgen/X/5T;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
.implements Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5S;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5S;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/5S;

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A02:Ljava/util/EnumSet;

    if-nez v0, :cond_8

    sget-object v0, Lcom/facebook/ads/CacheFlag;->ALL:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A02:Ljava/util/EnumSet;

    :cond_8
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/5S;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5T;->A02:Ljava/util/EnumSet;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5T;->A01:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A03:Z

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5S;->A05(Ljava/util/EnumSet;Ljava/lang/String;Z)V

    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5T;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;
    .registers 1

    return-object p0
.end method

.method public final withAdCompanionView(Z)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5T;->A03:Z

    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5S;->A02(Lcom/facebook/ads/InterstitialAdListener;)V

    instance-of v0, p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/5S;

    check-cast p1, Lcom/facebook/ads/InterstitialAdExtendedListener;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5S;->A04(Lcom/facebook/ads/RewardedAdListener;)V

    :cond_10
    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5T;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5T;->A01:Ljava/lang/String;

    return-object p0
.end method

.method public final withCacheFlags(Ljava/util/EnumSet;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)",
            "Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5T;->A02:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5S;->A03(Lcom/facebook/ads/RewardData;)V

    return-object p0
.end method

.method public final withRewardedAdListener(Lcom/facebook/ads/RewardedAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5T;->A00:Lcom/facebook/ads/redexgen/X/5S;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5S;->A04(Lcom/facebook/ads/RewardedAdListener;)V

    return-object p0
.end method
