###### Class com.facebook.ads.redexgen.X.BC (com.facebook.ads.redexgen.X.BC)
.class public final Lcom/facebook/ads/redexgen/X/BC;
.super Lcom/facebook/ads/redexgen/X/VO;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VP;
    }
.end annotation


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:J

.field public final A04:F

.field public final A05:F

.field public final A06:J

.field public final A07:J

.field public final A08:J

.field public final A09:J

.field public final A0A:Lcom/facebook/ads/redexgen/X/GX;

.field public final A0B:Lcom/facebook/ads/redexgen/X/HL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[ILcom/facebook/ads/redexgen/X/GX;JJJFFJLcom/facebook/ads/redexgen/X/HL;)V
    .registers 18

    move-object v2, p0

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/VO;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)V

    iput-object p3, v2, Lcom/facebook/ads/redexgen/X/BC;->A0A:Lcom/facebook/ads/redexgen/X/GX;

    const-wide/16 v0, 0x3e8

    mul-long/2addr p4, v0

    iput-wide p4, v2, Lcom/facebook/ads/redexgen/X/BC;->A07:J

    mul-long/2addr p6, v0

    iput-wide p6, v2, Lcom/facebook/ads/redexgen/X/BC;->A06:J

    mul-long/2addr v0, p8

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BC;->A08:J

    iput p10, v2, Lcom/facebook/ads/redexgen/X/BC;->A04:F

    iput p11, v2, Lcom/facebook/ads/redexgen/X/BC;->A05:F

    iput-wide p12, v2, Lcom/facebook/ads/redexgen/X/BC;->A09:J

    move-object/from16 v0, p14

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/BC;->A0B:Lcom/facebook/ads/redexgen/X/HL;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Lcom/facebook/ads/redexgen/X/BC;->A00:F

    const/4 v0, 0x1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/BC;->A01:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, v2, Lcom/facebook/ads/redexgen/X/BC;->A03:J

    const-wide/high16 v0, -0x8000000000000000L

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/BC;->A00(J)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/BC;->A02:I

    return-void
.end method

.method private A00(J)I
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BC;->A0A:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->A62()J

    move-result-wide v2

    long-to-float v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BC;->A04:F

    mul-float/2addr v1, v0

    float-to-long v3, v1

    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VO;->A03:I

    if-ge v5, v0, :cond_35

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, p1, v1

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v5, p1, p2}, Lcom/facebook/ads/redexgen/X/VO;->A00(IJ)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_1d
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/VO;->A6z(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BC;->A00:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v1, v3

    if-gtz v0, :cond_31

    return v5

    :cond_31
    move v6, v5

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_35
    return v6
.end method


# virtual methods
.method public final A5P()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BC;->A03:J

    return-void
.end method

.method public final A7n()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/BC;->A02:I

    return v0
.end method

.method public final ACP(F)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/BC;->A00:F

    return-void
.end method
