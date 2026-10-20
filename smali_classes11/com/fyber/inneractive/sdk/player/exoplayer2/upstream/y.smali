###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.y (com.fyber.inneractive.sdk.player.exoplayer2.upstream.y)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;"
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile e:Z

.field public volatile f:J


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Landroid/net/Uri;ILcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;-><init>(Landroid/net/Uri;I)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->e:Z

    return v0
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->e:Z

    return-void
.end method

.method public final load()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)V

    :try_start_9
    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;->d:Z

    if-nez v1, :cond_17

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;

    invoke-interface {v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/j;)J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;->d:Z

    :cond_17
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    invoke-interface {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;->a()Landroid/net/Uri;

    move-result-object v2

    check-cast v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/d;

    invoke-virtual {v1, v2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/d;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->d:Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2f

    iget-wide v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;->f:J

    iput-wide v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->f:J

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_2f
    move-exception v1

    iget-wide v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/i;->f:J

    iput-wide v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;->f:J

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->a(Ljava/io/Closeable;)V

    throw v1
.end method
