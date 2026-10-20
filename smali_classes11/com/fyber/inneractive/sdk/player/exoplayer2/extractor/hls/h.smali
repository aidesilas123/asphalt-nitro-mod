###### Class com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.h (com.fyber.inneractive.sdk.player.exoplayer2.extractor.hls.h)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e$e;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;

.field public d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

.field public e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;ILandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;

    invoke-direct {p1, p4, p5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;-><init>(Landroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;ILandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f;)V
    .registers 12

    new-instance v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/b;

    invoke-direct {v2, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;-><init>(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;ILandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f;)V

    return-void
.end method


# virtual methods
.method public a(ILcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;J)Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;
    .registers 13

    if-nez p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Z)V

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/g;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;

    const/4 v3, 0x3

    move-object v0, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/g;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;ILcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/b;J)V

    return-object p1
.end method

.method public a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->c()V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->l:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/a$a;

    if-eqz v1, :cond_1e

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e$a;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->c()V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e$a;->j:Ljava/io/IOException;

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    throw v0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/e;ZLcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;)V
    .registers 11

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    new-instance p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->a:Landroid/net/Uri;

    iget-object v6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;

    const/4 v4, 0x3

    move-object v0, p1

    move-object v1, p2

    move-object v2, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;-><init>(Landroid/net/Uri;Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/d;Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f$a;ILcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e$e;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

    new-instance p3, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;

    check-cast v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/b;

    iget-object v0, v6, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g$a;->a()Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;

    move-result-object v0

    iget-object v1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/d;

    const/4 v2, 0x4

    invoke-direct {p3, v0, p2, v2, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/g;Landroid/net/Uri;ILcom/fyber/inneractive/sdk/player/exoplayer2/upstream/y$a;)V

    iget-object p2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    const/4 v0, 0x3

    invoke-virtual {p2, p3, p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;I)J

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/m;)V
    .registers 10

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/g;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/g;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/g;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/g;->n:[Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;

    if-eqz p1, :cond_41

    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v0, :cond_41

    aget-object v4, p1, v3

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_21
    if-ge v6, v5, :cond_31

    iget-object v7, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;->j:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;

    invoke-virtual {v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/d;->b()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_31
    iget-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v5}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->d()V

    iget-object v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;->m:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/j;->s:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_41
    return-void
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->d()V

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v2}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e$a;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e$a;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->d()V

    goto :goto_14

    :cond_26
    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->f:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;->e:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/playlist/e;

    :cond_32
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/extractor/hls/h;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n$a;

    return-void
.end method
