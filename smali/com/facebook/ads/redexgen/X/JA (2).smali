###### Class com.facebook.ads.redexgen.X.JA (com.facebook.ads.redexgen.X.JA)
.class public final Lcom/facebook/ads/redexgen/X/JA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
.implements Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

.field public A03:Ljava/lang/String;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/NativeAdBase;

.field public final A06:Lcom/facebook/ads/redexgen/X/UJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UJ;Lcom/facebook/ads/NativeAdBase;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Lcom/facebook/ads/redexgen/X/UJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/NativeAdBase;

    return-void
.end method


# virtual methods
.method public final A00()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    if-nez v0, :cond_8

    sget-object v0, Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;->ALL:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iy;->A00(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v4

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/JA;->A04:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/6W;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/6W;-><init>(ZII)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Lcom/facebook/ads/redexgen/X/UJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:Ljava/lang/String;

    invoke-virtual {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/UJ;->A1V(Lcom/facebook/ads/redexgen/X/Iy;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6W;)V

    return-void
.end method

.method public final bridge synthetic build()Lcom/facebook/ads/Ad$LoadAdConfig;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JA;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;
    .registers 1

    return-object p0
.end method

.method public final withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JA;->A06:Lcom/facebook/ads/redexgen/X/UJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A05:Lcom/facebook/ads/NativeAdBase;

    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/UJ;->A1R(Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdListener;)V

    return-object p0
.end method

.method public final bridge synthetic withBid(Ljava/lang/String;)Lcom/facebook/ads/Ad$LoadConfigBuilder;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/JA;->withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final withBid(Ljava/lang/String;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A03:Ljava/lang/String;

    return-object p0
.end method

.method public final withMediaCacheFlag(Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A02:Lcom/facebook/ads/NativeAdBase$MediaCacheFlag;

    return-object p0
.end method

.method public final withPreloadedIconView(II)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JA;->A04:Z

    iput p1, p0, Lcom/facebook/ads/redexgen/X/JA;->A01:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/JA;->A00:I

    return-object p0
.end method
