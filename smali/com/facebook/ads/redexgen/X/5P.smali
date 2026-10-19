###### Class com.facebook.ads.redexgen.X.C5P (com.facebook.ads.redexgen.X.5P)
.class public final Lcom/facebook/ads/redexgen/X/5P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/BidderTokenProviderApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6H;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/6H;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/6H;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5P;->A00:Lcom/facebook/ads/redexgen/X/6H;

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/6H;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5P;->A00:Lcom/facebook/ads/redexgen/X/6H;

    return-object v0
.end method

.method public final getBidderToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5P;->A00:Lcom/facebook/ads/redexgen/X/6H;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5Q;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6H;->A06(Lcom/facebook/ads/redexgen/X/Y9;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
