###### Class com.facebook.ads.redexgen.X.C0978Dz (com.facebook.ads.redexgen.X.Dz)
.class public final Lcom/facebook/ads/redexgen/X/Dz;
.super Lcom/facebook/ads/redexgen/X/YA;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/0V;)V
    .registers 5

    if-nez p3, :cond_b

    new-instance v0, Lcom/facebook/ads/redexgen/X/FJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/FJ;-><init>()V

    :goto_7
    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/YA;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/7U;Lcom/facebook/ads/redexgen/X/0S;)V

    return-void

    :cond_b
    invoke-interface {p3}, Lcom/facebook/ads/redexgen/X/0V;->A9x()Lcom/facebook/ads/redexgen/X/FS;

    move-result-object v0

    goto :goto_7
.end method


# virtual methods
.method public final bridge synthetic A0E()Lcom/facebook/ads/redexgen/X/0S;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dz;->A0J()Lcom/facebook/ads/redexgen/X/b3;

    move-result-object v0

    return-object v0
.end method

.method public final A0J()Lcom/facebook/ads/redexgen/X/b3;
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/b3;

    return-object v0
.end method
