###### Class com.applovin.exoplayer2.e.o (com.applovin.exoplayer2.e.o)
.class public final Lcom/applovin/exoplayer2/e/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/v;


# instance fields
.field private final uA:J

.field private final uz:Lcom/applovin/exoplayer2/e/p;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/p;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/o;->uz:Lcom/applovin/exoplayer2/e/p;

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/o;->uA:J

    return-void
.end method

.method private p(JJ)Lcom/applovin/exoplayer2/e/w;
    .registers 7

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/o;->uz:Lcom/applovin/exoplayer2/e/p;

    iget v0, v0, Lcom/applovin/exoplayer2/e/p;->dM:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/o;->uA:J

    add-long/2addr v0, p3

    new-instance p3, Lcom/applovin/exoplayer2/e/w;

    invoke-direct {p3, p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    return-object p3
.end method


# virtual methods
.method public ai(J)Lcom/applovin/exoplayer2/e/v$a;
    .registers 12

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/o;->uz:Lcom/applovin/exoplayer2/e/p;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/p;->uJ:Lcom/applovin/exoplayer2/e/p$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/o;->uz:Lcom/applovin/exoplayer2/e/p;

    iget-object v1, v0, Lcom/applovin/exoplayer2/e/p;->uJ:Lcom/applovin/exoplayer2/e/p$a;

    iget-object v2, v1, Lcom/applovin/exoplayer2/e/p$a;->uK:[J

    iget-object v1, v1, Lcom/applovin/exoplayer2/e/p$a;->uL:[J

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/p;->an(J)J

    move-result-wide v3

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/applovin/exoplayer2/l/ai;->a([JJZZ)I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_20

    move-wide v7, v4

    goto :goto_22

    :cond_20
    aget-wide v7, v2, v3

    :goto_22
    if-ne v3, v6, :cond_25

    goto :goto_27

    :cond_25
    aget-wide v4, v1, v3

    :goto_27
    invoke-direct {p0, v7, v8, v4, v5}, Lcom/applovin/exoplayer2/e/o;->p(JJ)Lcom/applovin/exoplayer2/e/w;

    move-result-object v4

    iget-wide v5, v4, Lcom/applovin/exoplayer2/e/w;->rJ:J

    cmp-long v7, v5, p1

    if-eqz v7, :cond_45

    array-length p1, v2

    sub-int/2addr p1, v0

    if-ne v3, p1, :cond_36

    goto :goto_45

    :cond_36
    add-int/2addr v3, v0

    aget-wide p1, v2, v3

    aget-wide v0, v1, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/applovin/exoplayer2/e/o;->p(JJ)Lcom/applovin/exoplayer2/e/w;

    move-result-object p1

    new-instance p2, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p2, v4, p1}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;Lcom/applovin/exoplayer2/e/w;)V

    return-object p2

    :cond_45
    :goto_45
    new-instance p1, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p1, v4}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object p1
.end method

.method public dd()J
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/o;->uz:Lcom/applovin/exoplayer2/e/p;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/p;->dd()J

    move-result-wide v0

    return-wide v0
.end method

.method public hU()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
