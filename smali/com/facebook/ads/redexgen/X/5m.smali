###### Class com.facebook.ads.redexgen.X.C07895m (com.facebook.ads.redexgen.X.5m)
.class public final Lcom/facebook/ads/redexgen/X/5m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;


# instance fields
.field public A00:Lcom/facebook/ads/AdExperienceType;

.field public A01:Lcom/facebook/ads/redexgen/X/5l;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5m;->A01:Lcom/facebook/ads/redexgen/X/5l;

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5m;->A01:Lcom/facebook/ads/redexgen/X/5l;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5m;->A02:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5m;->A00:Lcom/facebook/ads/AdExperienceType;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/5m;->A03:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5m;->A04:Z

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5l;->A07(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;ZZ)V

    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5m;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoLoadAdConfig;
    .registers 1

    return-object p0
.end method

.method public final withAdCompanionView(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5m;->A04:Z

    return-object p0
.end method

.method public final withAdExperience(Lcom/facebook/ads/AdExperienceType;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5m;->A00:Lcom/facebook/ads/AdExperienceType;

    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/RewardedVideoAdListener;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5m;->A01:Lcom/facebook/ads/redexgen/X/5l;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5l;->A06(Lcom/facebook/ads/RewardedVideoAdListener;)V

    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/5m;->withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5m;->A02:Ljava/lang/String;

    return-object p0
.end method

.method public final withFailOnCacheFailureEnabled(Z)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5m;->A03:Z

    return-object p0
.end method

.method public final withRewardData(Lcom/facebook/ads/RewardData;)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdLoadConfigBuilder;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5m;->A01:Lcom/facebook/ads/redexgen/X/5l;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5l;->A05(Lcom/facebook/ads/RewardData;)V

    return-object p0
.end method
