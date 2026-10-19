###### Class com.fyber.inneractive.sdk.player.exoplayer2.c (com.fyber.inneractive.sdk.player.exoplayer2.c)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public f:I

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;IIJJ)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;IIJJLcom/fyber/inneractive/sdk/player/exoplayer2/util/n;)V

    return-void
.end method

.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;IIJJLcom/fyber/inneractive/sdk/player/exoplayer2/util/n;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;

    int-to-long p1, p2

    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->b:J

    int-to-long p1, p3

    mul-long p1, p1, v0

    iput-wide p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->c:J

    mul-long p4, p4, v0

    iput-wide p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->d:J

    mul-long p6, p6, v0

    iput-wide p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->e:J

    return-void
.end method


# virtual methods
.method public a()Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;

    return-object v0
.end method

.method public final a(Z)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->f:I

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->g:Z

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;

    monitor-enter p1

    :try_start_a
    iget-boolean v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->a:Z

    if-eqz v1, :cond_22

    monitor-enter p1
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_24

    :try_start_f
    iget v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->e:I

    if-lez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->e:I

    if-eqz v1, :cond_1d

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->b()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1f

    :cond_1d
    :try_start_1d
    monitor-exit p1

    goto :goto_22

    :catchall_1f
    move-exception v0

    monitor-exit p1

    throw v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_24

    :cond_22
    :goto_22
    monitor-exit p1

    goto :goto_27

    :catchall_24
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_27
    :goto_27
    return-void
.end method

.method public a(J)Z
    .registers 9

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->c:J

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, p1, v0

    if-lez v5, :cond_b

    const/4 p1, 0x0

    goto :goto_14

    :cond_b
    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->b:J

    cmp-long v5, p1, v0

    if-gez v5, :cond_13

    const/4 p1, 0x2

    goto :goto_14

    :cond_13
    const/4 p1, 0x1

    :goto_14
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;

    monitor-enter p2

    :try_start_17
    iget v0, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->f:I

    iget v1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->b:I
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_33

    mul-int v0, v0, v1

    monitor-exit p2

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->f:I

    if-lt v0, p2, :cond_24

    const/4 p2, 0x1

    goto :goto_25

    :cond_24
    const/4 p2, 0x0

    :goto_25
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->g:Z

    if-eq p1, v2, :cond_2f

    if-ne p1, v4, :cond_30

    if-eqz v0, :cond_30

    if-nez p2, :cond_30

    :cond_2f
    const/4 v3, 0x1

    :cond_30
    iput-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/c;->g:Z

    return v3

    :catchall_33
    move-exception p1

    monitor-exit p2

    throw p1
.end method
