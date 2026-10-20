###### Class com.applovin.exoplayer2.e.t (com.applovin.exoplayer2.e.t)
.class public final Lcom/applovin/exoplayer2/e/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/v;


# instance fields
.field private final fH:J

.field private final iM:Z

.field private final tU:[J

.field private final uP:[J


# direct methods
.method public constructor <init>([J[JJ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    array-length v0, p2

    if-lez v0, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/t;->iM:Z

    if-eqz v1, :cond_32

    aget-wide v4, p2, v3

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_32

    add-int/lit8 v1, v0, 0x1

    new-array v4, v1, [J

    iput-object v4, p0, Lcom/applovin/exoplayer2/e/t;->uP:[J

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/t;->tU:[J

    invoke-static {p1, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_36

    :cond_32
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/t;->uP:[J

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/t;->tU:[J

    :goto_36
    iput-wide p3, p0, Lcom/applovin/exoplayer2/e/t;->fH:J

    return-void
.end method


# virtual methods
.method public ai(J)Lcom/applovin/exoplayer2/e/v$a;
    .registers 11

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/t;->iM:Z

    if-nez v0, :cond_c

    new-instance p1, Lcom/applovin/exoplayer2/e/v$a;

    sget-object p2, Lcom/applovin/exoplayer2/e/w;->uT:Lcom/applovin/exoplayer2/e/w;

    invoke-direct {p1, p2}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object p1

    :cond_c
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/t;->tU:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/applovin/exoplayer2/l/ai;->a([JJZZ)I

    move-result v0

    new-instance v2, Lcom/applovin/exoplayer2/e/w;

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/t;->tU:[J

    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/t;->uP:[J

    aget-wide v6, v3, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    iget-wide v3, v2, Lcom/applovin/exoplayer2/e/w;->rJ:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_41

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/t;->tU:[J

    array-length p1, p1

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_2d

    goto :goto_41

    :cond_2d
    new-instance p1, Lcom/applovin/exoplayer2/e/w;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/t;->tU:[J

    add-int/2addr v0, v1

    aget-wide v3, p2, v0

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/t;->uP:[J

    aget-wide v0, p2, v0

    invoke-direct {p1, v3, v4, v0, v1}, Lcom/applovin/exoplayer2/e/w;-><init>(JJ)V

    new-instance p2, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p2, v2, p1}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;Lcom/applovin/exoplayer2/e/w;)V

    return-object p2

    :cond_41
    :goto_41
    new-instance p1, Lcom/applovin/exoplayer2/e/v$a;

    invoke-direct {p1, v2}, Lcom/applovin/exoplayer2/e/v$a;-><init>(Lcom/applovin/exoplayer2/e/w;)V

    return-object p1
.end method

.method public dd()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/exoplayer2/e/t;->fH:J

    return-wide v0
.end method

.method public hU()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/t;->iM:Z

    return v0
.end method
