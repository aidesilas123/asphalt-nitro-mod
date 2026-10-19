###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.x (com.fyber.inneractive.sdk.player.exoplayer2.upstream.x)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;,
        Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$d;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b<",
            "+",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/u;->b(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;I)J
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;",
            ">(TT;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;Landroid/os/Looper;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a(J)V

    return-wide v8
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a(Z)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public c()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->c:Ljava/io/IOException;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    if-eqz v0, :cond_14

    iget v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->c:I

    iget-object v2, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->e:Ljava/io/IOException;

    if-eqz v2, :cond_14

    iget v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->f:I

    if-gt v0, v1, :cond_13

    goto :goto_14

    :cond_13
    throw v2

    :cond_14
    :goto_14
    return-void

    :cond_15
    throw v0
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a(Z)V

    :cond_8
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.a (com.fyber.inneractive.sdk.player.exoplayer2.upstream.x$a)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJLjava/io/IOException;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ",
            "Ljava/io/IOException;",
            ")I"
        }
    .end annotation
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)V"
        }
    .end annotation
.end method

.method public abstract a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJZ)V"
        }
    .end annotation
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.b (com.fyber.inneractive.sdk.player.exoplayer2.upstream.x$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:J

.field public e:Ljava/io/IOException;

.field public f:I

.field public volatile g:Ljava/lang/Thread;

.field public volatile h:Z

.field public final synthetic i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;Landroid/os/Looper;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a<",
            "TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    iput-object p4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;

    iput p5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->c:I

    iput-wide p6, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->d:J

    return-void
.end method


# virtual methods
.method public a(J)V
    .registers 8

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    iput-object p0, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1b

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_23

    :cond_1b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->e:Ljava/io/IOException;

    iget-object p1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_23
    return-void
.end method

.method public a(Z)V
    .registers 10

    iput-boolean p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->e:Ljava/io/IOException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_24

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_24

    :cond_16
    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-interface {v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;->b()V

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->g:Ljava/lang/Thread;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->g:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    :goto_24
    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    iget-wide v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->d:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJZ)V

    :cond_3a
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_16

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->e:Ljava/io/IOException;

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    iget-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->a:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_16
    const/4 v2, 0x4

    if-eq v0, v2, :cond_84

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    iput-object v1, v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->d:J

    sub-long v6, v4, v0

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJZ)V

    return-void

    :cond_36
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7b

    const/4 v9, 0x2

    if-eq v0, v9, :cond_73

    const/4 v10, 0x3

    if-eq v0, v10, :cond_42

    goto :goto_83

    :cond_42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->e:Ljava/io/IOException;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-interface/range {v2 .. v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJLjava/io/IOException;)I

    move-result p1

    if-ne p1, v10, :cond_5a

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->i:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->e:Ljava/io/IOException;

    iput-object v0, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;->c:Ljava/io/IOException;

    goto :goto_83

    :cond_5a
    if-eq p1, v9, :cond_83

    if-ne p1, v1, :cond_60

    const/4 p1, 0x1

    goto :goto_63

    :cond_60
    iget p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->f:I

    add-int/2addr p1, v1

    :goto_63
    iput p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->f:I

    sub-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a(J)V

    goto :goto_83

    :cond_73
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-interface/range {v2 .. v7}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJ)V

    goto :goto_83

    :cond_7b
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->b:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$a;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;JJZ)V

    :cond_83
    :goto_83
    return-void

    :cond_84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .registers 6

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->g:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;->a()Z

    move-result v3

    if-nez v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_30} :catch_99
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_30} :catch_87
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_70
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_30} :catch_59
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_30} :catch_46

    :try_start_30
    iget-object v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-interface {v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;->load()V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_39

    :try_start_35
    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a()V

    goto :goto_3e

    :catchall_39
    move-exception v3

    invoke-static {}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/s;->a()V

    throw v3

    :cond_3e
    :goto_3e
    iget-boolean v3, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    if-nez v3, :cond_a5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_45} :catch_99
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_45} :catch_87
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_70
    .catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_45} :catch_59
    .catch Ljava/lang/Error; {:try_start_35 .. :try_end_45} :catch_46

    goto :goto_a5

    :catch_46
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    if-nez v0, :cond_58

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_58
    throw v1

    :catch_59
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    if-nez v0, :cond_a5

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$d;

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a5

    :catch_70
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    if-nez v0, :cond_a5

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$d;

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a5

    :catch_87
    nop

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    if-nez v0, :cond_a5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_a5

    :catch_99
    move-exception v0

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$b;->h:Z

    if-nez v1, :cond_a5

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_a5
    :goto_a5
    return-void
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.c (com.fyber.inneractive.sdk.player.exoplayer2.upstream.x$c)
.class public interface abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()V
.end method

.method public abstract load()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.upstream.x.d (com.fyber.inneractive.sdk.player.exoplayer2.upstream.x$d)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x$d;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/upstream/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
