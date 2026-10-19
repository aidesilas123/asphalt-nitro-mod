###### Class com.facebook.ads.redexgen.X.C08739e (com.facebook.ads.redexgen.X.9e)
.class public final Lcom/facebook/ads/redexgen/X/9e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:Lcom/facebook/ads/redexgen/X/9z;

.field public final A04:Lcom/facebook/ads/redexgen/X/EW;

.field public final A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

.field public final A06:Lcom/facebook/ads/redexgen/X/GS;

.field public final A07:Ljava/lang/Object;

.field public final A08:Z

.field public volatile A09:J

.field public volatile A0A:J


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9z;JLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V
    .registers 18

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/EW;-><init>(I)V

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/9e;->A09:J

    iput p8, p0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    iput-boolean p9, p0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;)V
    .registers 4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A0A:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9e;->A09:J

    iput-wide v0, p1, Lcom/facebook/ads/redexgen/X/9e;->A09:J

    return-void
.end method


# virtual methods
.method public final A01(I)Lcom/facebook/ads/redexgen/X/9e;
    .registers 15

    new-instance v1, Lcom/facebook/ads/redexgen/X/9e;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/EW;->A00(I)Lcom/facebook/ads/redexgen/X/EW;

    move-result-object v4

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    iget v9, p0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct/range {v1 .. v12}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/9e;->A00(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;)V

    return-object v1
.end method

.method public final A02(I)Lcom/facebook/ads/redexgen/X/9e;
    .registers 14

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    move v8, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9e;->A00(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;)V

    return-object v0
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9e;
    .registers 15

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9e;->A00(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;)V

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/EW;JJ)Lcom/facebook/ads/redexgen/X/9e;
    .registers 20

    move-wide/from16 v8, p4

    move-object v1, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/9e;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    move-object v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/EW;->A01()Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_10
    iget v10, v1, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    iget-boolean v11, v1, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    iget-object v12, v1, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v13}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    return-object v2

    :cond_1e
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_10
.end method

.method public final A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)Lcom/facebook/ads/redexgen/X/9e;
    .registers 15

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    iget-boolean v9, p0, Lcom/facebook/ads/redexgen/X/9e;->A08:Z

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9e;->A00(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;)V

    return-object v0
.end method

.method public final A06(Z)Lcom/facebook/ads/redexgen/X/9e;
    .registers 14

    new-instance v0, Lcom/facebook/ads/redexgen/X/9e;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9e;->A03:Lcom/facebook/ads/redexgen/X/9z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9e;->A07:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9e;->A04:Lcom/facebook/ads/redexgen/X/EW;

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9e;->A02:J

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/9e;->A01:J

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9e;->A00:I

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/9e;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/9e;->A06:Lcom/facebook/ads/redexgen/X/GS;

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lcom/facebook/ads/redexgen/X/9e;-><init>(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/EW;JJIZLcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GS;)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/9e;->A00(Lcom/facebook/ads/redexgen/X/9e;Lcom/facebook/ads/redexgen/X/9e;)V

    return-object v0
.end method
