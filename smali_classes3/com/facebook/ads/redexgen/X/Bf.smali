###### Class com.facebook.ads.redexgen.X.Bf (com.facebook.ads.redexgen.X.Bf)
.class public final Lcom/facebook/ads/redexgen/X/Bf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0xa

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bf;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bf;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/16 v6, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4, v6}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_c} :catch_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bf;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bf;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Vu;->A03:I

    if-eq v1, v0, :cond_22

    :catch_1b
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    return-object v7

    :cond_22
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bf;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bf;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0D()I

    move-result v3

    add-int/lit8 v2, v3, 0xa

    if-nez v7, :cond_49

    new-array v1, v2, [B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bf;->A00:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {p1, v1, v6, v3}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vu;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/Vu;-><init>(Lcom/facebook/ads/redexgen/X/DQ;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vu;->A0O([BI)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v7

    :goto_47
    add-int/2addr v5, v2

    goto :goto_2

    :cond_49
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    goto :goto_47
.end method
