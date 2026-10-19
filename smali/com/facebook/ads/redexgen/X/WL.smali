###### Class com.facebook.ads.redexgen.X.WL (com.facebook.ads.redexgen.X.WL)
.class public final Lcom/facebook/ads/redexgen/X/WL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cg;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:J

.field public A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A07:Lcom/facebook/ads/redexgen/X/Bm;

.field public A08:Ljava/lang/String;

.field public final A09:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0A:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A02:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WL;->A0A:Ljava/lang/String;

    return-void
.end method

.method private A00()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-nez v0, :cond_18

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WL;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WL;->A0A:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Aj;->A03([BLjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/WL;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    :cond_18
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Aj;->A01([B)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A01:I

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Aj;->A02([B)I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v0, 0xf4240

    mul-long/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    long-to-int v0, v2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A04:J

    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Hh;)Z
    .registers 7

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    const/4 v3, 0x0

    if-lez v0, :cond_55

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    shl-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Aj;->A07(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x2

    aput-byte v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v1, v0

    const/4 v0, 0x3

    aput-byte v1, v2, v0

    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    return v4

    :cond_55
    return v3
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    if-ne v0, p3, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public final A4O(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 11

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lez v0, :cond_65

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A02:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_66

    goto :goto_0

    :pswitch_d
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/WL;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    sub-int/2addr v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, p1, v2}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/WL;->A01:I

    if-ne v0, v6, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/WL;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/WL;->A05:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/WL;->A05:J

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WL;->A04:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/WL;->A05:J

    iput v1, p0, Lcom/facebook/ads/redexgen/X/WL;->A02:I

    goto :goto_0

    :pswitch_3c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/16 v2, 0x12

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/WL;->A02(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WL;->A00()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WL;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A09:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A02:I

    goto :goto_0

    :pswitch_5b
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WL;->A01(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A02:I

    goto :goto_0

    :cond_65
    return-void

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_3c
        :pswitch_d
    .end packed-switch
.end method

.method public final A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 5

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A05()V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A08:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A07:Lcom/facebook/ads/redexgen/X/Bm;

    return-void
.end method

.method public final ADi()V
    .registers 1

    return-void
.end method

.method public final ADj(JZ)V
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WL;->A05:J

    return-void
.end method

.method public final AEv()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A03:I

    return-void
.end method
