###### Class com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.c (com.fyber.inneractive.sdk.player.exoplayer2.source.chunk.c)
.class public abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;
.super Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;
.source "SourceFile"


# instance fields
.field public i:[B

.field public j:I

.field public volatile k:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;ILcom/fyber/inneractive/sdk/player/exoplayer2/i;ILjava/lang/Object;[B)V
    .registers 19

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;ILcom/fyber/inneractive/sdk/player/exoplayer2/i;ILjava/lang/Object;JJ)V

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->i:[B

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->k:Z

    return v0
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->k:Z

    return-void
.end method

.method public c()J
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->j:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final load()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    invoke-interface {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J

    const/4 v0, 0x0

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->j:I

    :cond_a
    :goto_a
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3c

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->k:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->i:[B

    const/16 v2, 0x4000

    if-nez v0, :cond_1c

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->i:[B

    goto :goto_2a

    :cond_1c
    array-length v3, v0

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->j:I

    add-int/2addr v4, v2

    if-ge v3, v4, :cond_2a

    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->i:[B

    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->i:[B

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->j:I

    invoke-interface {v0, v3, v4, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a([BII)I

    move-result v0

    if-eq v0, v1, :cond_a

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->j:I

    goto :goto_a

    :cond_3c
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->k:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->i:[B

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/c;->j:I

    move-object v2, p0

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/c$a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/c$a;->m:[B
    :try_end_4d
    .catchall {:try_start_0 .. :try_end_4d} :catchall_53

    :cond_4d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;)V

    return-void

    :catchall_53
    move-exception v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/chunk/a;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;)V

    throw v0
.end method
