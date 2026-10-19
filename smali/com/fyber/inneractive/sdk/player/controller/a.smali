###### Class com.fyber.inneractive.sdk.player.controller.a (com.fyber.inneractive.sdk.player.controller.a)
.class public Lcom/fyber/inneractive/sdk/player/controller/a;
.super Lcom/fyber/inneractive/sdk/player/controller/g;
.source "SourceFile"


# instance fields
.field public p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

.field public q:I

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/g;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->q:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->r:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->s:I

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->t:Z

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "Creating IAAndroidMediaPlayerController"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/g;->i:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/controller/g$b;

    invoke-direct {v1, p0, p1}, Lcom/fyber/inneractive/sdk/player/controller/g$b;-><init>(Lcom/fyber/inneractive/sdk/player/controller/g;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/a;->d()I

    move-result v0

    if-lt p1, v0, :cond_16

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Completed:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    goto :goto_54

    :cond_16
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3a

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "%sVideo is stuck! Progress doesn\'t change"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->s:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->s:I

    iget v1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->r:I

    if-ne v0, v1, :cond_54

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Buffering:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->t:Z

    goto :goto_54

    :cond_3a
    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->t:Z

    if-ne v0, v2, :cond_54

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "%sVideo progress was stuck! but now it goes forward. Remove buffering state"

    invoke-static {v2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/fyber/inneractive/sdk/player/enums/b;->Playing:Lcom/fyber/inneractive/sdk/player/enums/b;

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->s:I

    iput-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->t:Z

    :cond_54
    :goto_54
    iput p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->q:I

    return-void
.end method

.method public a(IZ)V
    .registers 9

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_56

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "%s seek to called with = %d mPlayAfterSeek = %s"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->b()Z

    move-result v1

    if-nez v1, :cond_35

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "%s seek called when player is not ready!"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_56

    :cond_35
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->b:Lcom/fyber/inneractive/sdk/player/enums/b;

    sget-object v2, Lcom/fyber/inneractive/sdk/player/enums/b;->Seeking:Lcom/fyber/inneractive/sdk/player/enums/b;

    if-ne v1, v2, :cond_49

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "%s seek called when player is already seeking!"

    invoke-static {p2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_56

    :cond_49
    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->a(Lcom/fyber/inneractive/sdk/player/enums/b;)V

    iput-boolean p2, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c:Z

    new-instance p2, Lcom/fyber/inneractive/sdk/player/mediaplayer/c;

    invoke-direct {p2, v0, p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/c;-><init>(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;I)V

    invoke-virtual {v0, p2}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->a(Ljava/lang/Runnable;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->setSurface(Landroid/view/Surface;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 3

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-virtual {p2, p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-nez p1, :cond_17

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "MediaPlayerController: creating media player"

    invoke-static {v0, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g;->i:Landroid/os/Handler;

    invoke-direct {p1, v0, p0, v1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;-><init>(Landroid/content/Context;Lcom/fyber/inneractive/sdk/player/mediaplayer/a$k;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    :cond_17
    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->reset()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    :cond_f
    invoke-super {p0}, Lcom/fyber/inneractive/sdk/player/controller/g;->b()V

    return-void
.end method

.method public b(Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->c(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/a;->i()Z

    move-result v1

    if-ne v1, v0, :cond_f

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g;->n:Z

    if-ne v1, v0, :cond_f

    return-void

    :cond_f
    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/g;->n:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->e()V

    :cond_18
    return-void
.end method

.method public c()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->r:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/player/controller/g;->c(Z)V

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/player/controller/a;->i()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/controller/g;->n:Z

    if-ne v1, v2, :cond_10

    return-void

    :cond_10
    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/controller/g;->n:Z

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz p1, :cond_41

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const-string v3, "%s unmute"

    invoke-static {v3, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p1, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->d:Z

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->b()Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/d;

    invoke-direct {v0, p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/d;-><init>(Lcom/fyber/inneractive/sdk/player/mediaplayer/a;)V

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->a(Ljava/lang/Runnable;)V

    goto :goto_41

    :cond_34
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->c()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "%s unmute called when player is not ready!"

    invoke-static {p1, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "media"

    return-object v0
.end method

.method public g()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->t:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->s:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->d:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->pause()V

    :cond_7
    return-void
.end method

.method public l()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/controller/a;->p:Lcom/fyber/inneractive/sdk/player/mediaplayer/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/mediaplayer/a;->start()V

    :cond_7
    return-void
.end method
