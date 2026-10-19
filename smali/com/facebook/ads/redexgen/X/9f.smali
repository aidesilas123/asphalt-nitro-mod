###### Class com.facebook.ads.redexgen.X.C08749f (com.facebook.ads.redexgen.X.9f)
.class public final Lcom/facebook/ads/redexgen/X/9f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/9f;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:Z

.field public final A03:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9f;-><init>(F)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Lcom/facebook/ads/redexgen/X/9f;

    return-void
.end method

.method public constructor <init>(F)V
    .registers 4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/9f;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_26

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    cmpl-float v0, p2, v1

    if-lez v0, :cond_24

    :goto_11
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    iput p2, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:F

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:Z

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:I

    return-void

    :cond_24
    const/4 v2, 0x0

    goto :goto_11

    :cond_26
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final A00(J)J
    .registers 5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x1

    if-ne p0, p1, :cond_4

    return v3

    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    :cond_11
    return v2

    :cond_12
    check-cast p1, Lcom/facebook/ads/redexgen/X/9f;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2b

    iget v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/9f;->A00:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2b

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/9f;->A02:Z

    if-ne v1, v0, :cond_2b

    :goto_2a
    return v3

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2a
.end method

.method public final hashCode()I
    .registers 3

    const/16 v0, 0x11

    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:Z

    add-int/2addr v1, v0

    return v1
.end method
