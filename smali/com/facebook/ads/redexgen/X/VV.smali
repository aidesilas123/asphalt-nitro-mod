###### Class com.facebook.ads.redexgen.X.VV (com.facebook.ads.redexgen.X.VV)
.class public final Lcom/facebook/ads/redexgen/X/VV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FW;


# instance fields
.field public final A00:[J

.field public final A01:[Lcom/facebook/ads/redexgen/X/FV;


# direct methods
.method public constructor <init>([Lcom/facebook/ads/redexgen/X/FV;[J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VV;->A01:[Lcom/facebook/ads/redexgen/X/FV;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:[J

    return-void
.end method


# virtual methods
.method public final A6T(J)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:[J

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0B([JJZZ)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A01:[Lcom/facebook/ads/redexgen/X/FV;

    aget-object v0, v0, v1

    if-nez v0, :cond_16

    :cond_11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A6t(I)J
    .registers 4

    const/4 v1, 0x1

    if-ltz p1, :cond_16

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:[J

    array-length v0, v0

    if-ge p1, v0, :cond_14

    :goto_c
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:[J

    aget-wide v0, v0, p1

    return-wide v0

    :cond_14
    const/4 v1, 0x0

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final A6u()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:[J

    array-length v0, v0

    return v0
.end method

.method public final A7L(J)I
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:[J

    const/4 v0, 0x0

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0A([JJZZ)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VV;->A00:[J

    array-length v0, v0

    if-ge v1, v0, :cond_d

    :goto_c
    return v1

    :cond_d
    const/4 v1, -0x1

    goto :goto_c
.end method
