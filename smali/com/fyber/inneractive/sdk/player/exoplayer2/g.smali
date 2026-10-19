###### Class com.fyber.inneractive.sdk.player.exoplayer2.g (com.fyber.inneractive.sdk.player.exoplayer2.g)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/e;


# instance fields
.field public final a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;

.field public final c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

.field public final d:Landroid/os/Handler;

.field public final e:Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

.field public final h:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

.field public p:Ljava/lang/Object;

.field public q:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

.field public r:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

.field public s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

.field public t:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

.field public u:I

.field public v:J


# direct methods
.method public constructor <init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/n;Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/c;)V
    .registers 15
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init ExoPlayerLib/2.4.4 ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->a:[Lcom/fyber/inneractive/sdk/player/exoplayer2/n;

    invoke-static {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;

    iput-boolean v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->j:Z

    iput v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->k:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    array-length v1, p1

    new-array v1, v1, [Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;-><init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->c:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;-><init>()V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    new-instance v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-direct {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;-><init>()V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    sget-object v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->q:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/s;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->r:Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/f;

    sget-object v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/m;->d:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->s:Lcom/fyber/inneractive/sdk/player/exoplayer2/m;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_7b

    :cond_77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_7b
    new-instance v8, Lcom/fyber/inneractive/sdk/player/exoplayer2/f;

    invoke-direct {v8, p0, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/f;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/g;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->d:Landroid/os/Handler;

    new-instance v9, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    const-wide/16 v0, 0x0

    invoke-direct {v9, v2, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;-><init>(IJ)V

    iput-object v9, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    iget-boolean v7, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->j:Z

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;-><init>([Lcom/fyber/inneractive/sdk/player/exoplayer2/n;Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/g;Lcom/fyber/inneractive/sdk/player/exoplayer2/c;ZLandroid/os/Handler;Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;Lcom/fyber/inneractive/sdk/player/exoplayer2/e;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->l:I

    if-lez v0, :cond_d

    goto :goto_1d

    :cond_d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->t:Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;

    iget v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$b;->a:I

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v0

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->c:I

    return v0

    :cond_1d
    :goto_1d
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->u:I

    return v0
.end method

.method public a(IJ)V
    .registers 14

    if-ltz p1, :cond_ba

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->b()I

    move-result v0

    if-ge p1, v0, :cond_ba

    :cond_12
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->l:I

    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->u:I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->c()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_28

    goto :goto_6f

    :cond_28
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$c;ZJ)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    cmp-long v0, p2, v1

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    iget-wide v3, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->e:J

    goto :goto_3d

    :cond_3c
    move-wide v3, p2

    :goto_3d
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    iget v5, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->c:I

    iget-wide v6, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->g:J

    invoke-static {v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->a(J)J

    move-result-wide v3

    add-long/2addr v6, v3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    const/4 v4, 0x0

    invoke-virtual {v0, v5, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v0

    iget-wide v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    :goto_53
    cmp-long v0, v8, v1

    if-eqz v0, :cond_6f

    cmp-long v0, v6, v8

    if-ltz v0, :cond_6f

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->g:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$c;->d:I

    if-ge v5, v0, :cond_6f

    sub-long/2addr v6, v8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    add-int/lit8 v5, v5, 0x1

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->h:Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    invoke-virtual {v0, v5, v3, v4}, Lcom/fyber/inneractive/sdk/player/exoplayer2/p;->a(ILcom/fyber/inneractive/sdk/player/exoplayer2/p$b;Z)Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;

    move-result-object v0

    iget-wide v8, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/p$b;->d:J

    goto :goto_53

    :cond_6f
    :goto_6f
    const/4 v0, 0x3

    cmp-long v3, p2, v1

    if-nez v3, :cond_8b

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->v:J

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    iget-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;

    invoke-direct {v3, p3, p1, v1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJ)V

    invoke-virtual {p2, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_b9

    :cond_8b
    iput-wide p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->v:J

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-static {p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/b;->a(J)J

    move-result-wide p2

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    new-instance v3, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;

    invoke-direct {v3, v2, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/h$c;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJ)V

    invoke-virtual {v1, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$a;

    invoke-interface {p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$a;->a()V

    goto :goto_a9

    :cond_b9
    :goto_b9
    return-void

    :cond_ba
    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/k;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->o:Lcom/fyber/inneractive/sdk/player/exoplayer2/p;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/k;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/p;IJ)V

    throw v0
.end method

.method public a(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->j:Z

    if-eq v0, p1, :cond_2b

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->j:Z

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$a;

    iget v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->k:I

    invoke-interface {v1, p1, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/e$a;->a(ZI)V

    goto :goto_19

    :cond_2b
    return-void
.end method

.method public varargs a([Lcom/fyber/inneractive/sdk/player/exoplayer2/e$c;)V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->r:Z

    if-eqz v1, :cond_e

    const-string p1, "ExoPlayerImplInternal"

    const-string v0, "Ignoring messages sent after release."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_e
    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->w:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->w:I

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_1f
    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->e:Lcom/fyber/inneractive/sdk/player/exoplayer2/h;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->r:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    if-eqz v1, :cond_9

    monitor-exit v0

    goto :goto_25

    :cond_9
    :try_start_9
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->f:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_f
    iget-boolean v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->r:Z
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_2c

    if-nez v1, :cond_1f

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_2c

    goto :goto_f

    :catch_17
    :try_start_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    :cond_1f
    iget-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/h;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_2c

    monitor-exit v0

    :goto_25
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/g;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
