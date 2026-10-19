###### Class com.facebook.ads.redexgen.X.XG (com.facebook.ads.redexgen.X.XG)
.class public final Lcom/facebook/ads/redexgen/X/XG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AJ;


# static fields
.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/redexgen/X/Ao;

.field public A09:Ljava/nio/ByteBuffer;

.field public A0A:Ljava/nio/ByteBuffer;

.field public A0B:Ljava/nio/ShortBuffer;

.field public A0C:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pWxjFsNDaGkCJOJIXf3nBpXapJRDFAns"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UkLwcPvzhTn0p2HYHg4j6N15VQJC2l4J"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YJRY7F74jhCJ9GxMtbKfeDIDzZlQRHvd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "sMHZoQnzt9jO1PxekMXjLs1IjEAfMk8v"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KagcOA94TBJJAh6RgnCdHwb09FdTTp2T"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "s5OQD0o5JvIPNjQnPDHHdNmWUeQWTVLd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XG;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A02:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0B:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0A:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A04:I

    return-void
.end method


# virtual methods
.method public final A00(F)F
    .registers 4

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(FFF)F

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    :cond_14
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XG;->flush()V

    return v1
.end method

.method public final A01(F)F
    .registers 4

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(FFF)F

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A01:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_14

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A01:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    :cond_14
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XG;->flush()V

    return v1
.end method

.method public final A02(J)J
    .registers 15

    move-object v5, p0

    iget-wide v10, v5, Lcom/facebook/ads/redexgen/X/XG;->A07:J

    const-wide/16 v1, 0x400

    cmp-long v0, v10, v1

    move-wide v6, p1

    if-ltz v0, :cond_3d

    iget v4, v5, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    iget v3, v5, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/XG;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x51

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/XG;->A0D:[Ljava/lang/String;

    const-string v1, "wo8T89BmhgCv6RPfRPDSoWflpmmFSmBw"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_32

    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/XG;->A06:J

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Hx;->A0F(JJJ)J

    move-result-wide v0

    :goto_31
    return-wide v0

    :cond_32
    iget-wide v8, v5, Lcom/facebook/ads/redexgen/X/XG;->A06:J

    int-to-long v0, v4

    mul-long/2addr v8, v0

    int-to-long v0, v3

    mul-long/2addr v10, v0

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/Hx;->A0F(JJJ)J

    move-result-wide v0

    goto :goto_31

    :cond_3d
    iget v0, v5, Lcom/facebook/ads/redexgen/X/XG;->A01:F

    float-to-double v2, v0

    long-to-double v0, v6

    mul-double/2addr v2, v0

    double-to-long v0, v2

    return-wide v0
.end method

.method public final A4N(III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AI;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_22

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A04:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_9

    move v1, p1

    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    if-ne v0, p1, :cond_17

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A02:I

    if-ne v0, p2, :cond_17

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    return v0

    :cond_17
    iput p1, p0, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/XG;->A02:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    const/4 v0, 0x1

    return v0

    :cond_22
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AI;-><init>(III)V

    throw v0
.end method

.method public final A7O()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A0A:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0A:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public final A7P()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A02:I

    return v0
.end method

.method public final A7Q()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final A7R()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    return v0
.end method

.method public final A8l()Z
    .registers 4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_28

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A01:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_26

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_26

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    if-eq v1, v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public final A8q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0C:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0H()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final AE6()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0J()V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A0C:Z

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final AE7(Ljava/nio/ByteBuffer;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XG;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x68

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_5

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/XG;->A0D:[Ljava/lang/String;

    const-string v1, "CgSP7s2gOF1CWMy2qVo8ASfS0wZJy2y3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_47

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XG;->A06:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XG;->A06:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ao;->A0L(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0H()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A02:I

    mul-int/2addr v1, v0

    mul-int/lit8 v4, v1, 0x2

    if-lez v4, :cond_86

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v4, :cond_87

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0B:Ljava/nio/ShortBuffer;

    :goto_70
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0K(Ljava/nio/ShortBuffer;)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XG;->A07:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XG;->A07:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A09:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0A:Ljava/nio/ByteBuffer;

    :cond_86
    return-void

    :cond_87
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0B:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_70
.end method

.method public final flush()V
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XG;->A8l()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    if-nez v0, :cond_29

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ao;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/XG;->A02:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/XG;->A01:F

    iget v4, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:F

    iget v5, p0, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ao;-><init>(IIFFI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    :cond_1b
    :goto_1b
    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0A:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A06:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A07:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0C:Z

    return-void

    :cond_29
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ao;->A0I()V

    goto :goto_1b
.end method

.method public final reset()V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A00:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A02:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A05:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A03:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A09:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0B:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0A:Ljava/nio/ByteBuffer;

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XG;->A04:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A08:Lcom/facebook/ads/redexgen/X/Ao;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A06:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A07:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XG;->A0C:Z

    return-void
.end method
