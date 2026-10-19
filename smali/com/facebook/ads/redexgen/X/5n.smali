###### Class com.facebook.ads.redexgen.X.C07905n (com.facebook.ads.redexgen.X.5n)
.class public final Lcom/facebook/ads/redexgen/X/5n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
.implements Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;


# instance fields
.field public A00:I

.field public A01:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:I

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:I

    return v0
.end method

.method public final A01()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:J

    return-wide v0
.end method

.method public final A02(J)Lcom/facebook/ads/redexgen/X/5n;
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/5n;->A01:J

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/FullScreenAd$ShowAdConfig;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5n;->build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/RewardedVideoAd$RewardedVideoShowAdConfig;
    .registers 1

    return-object p0
.end method

.method public final withAppOrientation(I)Lcom/facebook/ads/RewardedVideoAd$RewardedVideoAdShowConfigBuilder;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/5n;->A00:I

    return-object p0
.end method
