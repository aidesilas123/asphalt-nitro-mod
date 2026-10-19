###### Class com.facebook.ads.redexgen.X.C0995Eq (com.facebook.ads.redexgen.X.Eq)
.class public final Lcom/facebook/ads/redexgen/X/Eq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ep;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A09:Z

.field public A0A:Z

.field public A0B:[I

.field public A0C:[I

.field public A0D:[I

.field public A0E:[J

.field public A0F:[J

.field public A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A0H:[Lcom/facebook/ads/redexgen/X/Bl;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AXNp2q2PpEahITHLh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xQEpoEpGgC2eanPxpW7aZYHhG9yms2rq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3j6TAof"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "i8THqobYCLYXuqAnsJGXzeKTVyKCbEfb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ggw9auSRsP4B09On0iatBfmdaYF861sQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "10OfiNQ0BRtOqE95ZnYZi1qGxLNxD1sx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iFzh6NRuyiOyJdjYiPViJ2RhowiTnlD0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JJpEbWQFS8eJaCoVgzG8fIG9CRI9jzfg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Eq;->A0I:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0D:[I

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/Bl;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0H:[Lcom/facebook/ads/redexgen/X/Bl;

    new-array v0, v1, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A06:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A07:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A09:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0A:Z

    return-void
.end method

.method private A00(I)I
    .registers 4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    add-int/2addr v1, p1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    if-ge v1, v0, :cond_8

    :goto_7
    return v1

    :cond_8
    sub-int/2addr v1, v0

    goto :goto_7
.end method

.method private A01(IIJZ)I
    .registers 11

    const/4 v4, -0x1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p2, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p3

    if-gtz v0, :cond_21

    if-eqz p5, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    :cond_16
    move v4, v3

    :cond_17
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    if-ne p1, v0, :cond_1e

    const/4 p1, 0x0

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_21
    return v4
.end method

.method private A02(I)J
    .registers 6

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A06:J

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A06:J

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    if-lt v0, v1, :cond_22

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    :cond_22
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    if-gez v0, :cond_2c

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    :cond_2c
    if-nez v2, :cond_41

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    if-nez v0, :cond_3f

    :goto_32
    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    :cond_3f
    move v1, v0

    goto :goto_32

    :cond_41
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    aget-wide v0, v1, v0

    return-wide v0
.end method

.method private A03(I)J
    .registers 9

    if-nez p1, :cond_5

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_5
    const-wide/high16 v1, -0x8000000000000000L

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A00(I)I

    move-result v0

    const/4 v5, 0x0

    :goto_e
    if-ge v5, p1, :cond_20

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    aget-wide v3, v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    aget v3, v3, v0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_21

    :cond_20
    return-wide v1

    :cond_21
    add-int/lit8 v0, v0, -0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4a

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/Eq;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v3, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/16 v0, 0x18

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_4d

    sget-object v4, Lcom/facebook/ads/redexgen/X/Eq;->A0I:[Ljava/lang/String;

    const-string v3, "ogUh654"

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const-string v3, "2cGjVSXzBWiJJ6u2fOJU9D000d34dgjx"

    const/4 v0, 0x5

    aput-object v3, v4, v0

    add-int/lit8 v0, v6, -0x1

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final declared-synchronized A04(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A07:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A07:J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A05()I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A06()I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final declared-synchronized A07()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    sub-int v0, v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08(JZZ)I
    .registers 15

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A00(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->A0I()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    aget-wide v1, v0, v5

    move-wide v7, p1

    cmp-long v0, v7, v1

    if-ltz v0, :cond_1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A07:J

    cmp-long v0, v7, v1

    if-lez v0, :cond_21

    if-nez p4, :cond_21
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_37

    :cond_1f
    monitor-exit p0

    return v3

    :cond_21
    :try_start_21
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    sub-int/2addr v6, v0

    move-object v4, p0

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Eq;->A01(IIJZ)I

    move-result v1

    if-ne v1, v3, :cond_30
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_37

    monitor-exit p0

    return v3

    :cond_30
    :try_start_30
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_37

    monitor-exit p0

    return v1

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;ZZLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Ep;)I
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->A0I()Z

    move-result v0

    const/4 v4, -0x5

    const/4 v1, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_20

    if-eqz p4, :cond_12

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A02(I)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_65

    monitor-exit p0

    return v3

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A08:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    if-eqz v0, :cond_1e

    if-nez p3, :cond_1a

    if-eq v0, p5, :cond_1e

    :cond_1a
    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_65

    monitor-exit p0

    return v4

    :cond_1e
    monitor-exit p0

    return v1

    :cond_20
    :try_start_20
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A00(I)I

    move-result v2

    if-nez p3, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget-object v0, v0, v2

    if-eq v0, p5, :cond_36

    :cond_2e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_65

    monitor-exit p0

    return v4

    :cond_36
    :try_start_36
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/XE;->A0B()Z

    move-result v0

    if-eqz v0, :cond_3e
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_65

    monitor-exit p0

    return v1

    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    aget-wide v0, v0, v2

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Ap;->A02(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    aget v0, v0, v2

    iput v0, p6, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    aget-wide v0, v0, v2

    iput-wide v0, p6, Lcom/facebook/ads/redexgen/X/Ep;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0H:[Lcom/facebook/ads/redexgen/X/Bl;

    aget-object v0, v0, v2

    iput-object v0, p6, Lcom/facebook/ads/redexgen/X/Ep;->A02:Lcom/facebook/ads/redexgen/X/Bl;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_65

    monitor-exit p0

    return v3

    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0A()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    if-nez v0, :cond_9
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    :try_start_9
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A02(I)J

    move-result-wide v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0B()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A07:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0C(I)J
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eq;->A06()I

    move-result v2

    sub-int/2addr v2, p1

    const/4 v4, 0x1

    if-ltz v2, :cond_2b

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    sub-int/2addr v1, v0

    if-gt v2, v1, :cond_2b

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A06:J

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    if-nez v0, :cond_2d

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_10

    :cond_2d
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A00(I)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final declared-synchronized A0D(JZZ)J
    .registers 16

    monitor-enter p0

    :try_start_1
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    const-wide/16 v3, -0x1

    if-eqz v7, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    aget-wide v1, v0, v6

    move-wide v8, p1

    cmp-long v0, v8, v1

    if-gez v0, :cond_13

    goto :goto_2c

    :cond_13
    if-eqz p4, :cond_1b

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    if-eq v0, v7, :cond_1b

    add-int/lit8 v7, v0, 0x1

    :cond_1b
    move-object v5, p0

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Eq;->A01(IIJZ)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_26
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2e

    monitor-exit p0

    return-wide v3

    :cond_26
    :try_start_26
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Eq;->A02(I)J

    move-result-wide v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2e

    monitor-exit p0

    return-wide v0

    :cond_2c
    :goto_2c
    monitor-exit p0

    return-wide v3

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0E()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A09:Z

    if-eqz v0, :cond_6

    goto :goto_9

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A08:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    goto :goto_a

    :goto_9
    const/4 v0, 0x0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :goto_a
    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0F()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0G(JIJILcom/facebook/ads/redexgen/X/Bl;)V
    .registers 21

    move-object v4, p0

    monitor-enter p0

    :try_start_2
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0A:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_f

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_d
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_c9

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iput-boolean v5, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0A:Z

    :cond_f
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A09:Z

    const/4 v6, 0x1

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Eq;->A04(J)V

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A00(I)I

    move-result v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    aput-wide p1, v0, v3

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    aput-wide p4, v0, v3

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    aput p6, v1, v3

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    aput p3, v1, v3

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0H:[Lcom/facebook/ads/redexgen/X/Bl;

    aput-object p7, v1, v3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A08:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    aput-object v1, v2, v3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0D:[I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A05:I

    aput v1, v2, v3

    iget v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    add-int/2addr v1, v6

    iput v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iget v11, v4, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    if-ne v1, v11, :cond_c7

    add-int/lit16 v10, v11, 0x3e8

    new-array v9, v10, [I

    new-array v8, v10, [J

    new-array v7, v10, [J

    new-array v6, v10, [I

    new-array v3, v10, [I

    new-array v2, v10, [Lcom/facebook/ads/redexgen/X/Bl;

    new-array v1, v10, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    sub-int/2addr v11, v12

    invoke-static {v0, v12, v8, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    invoke-static {v12, v0, v7, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    invoke-static {v12, v0, v6, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    invoke-static {v12, v0, v3, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0H:[Lcom/facebook/ads/redexgen/X/Bl;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    invoke-static {v12, v0, v2, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    invoke-static {v12, v0, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0D:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    invoke-static {v12, v0, v9, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v12, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    invoke-static {v0, v5, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    invoke-static {v0, v5, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    invoke-static {v0, v5, v6, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    invoke-static {v0, v5, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0H:[Lcom/facebook/ads/redexgen/X/Bl;

    invoke-static {v0, v5, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-static {v0, v5, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0D:[I

    invoke-static {v0, v5, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0E:[J

    iput-object v7, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0B:[I

    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0C:[I

    iput-object v2, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0H:[Lcom/facebook/ads/redexgen/X/Bl;

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0G:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-object v9, v4, Lcom/facebook/ads/redexgen/X/Eq;->A0D:[I

    iput v5, v4, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iput v10, v4, Lcom/facebook/ads/redexgen/X/Eq;->A01:I
    :try_end_c7
    .catchall {:try_start_d .. :try_end_c7} :catchall_c9

    :cond_c7
    monitor-exit p0

    return-void

    :catchall_c9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0H(Z)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0A:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A06:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A07:J

    if-eqz p1, :cond_19

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A08:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A09:Z

    :cond_19
    return-void
.end method

.method public final declared-synchronized A0I()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    if-eq v1, v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0J(J)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_10

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A06:J

    cmp-long v0, p1, v1

    if-lez v0, :cond_e

    const/4 v4, 0x1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_4a

    :cond_e
    monitor-exit p0

    return v4

    :cond_10
    :try_start_10
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    cmp-long v0, v1, p1

    if-ltz v0, :cond_22
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_4a

    monitor-exit p0

    return v4

    :cond_22
    :try_start_22
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Eq;->A02:I

    sub-int v0, v4, v5

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A00(I)I

    move-result v3

    :cond_2a
    :goto_2a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A03:I

    if-le v4, v0, :cond_42

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A0F:[J

    aget-wide v1, v0, v3

    cmp-long v0, v1, p1

    if-ltz v0, :cond_42

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v0, -0x1

    if-ne v3, v0, :cond_2a

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A01:I

    add-int/lit8 v3, v0, -0x1

    goto :goto_2a

    :cond_42
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A00:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0C(I)J
    :try_end_48
    .catchall {:try_start_22 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return v5

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z
    .registers 5

    monitor-enter p0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    :try_start_5
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Eq;->A09:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_19

    monitor-exit p0

    return v1

    :cond_9
    :try_start_9
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A09:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Eq;->A08:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_19

    monitor-exit p0

    return v1

    :cond_15
    :try_start_15
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Eq;->A08:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_19

    monitor-exit p0

    return v2

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
