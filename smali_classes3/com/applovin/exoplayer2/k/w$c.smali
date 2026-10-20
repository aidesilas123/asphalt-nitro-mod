###### Class com.applovin.exoplayer2.k.w.c (com.applovin.exoplayer2.k.w$c)
.class final Lcom/applovin/exoplayer2/k/w$c;
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
    value = Lcom/applovin/exoplayer2/k/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/applovin/exoplayer2/k/w$d;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final abd:I

.field private final abe:Lcom/applovin/exoplayer2/k/w$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private abf:Lcom/applovin/exoplayer2/k/w$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/k/w$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private abg:Ljava/io/IOException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private abh:Ljava/lang/Thread;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private abi:Z

.field final synthetic abj:Lcom/applovin/exoplayer2/k/w;

.field private volatile cw:Z

.field private final sC:J

.field private sE:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/k/w;Landroid/os/Looper;Lcom/applovin/exoplayer2/k/w$d;Lcom/applovin/exoplayer2/k/w$a;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/applovin/exoplayer2/k/w$a<",
            "TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    iput-object p4, p0, Lcom/applovin/exoplayer2/k/w$c;->abf:Lcom/applovin/exoplayer2/k/w$a;

    iput p5, p0, Lcom/applovin/exoplayer2/k/w$c;->abd:I

    iput-wide p6, p0, Lcom/applovin/exoplayer2/k/w$c;->sC:J

    return-void
.end method

.method private finish()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w;Lcom/applovin/exoplayer2/k/w$c;)Lcom/applovin/exoplayer2/k/w$c;

    return-void
.end method

.method private oD()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abg:Ljava/io/IOException;

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    invoke-static {v0}, Lcom/applovin/exoplayer2/k/w;->b(Lcom/applovin/exoplayer2/k/w;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    invoke-static {v1}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w;)Lcom/applovin/exoplayer2/k/w$c;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private oE()J
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/k/w$c;->sE:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public ar(Z)V
    .registers 10

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/k/w$c;->cw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abg:Ljava/io/IOException;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    iput-boolean v3, p0, Lcom/applovin/exoplayer2/k/w$c;->abi:Z

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_28

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28

    :cond_18
    monitor-enter p0

    :try_start_19
    iput-boolean v3, p0, Lcom/applovin/exoplayer2/k/w$c;->abi:Z

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/k/w$d;->lq()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/w$c;->abh:Ljava/lang/Thread;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_47

    :cond_28
    :goto_28
    if-eqz p1, :cond_46

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/w$c;->finish()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object p1, p0, Lcom/applovin/exoplayer2/k/w$c;->abf:Lcom/applovin/exoplayer2/k/w$a;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/applovin/exoplayer2/k/w$a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    iget-wide v5, p0, Lcom/applovin/exoplayer2/k/w$c;->sC:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/applovin/exoplayer2/k/w$a;->a(Lcom/applovin/exoplayer2/k/w$d;JJZ)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abf:Lcom/applovin/exoplayer2/k/w$a;

    :cond_46
    return-void

    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit p0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method public bn(J)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    invoke-static {v0}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w;)Lcom/applovin/exoplayer2/k/w$c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w;Lcom/applovin/exoplayer2/k/w$c;)Lcom/applovin/exoplayer2/k/w$c;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21

    :cond_1e
    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/w$c;->oD()V

    :goto_21
    return-void
.end method

.method public dK(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abg:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/applovin/exoplayer2/k/w$c;->sE:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/w$c;->cw:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/w$c;->oD()V

    return-void

    :cond_d
    const/4 v1, 0x3

    if-eq v0, v1, :cond_9a

    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/w$c;->finish()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k/w$c;->sC:J

    sub-long v6, v4, v2

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abf:Lcom/applovin/exoplayer2/k/w$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/applovin/exoplayer2/k/w$a;

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abi:Z

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/applovin/exoplayer2/k/w$a;->a(Lcom/applovin/exoplayer2/k/w$d;JJZ)V

    return-void

    :cond_2f
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v0, v10, :cond_81

    const/4 v11, 0x2

    if-eq v0, v11, :cond_38

    goto :goto_99

    :cond_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/io/IOException;

    iput-object v8, p0, Lcom/applovin/exoplayer2/k/w$c;->abg:Ljava/io/IOException;

    iget p1, p0, Lcom/applovin/exoplayer2/k/w$c;->sE:I

    add-int/lit8 v9, p1, 0x1

    iput v9, p0, Lcom/applovin/exoplayer2/k/w$c;->sE:I

    iget-object v3, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    invoke-interface/range {v2 .. v9}, Lcom/applovin/exoplayer2/k/w$a;->a(Lcom/applovin/exoplayer2/k/w$d;JJLjava/io/IOException;I)Lcom/applovin/exoplayer2/k/w$b;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/k/w$b;->a(Lcom/applovin/exoplayer2/k/w$b;)I

    move-result v0

    if-ne v0, v1, :cond_59

    iget-object p1, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abg:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w;Ljava/io/IOException;)Ljava/io/IOException;

    goto :goto_99

    :cond_59
    invoke-static {p1}, Lcom/applovin/exoplayer2/k/w$b;->a(Lcom/applovin/exoplayer2/k/w$b;)I

    move-result v0

    if-eq v0, v11, :cond_99

    invoke-static {p1}, Lcom/applovin/exoplayer2/k/w$b;->a(Lcom/applovin/exoplayer2/k/w$b;)I

    move-result v0

    if-ne v0, v10, :cond_67

    iput v10, p0, Lcom/applovin/exoplayer2/k/w$c;->sE:I

    :cond_67
    invoke-static {p1}, Lcom/applovin/exoplayer2/k/w$b;->b(Lcom/applovin/exoplayer2/k/w$b;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    invoke-static {p1}, Lcom/applovin/exoplayer2/k/w$b;->b(Lcom/applovin/exoplayer2/k/w$b;)J

    move-result-wide v0

    goto :goto_7d

    :cond_79
    invoke-direct {p0}, Lcom/applovin/exoplayer2/k/w$c;->oE()J

    move-result-wide v0

    :goto_7d
    invoke-virtual {p0, v0, v1}, Lcom/applovin/exoplayer2/k/w$c;->bn(J)V

    goto :goto_99

    :cond_81
    :try_start_81
    iget-object v3, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    invoke-interface/range {v2 .. v7}, Lcom/applovin/exoplayer2/k/w$a;->a(Lcom/applovin/exoplayer2/k/w$d;JJ)V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_86} :catch_87

    goto :goto_99

    :catch_87
    move-exception p1

    const-string v0, "LoadTask"

    const-string v1, "Unexpected exception handling load completed"

    invoke-static {v0, v1, p1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/k/w$c;->abj:Lcom/applovin/exoplayer2/k/w;

    new-instance v1, Lcom/applovin/exoplayer2/k/w$g;

    invoke-direct {v1, p1}, Lcom/applovin/exoplayer2/k/w$g;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/k/w;->a(Lcom/applovin/exoplayer2/k/w;Ljava/io/IOException;)Ljava/io/IOException;

    :cond_99
    :goto_99
    return-void

    :cond_9a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public run()V
    .registers 5

    const/4 v0, 0x2

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_2} :catch_6a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_2} :catch_55

    :try_start_2
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/k/w$c;->abi:Z

    const/4 v2, 0x1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/applovin/exoplayer2/k/w$c;->abh:Ljava/lang/Thread;

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_52

    if-eqz v1, :cond_3f

    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/exoplayer2/l/ah;->bg(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_31} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_31} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_31} :catch_6a
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_31} :catch_55

    :try_start_31
    iget-object v1, p0, Lcom/applovin/exoplayer2/k/w$c;->abe:Lcom/applovin/exoplayer2/k/w$d;

    invoke-interface {v1}, Lcom/applovin/exoplayer2/k/w$d;->lr()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3a

    :try_start_36
    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    goto :goto_3f

    :catchall_3a
    move-exception v1

    invoke-static {}, Lcom/applovin/exoplayer2/l/ah;->pV()V

    throw v1

    :cond_3f
    :goto_3f
    monitor-enter p0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_40} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_40} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_36 .. :try_end_40} :catch_6a
    .catch Ljava/lang/Error; {:try_start_36 .. :try_end_40} :catch_55

    const/4 v1, 0x0

    :try_start_41
    iput-object v1, p0, Lcom/applovin/exoplayer2/k/w$c;->abh:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_4f

    :try_start_47
    iget-boolean v1, p0, Lcom/applovin/exoplayer2/k/w$c;->cw:Z

    if-nez v1, :cond_a8

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4e} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4e} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_47 .. :try_end_4e} :catch_6a
    .catch Ljava/lang/Error; {:try_start_47 .. :try_end_4e} :catch_55

    goto :goto_a8

    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v1
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_52} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_52} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_52} :catch_6a
    .catch Ljava/lang/Error; {:try_start_51 .. :try_end_52} :catch_55

    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw v1
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_55} :catch_6a
    .catch Ljava/lang/Error; {:try_start_54 .. :try_end_55} :catch_55

    :catch_55
    move-exception v0

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/k/w$c;->cw:Z

    if-nez v1, :cond_69

    const-string v1, "LoadTask"

    const-string v2, "Unexpected error loading stream"

    invoke-static {v1, v2, v0}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_69
    throw v0

    :catch_6a
    move-exception v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/k/w$c;->cw:Z

    if-nez v2, :cond_a8

    const-string v2, "LoadTask"

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v2, v3, v1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/applovin/exoplayer2/k/w$g;

    invoke-direct {v2, v1}, Lcom/applovin/exoplayer2/k/w$g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a8

    :catch_83
    move-exception v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/k/w$c;->cw:Z

    if-nez v2, :cond_a8

    const-string v2, "LoadTask"

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v2, v3, v1}, Lcom/applovin/exoplayer2/l/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Lcom/applovin/exoplayer2/k/w$g;

    invoke-direct {v2, v1}, Lcom/applovin/exoplayer2/k/w$g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a8

    :catch_9c
    move-exception v1

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/k/w$c;->cw:Z

    if-nez v2, :cond_a8

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_a8
    :goto_a8
    return-void
.end method
