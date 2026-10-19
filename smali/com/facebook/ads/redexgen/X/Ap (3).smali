###### Class com.facebook.ads.redexgen.X.AbstractC0909Ap (com.facebook.ads.redexgen.X.Ap)
.class public abstract Lcom/facebook/ads/redexgen/X/Ap;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    return-void
.end method

.method public final A01(I)V
    .registers 4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    return-void
.end method

.method public final A02(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    return-void
.end method

.method public final A03()Z
    .registers 2

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A06(I)Z

    move-result v0

    return v0
.end method

.method public final A04()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A06(I)Z

    move-result v0

    return v0
.end method

.method public final A05()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A06(I)Z

    move-result v0

    return v0
.end method

.method public final A06(I)Z
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public A07()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ap;->A00:I

    return-void
.end method
