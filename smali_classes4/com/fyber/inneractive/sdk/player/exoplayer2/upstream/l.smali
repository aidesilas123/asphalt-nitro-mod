###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.l (com.fyber.inneractive.sdk.player.exoplayer2.upstream.l)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/d;)V
    .registers 3

    const/4 p1, 0x0

    const/16 p2, 0x7d0

    invoke-direct {p0, p1, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;-><init>(Landroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/d;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/d;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;

    invoke-direct {p1, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;-><init>(I)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->g:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->c:J

    sub-long v4, v2, v4

    long-to-int p1, v4

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->e:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->e:J

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->f:J

    iget-wide v8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->d:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->f:J

    if-lez p1, :cond_107

    const-wide/16 v4, 0x1f40

    mul-long v4, v4, v8

    div-long/2addr v4, v6

    long-to-float p1, v4

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;

    long-to-double v5, v8

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->d:I

    if-eq v6, v1, :cond_40

    iget-object v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    sget-object v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->h:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->d:I

    :cond_40
    iget v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->g:I

    if-lez v6, :cond_4c

    iget-object v7, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    sub-int/2addr v6, v1

    iput v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->g:I

    aget-object v6, v7, v6

    goto :goto_51

    :cond_4c
    new-instance v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    invoke-direct {v6}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;-><init>()V

    :goto_51
    iget v7, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->e:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->e:I

    iput v7, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->a:I

    iput v5, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->b:I

    iput p1, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->c:F

    iget-object p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    add-int/2addr p1, v5

    iput p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    :cond_67
    :goto_67
    iget p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    iget v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->a:I

    if-le p1, v5, :cond_9b

    sub-int/2addr p1, v5

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iget v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->b:I

    if-gt v6, p1, :cond_92

    iget p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    sub-int/2addr p1, v6

    iput p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    iget-object p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->g:I

    const/4 v6, 0x5

    if-ge p1, v6, :cond_67

    iget-object v6, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->c:[Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    add-int/lit8 v7, p1, 0x1

    iput v7, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->g:I

    aput-object v5, v6, p1

    goto :goto_67

    :cond_92
    sub-int/2addr v6, p1

    iput v6, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->b:I

    iget v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    sub-int/2addr v5, p1

    iput v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    goto :goto_67

    :cond_9b
    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->e:J

    const-wide/16 v6, 0x7d0

    cmp-long p1, v4, v6

    if-gez p1, :cond_ac

    iget-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->f:J

    const-wide/32 v6, 0x80000

    cmp-long p1, v4, v6

    if-ltz p1, :cond_107

    :cond_ac
    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;

    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->d:I

    if-eqz v5, :cond_bd

    iget-object v5, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    sget-object v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->i:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->d:I

    :cond_bd
    iget v5, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->f:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    const/4 v5, 0x0

    :goto_c3
    iget-object v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_e1

    iget-object v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iget v7, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->b:I

    add-int/2addr v5, v7

    int-to-float v7, v5

    cmpl-float v7, v7, v4

    if-ltz v7, :cond_de

    iget p1, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->c:F

    goto :goto_fb

    :cond_de
    add-int/lit8 v0, v0, 0x1

    goto :goto_c3

    :cond_e1
    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ec

    const/high16 p1, 0x7fc00000    # Float.NaN

    goto :goto_fb

    :cond_ec
    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/p$c;->c:F

    :goto_fb
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_104

    const-wide/16 v4, -0x1

    goto :goto_105

    :cond_104
    float-to-long v4, p1

    :goto_105
    iput-wide v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->g:J

    :cond_107
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->b:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->b:I

    if-lez p1, :cond_110

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->c:J

    :cond_110
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->d:J
    :try_end_114
    .catchall {:try_start_1 .. :try_end_114} :catchall_116

    monitor-exit p0

    return-void

    :catchall_116
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->b:I

    if-nez p1, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->c:J

    :cond_b
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/l;->b:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method
