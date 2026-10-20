###### Class com.facebook.ads.redexgen.X.X2 (com.facebook.ads.redexgen.X.X2)
.class public final Lcom/facebook/ads/redexgen/X/X2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bm;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 2

    return-void
.end method

.method public final AEq(Lcom/facebook/ads/redexgen/X/Bb;IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lcom/facebook/ads/redexgen/X/Bb;->AFb(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_10

    if-eqz p3, :cond_a

    return v0

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_10
    return v1
.end method

.method public final AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 3

    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    return-void
.end method

.method public final AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V
    .registers 7

    return-void
.end method
