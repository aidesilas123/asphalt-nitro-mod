###### Class com.applovin.exoplayer2.e.f.c (com.applovin.exoplayer2.e.f.c)
.class final Lcom/applovin/exoplayer2/e/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/f/e;


# instance fields
.field private final fH:J

.field private final yR:[J

.field private final yS:[J


# direct methods
.method private constructor <init>([J[JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/f/c;->yR:[J

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/f/c;->yS:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_11

    goto :goto_1a

    :cond_11
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide p1, p2, p1

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p3

    :goto_1a
    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/f/c;->fH:J

    return-void
.end method

.method private static a(J[J[J)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[J[J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p2, p0, p1, v0, v0}, Lcom/applovin/exoplayer2/l/ai;->a([JJZZ)I

    move-result v1

    aget-wide v2, p2, v1

    aget-wide v4, p3, v1

    add-int/2addr v1, v0

    array-length v0, p2

    if-ne v1, v0, :cond_1a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1a
    aget-wide v6, p2, v1

    aget-wide p2, p3, v1

    cmp-long v0, v6, v2

    if-nez v0, :cond_25

    const-wide/16 v0, 0x0

    goto :goto_2b

    :cond_25
    long-to-double v0, p0

    long-to-double v8, v2

    sub-double/2addr v0, v8

    sub-long/2addr v6, v2

    long-to-double v2, v6

    div-double/2addr v0, v2

    :goto_2b
    sub-long/2addr p2, v4

    long-to-double p2, p2

    mul-double v0, v0, p2

    double-to-long p2, v0

    add-long/2addr p2, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLcom/applovin/exoplayer2/g/e/j;J)Lcom/applovin/exoplayer2/e/f/c;
    .registers 14

    iget-object v0, p2, Lcom/applovin/exoplayer2/g/e/j;->JY:[I

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    new-array v2, v1, [J

    new-array v1, v1, [J

    const/4 v3, 0x0

    aput-wide p0, v2, v3

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    const/4 v3, 0x1

    :goto_11
    if-gt v3, v0, :cond_2e

    iget v6, p2, Lcom/applovin/exoplayer2/g/e/j;->JW:I

    iget-object v7, p2, Lcom/applovin/exoplayer2/g/e/j;->JY:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr p0, v6

    iget v6, p2, Lcom/applovin/exoplayer2/g/e/j;->JX:I

    iget-object v7, p2, Lcom/applovin/exoplayer2/g/e/j;->JZ:[I

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide p0, v2, v3

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2e
    new-instance p0, Lcom/applovin/exoplayer2/e/f/c;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/applovin/exoplayer2/e/f/c;-><init>([J[JJ)V

    return-object p0
.end method


# virtual methods
.method public ai(J)Lcom/applovin/exoplayer2/e/v$a;
    .registers 9

    iget-wide v4, p0, Lcom/applovin/exoplayer2/e/f/c;->fH:J

    const-wide/16 v2, 0x0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/l/ai;->b(JJJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->f(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/f/c;->yS:[J

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/f/c;->yR:[J

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/f/c;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide v0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    new-instance v2, Lcom/applovin/exoplayer2/e/v$a;

    new-instance v3, Lcom/applovin/exoplayer2/e/w;

    invoke-direct {v3, v0, v1, p1, p2}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    invoke-direct {v2, v3}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object v2
.end method

.method public aq(J)J
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/f/c;->yR:[J

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/f/c;->yS:[J

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/f/c;->a(J[J[J)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/applovin/exoplayer2/h;->g(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public dd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/f/c;->fH:J

    return-wide v0
.end method

.method public hU()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public iF()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method
