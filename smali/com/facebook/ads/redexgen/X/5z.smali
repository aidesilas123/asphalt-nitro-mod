###### Class com.facebook.ads.redexgen.X.C5Z (com.facebook.ads.redexgen.X.5Z)
.class public final Lcom/facebook/ads/redexgen/X/5Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewTypeApi;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/J7;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J7;->A00(I)Lcom/facebook/ads/redexgen/X/J7;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/J7;

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/J7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J7;->A03()I

    move-result v0

    return v0
.end method

.method public final getValue()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/J7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J7;->A04()I

    move-result v0

    return v0
.end method

.method public final getWidth()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5Z;->A00:Lcom/facebook/ads/redexgen/X/J7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J7;->A05()I

    move-result v0

    return v0
.end method
