###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.k (com.fyber.inneractive.sdk.player.exoplayer2.upstream.k)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:[B

.field public final d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

.field public e:I

.field public f:I

.field public g:I

.field public h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;


# direct methods
.method public constructor <init>(ZII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    if-ltz p3, :cond_11

    const/4 v2, 0x1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-static {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->a:Z

    iput p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->b:I

    iput p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I

    add-int/lit8 p1, p3, 0x64

    new-array p1, p1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    if-lez p3, :cond_3b

    mul-int p1, p3, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->c:[B

    :goto_29
    if-ge v0, p3, :cond_3e

    mul-int p1, v0, p2

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->c:[B

    invoke-direct {v3, v4, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;-><init>([BI)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_3b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->c:[B

    :cond_3e
    new-array p1, v1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->b:I

    return v0
.end method

.method public declared-synchronized a([Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I

    array-length v1, p1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    array-length v3, v2

    if-lt v1, v3, :cond_1b

    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    array-length v3, p1

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    :cond_1b
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_41

    aget-object v3, p1, v2

    iget-object v4, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;->a:[B

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->c:[B

    if-eq v4, v5, :cond_30

    array-length v4, v4

    iget v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->b:I

    if-ne v4, v5, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 v4, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v4, 0x1

    :goto_31
    invoke-static {v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    iget v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_41
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->f:I

    array-length p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->f:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_4c

    monitor-exit p0

    return-void

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->e:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->b:I

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(II)I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->f:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_56

    if-lt v0, v2, :cond_17

    monitor-exit p0

    return-void

    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->c:[B

    if-eqz v3, :cond_4a

    add-int/lit8 v2, v2, -0x1

    :goto_1d
    if-gt v1, v2, :cond_40

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    aget-object v4, v3, v1

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;->a:[B

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->c:[B

    if-ne v5, v6, :cond_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    aget-object v5, v3, v2

    iget-object v7, v5, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;->a:[B

    if-eq v7, v6, :cond_35

    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    :cond_35
    add-int/lit8 v6, v1, 0x1

    aput-object v5, v3, v1

    add-int/lit8 v1, v2, -0x1

    aput-object v4, v3, v2

    move v2, v1

    move v1, v6

    goto :goto_1d

    :cond_40
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I
    :try_end_46
    .catchall {:try_start_17 .. :try_end_46} :catchall_56

    if-lt v0, v1, :cond_4a

    monitor-exit p0

    return-void

    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->h:[Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/a;

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/k;->g:I
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_56

    monitor-exit p0

    return-void

    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method
