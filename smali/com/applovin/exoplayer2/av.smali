###### Class com.applovin.exoplayer2.av (com.applovin.exoplayer2.av)
.class public final Lcom/applovin/exoplayer2/av;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final hj:Lcom/applovin/exoplayer2/av;

.field public static final hk:Lcom/applovin/exoplayer2/av;

.field public static final hl:Lcom/applovin/exoplayer2/av;

.field public static final hm:Lcom/applovin/exoplayer2/av;

.field public static final hn:Lcom/applovin/exoplayer2/av;


# instance fields
.field public final ho:J

.field public final hp:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/applovin/exoplayer2/av;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/applovin/exoplayer2/av;-><init>(JJ)V

    sput-object v0, Lcom/applovin/exoplayer2/av;->hj:Lcom/applovin/exoplayer2/av;

    new-instance v3, Lcom/applovin/exoplayer2/av;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Lcom/applovin/exoplayer2/av;-><init>(JJ)V

    sput-object v3, Lcom/applovin/exoplayer2/av;->hk:Lcom/applovin/exoplayer2/av;

    new-instance v3, Lcom/applovin/exoplayer2/av;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/applovin/exoplayer2/av;-><init>(JJ)V

    sput-object v3, Lcom/applovin/exoplayer2/av;->hl:Lcom/applovin/exoplayer2/av;

    new-instance v3, Lcom/applovin/exoplayer2/av;

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/applovin/exoplayer2/av;-><init>(JJ)V

    sput-object v3, Lcom/applovin/exoplayer2/av;->hm:Lcom/applovin/exoplayer2/av;

    sput-object v0, Lcom/applovin/exoplayer2/av;->hn:Lcom/applovin/exoplayer2/av;

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/av;->ho:J

    iput-wide p3, p0, Lcom/applovin/exoplayer2/av;->hp:J

    return-void
.end method


# virtual methods
.method public a(JJJ)J
    .registers 15

    iget-wide v2, p0, Lcom/applovin/exoplayer2/av;->ho:J

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_f

    iget-wide v4, p0, Lcom/applovin/exoplayer2/av;->hp:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_f

    return-wide p1

    :cond_f
    const-wide/high16 v4, -0x8000000000000000L

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/applovin/exoplayer2/l/ai;->d(JJJ)J

    move-result-wide v0

    iget-wide v4, p0, Lcom/applovin/exoplayer2/av;->hp:J

    const-wide v6, 0x7fffffffffffffffL

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lcom/applovin/exoplayer2/l/ai;->c(JJJ)J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, p3

    if-gtz v6, :cond_2e

    cmp-long v6, p3, v2

    if-gtz v6, :cond_2e

    const/4 v6, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v6, 0x0

    :goto_2f
    cmp-long v7, v0, p5

    if-gtz v7, :cond_38

    cmp-long v7, p5, v2

    if-gtz v7, :cond_38

    goto :goto_39

    :cond_38
    const/4 v4, 0x0

    :goto_39
    if-eqz v6, :cond_4f

    if-eqz v4, :cond_4f

    sub-long v0, p3, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long p1, p5, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-gtz v2, :cond_4e

    return-wide p3

    :cond_4e
    return-wide p5

    :cond_4f
    if-eqz v6, :cond_52

    return-wide p3

    :cond_52
    if-eqz v4, :cond_55

    return-wide p5

    :cond_55
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    const-class v2, Lcom/applovin/exoplayer2/av;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_25

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/av;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/av;->ho:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/av;->ho:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_23

    iget-wide v2, p0, Lcom/applovin/exoplayer2/av;->hp:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/av;->hp:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/applovin/exoplayer2/av;->ho:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/applovin/exoplayer2/av;->hp:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
