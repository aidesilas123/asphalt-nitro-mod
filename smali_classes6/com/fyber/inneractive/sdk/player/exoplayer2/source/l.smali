###### Class com.fyber.inneractive.sdk.player.exoplayer2.source.l (com.fyber.inneractive.sdk.player.exoplayer2.source.l)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/i;

.field public final d:I

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;

.field public final g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

.field public h:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/i;ILandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/i;

    iput p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->d:I

    iput-object p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->e:Landroid/os/Handler;

    iput-object p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-direct {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    return-void
.end method


# virtual methods
.method public a(ILcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;J)Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;
    .registers 15

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->a:Landroid/net/Uri;

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;

    invoke-interface {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;->a()Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    move-result-object v2

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/i;

    invoke-interface {p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/i;->a()[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;

    move-result-object v3

    iget v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->d:I

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->e:Landroid/os/Handler;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->f:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;

    const/4 v9, 0x0

    move-object v0, p1

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;-><init>(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/f;ILandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;Ljava/lang/String;)V

    return-object p1
.end method

.method public a()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/e;ZLcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;)V
    .registers 6

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 p2, 0x0

    invoke-direct {p1, v0, v1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/q;-><init>(JZ)V

    check-cast p3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    iget-object p2, p3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    const/4 p3, 0x7

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;Ljava/lang/Object;)V
    .registers 8

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object p2

    iget-wide v1, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v1, v3

    if-eqz p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    iget-boolean p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->i:Z

    if-eqz p2, :cond_1a

    if-nez v0, :cond_1a

    return-void

    :cond_1a
    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->i:Z

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;)V
    .registers 6

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->j:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;

    invoke-direct {v2, p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/j;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i$d;)V

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v0, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a(Z)V

    :cond_13
    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/i;->G:Z

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

    return-void
.end method
