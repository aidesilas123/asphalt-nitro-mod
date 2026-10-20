###### Class com.fyber.inneractive.sdk.player.controller.u (com.fyber.inneractive.sdk.player.controller.u)
.class public Lcom/fyber/inneractive/sdk/player/controller/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/l$a;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/e$a;
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/source/f;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/fyber/inneractive/sdk/player/controller/d;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/controller/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->b:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/d;)V
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/controller/d;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/audio/c$e;

    if-eqz v3, :cond_22

    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->b:Z

    if-nez v3, :cond_20

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->H:Z

    if-eqz v3, :cond_22

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->B:Z

    if-eqz v3, :cond_22

    :cond_20
    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    const/4 v4, 0x0

    if-eqz v3, :cond_47

    iput-boolean v2, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->v:Z

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

    if-eqz p1, :cond_33

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->b()V

    iput-object v4, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

    :cond_33
    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/d;->a(Z)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->G:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/d;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->i:Landroid/os/Handler;

    new-instance v2, Lcom/fyber/inneractive/sdk/player/controller/h;

    invoke-direct {v2, v0, v1}, Lcom/fyber/inneractive/sdk/player/controller/h;-><init>(Lcom/fyber/inneractive/sdk/player/controller/g;Z)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_ba

    :cond_47
    if-eqz v0, :cond_61

    iget-boolean v3, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->B:Z

    if-eqz v3, :cond_61

    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->b:Z

    if-nez v3, :cond_61

    sget-object v3, Lcom/fyber/inneractive/sdk/player/cache/n;->f:Lcom/fyber/inneractive/sdk/player/cache/n;

    invoke-virtual {v3}, Lcom/fyber/inneractive/sdk/player/cache/n;->a()Z

    move-result v3

    if-eqz v3, :cond_61

    iget v3, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->I:I

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->p:I

    if-ge v3, v5, :cond_61

    const/4 v3, 0x1

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    :goto_62
    if-eqz v3, :cond_87

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

    if-eqz p1, :cond_6f

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->b()V

    iput-object v4, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

    :cond_6f
    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/controller/d;->a(Z)V

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->G:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/controller/d;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/n;)V

    iget p1, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->I:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/fyber/inneractive/sdk/player/controller/d;->I:I

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/controller/g;->i:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/controller/h;

    invoke-direct {v1, v0, v2}, Lcom/fyber/inneractive/sdk/player/controller/h;-><init>(Lcom/fyber/inneractive/sdk/player/controller/g;Z)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_ba

    :cond_87
    new-instance v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$l;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_92

    const-string v3, "empty"

    goto :goto_9a

    :cond_92
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_9a
    invoke-direct {v0, p1, v3}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a$l;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/u;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    aput-object v0, p1, v2

    const-string v1, "%sonPlayerError called with %s for sendErrorState"

    invoke-static {v1, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->a:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/util/q;->a(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fyber/inneractive/sdk/player/controller/d;

    if-eqz p1, :cond_ba

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Ljava/lang/Exception;)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/m;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public a(ZI)V
    .registers 10

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/u;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "%sonPlayerStateChanged called with pwr = %s state = %d"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/player/controller/d;

    if-eqz v1, :cond_7e

    iget-object v2, v1, Lcom/fyber/inneractive/sdk/player/controller/d;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/e;

    if-eqz v2, :cond_7e

    iget-boolean v6, v1, Lcom/fyber/inneractive/sdk/player/controller/d;->A:Z

    if-eqz v6, :cond_30

    goto :goto_7e

    :cond_30
    if-ne p2, v0, :cond_68

    if-nez p1, :cond_62

    iget-object p1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object p2, Lcom/fyber/inneractive/sdk/player/enums/b;->Preparing:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne p1, p2, :cond_7e

    check-cast v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;

    iget-object p1, v2, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    if-eqz p1, :cond_5a

    iget p2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->a:I

    if-lez p2, :cond_5a

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;->b:[Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    aget-object p1, p1, v3

    if-nez p1, :cond_4c

    const/4 p1, 0x0

    goto :goto_50

    :cond_4c
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->c()Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object p1

    :goto_50
    if-eqz p1, :cond_5a

    iget p2, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->j:I

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->k:I

    iput p2, v1, Lcom/fyber/inneractive/sdk/player/controller/d;->t:I

    iput p1, v1, Lcom/fyber/inneractive/sdk/player/controller/d;->u:I

    :cond_5a
    iput-boolean v4, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->b:Z

    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/b;->Prepared:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    goto :goto_7e

    :cond_62
    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/b;->Playing:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    goto :goto_7e

    :cond_68
    if-ne p2, v5, :cond_76

    iget-object p1, v1, Lcom/fyber/inneractive/sdk/player/controller/g;->e:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object p2, Lcom/fyber/inneractive/sdk/player/enums/b;->Playing:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne p1, p2, :cond_7e

    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/b;->Buffering:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    goto :goto_7e

    :cond_76
    const/4 p1, 0x4

    if-ne p2, p1, :cond_7e

    sget-object p1, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {v1, p1}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/controller/d;

    if-nez v0, :cond_11

    const-class v0, Lcom/fyber/inneractive/sdk/player/controller/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_11
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public onDroppedFrames(IJ)V
    .registers 4

    return-void
.end method

.method public onRenderedFirstFrame(Landroid/view/Surface;)V
    .registers 2

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .registers 6

    return-void
.end method

.method public onVideoDisabled(Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;)V
    .registers 2

    return-void
.end method

.method public onVideoEnabled(Lcom/fyber/inneractive/sdk/player/exoplayer2/decoder/DecoderCounters;)V
    .registers 2

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)V
    .registers 2

    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .registers 5

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/controller/u;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/fyber/inneractive/sdk/player/controller/d;

    if-eqz p3, :cond_e

    iput p1, p3, Lcom/fyber/inneractive/sdk/player/controller/d;->t:I

    iput p2, p3, Lcom/fyber/inneractive/sdk/player/controller/d;->u:I

    :cond_e
    return-void
.end method
