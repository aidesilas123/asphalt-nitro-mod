###### Class com.facebook.ads.redexgen.X.X6 (com.facebook.ads.redexgen.X.X6)
.class public final Lcom/facebook/ads/redexgen/X/X6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BL;


# instance fields
.field public final A00:Landroid/media/MediaCrypto;

.field public final A01:Z


# virtual methods
.method public final A00()Landroid/media/MediaCrypto;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X6;->A00:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public final A01(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/X6;->A01:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X6;->A00:Landroid/media/MediaCrypto;

    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
