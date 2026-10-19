###### Class com.facebook.ads.redexgen.X.C1074Ht (com.facebook.ads.redexgen.X.Ht)
.class public final Lcom/facebook/ads/redexgen/X/Ht;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:J

.field public A01:J

.field public volatile A02:J


# direct methods
.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ht;->A02(J)V

    return-void
.end method

.method public static A00(J)J
    .registers 6

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p0

    const-wide/32 v0, 0x15f90

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A01(J)J
    .registers 6

    const-wide/32 v2, 0x15f90

    mul-long/2addr v2, p0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method private final declared-synchronized A02(J)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A03()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:J

    return-wide v0
.end method

.method public final A04()J
    .registers 8

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Ht;->A01:J

    add-long/2addr v5, v0

    :cond_10
    :goto_10
    return-wide v5

    :cond_11
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_10

    move-wide v5, v3

    goto :goto_10
.end method

.method public final A05()J
    .registers 6

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-nez v0, :cond_e

    const-wide/16 v1, 0x0

    :goto_d
    return-wide v1

    :cond_e
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_1a

    goto :goto_d

    :cond_1a
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A01:J

    goto :goto_d
.end method

.method public final A06(J)J
    .registers 8

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    if-nez v0, :cond_a

    return-wide v3

    :cond_a
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_16

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    :goto_12
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A01:J

    add-long/2addr v0, p1

    return-wide v0

    :cond_16
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ht;->A00:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_24

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Ht;->A01:J

    :cond_24
    monitor-enter p0

    :try_start_25
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_12
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public final A07(J)J
    .registers 14

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    if-nez v0, :cond_a

    return-wide v3

    :cond_a
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_3b

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ht;->A01(J)J

    move-result-wide v9

    const-wide v2, 0x100000000L

    add-long/2addr v2, v9

    const-wide v7, 0x200000000L

    div-long/2addr v2, v7

    const-wide/16 v0, 0x1

    sub-long v5, v2, v0

    mul-long/2addr v5, v7

    add-long/2addr v5, p1

    mul-long/2addr v7, v2

    add-long/2addr v7, p1

    sub-long v0, v5, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v0, v7, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gez v0, :cond_44

    :goto_3a
    move-wide p1, v5

    :cond_3b
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/Ht;->A00(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ht;->A06(J)J

    move-result-wide v0

    return-wide v0

    :cond_44
    move-wide v5, v7

    goto :goto_3a
.end method

.method public final A08()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Ht;->A02:J

    return-void
.end method
