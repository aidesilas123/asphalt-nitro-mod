###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.z (com.fyber.inneractive.sdk.player.exoplayer2.upstream.z)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a([BII)I

    move-result p3

    if-lez p3, :cond_d

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;

    invoke-interface {v0, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;->a([BII)V

    :cond_d
    return p3
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J

    move-result-wide v12

    iget-wide v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_25

    cmp-long v0, v12, v2

    if-eqz v0, :cond_25

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iget-object v2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->a:Landroid/net/Uri;

    iget-wide v4, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->c:J

    iget-wide v6, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->d:J

    iget-object v10, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->f:Ljava/lang/String;

    iget v11, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;->g:I

    const/4 v3, 0x0

    move-object v1, v0

    move-wide v8, v12

    invoke-direct/range {v1 .. v11}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object p1, v0

    :cond_25
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;

    invoke-interface {v0, p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)V

    return-wide v12
.end method

.method public a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;->close()V

    return-void

    :catchall_b
    move-exception v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/z;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/f;->close()V

    throw v0
.end method
