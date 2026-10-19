###### Class com.mbridge.msdk.foundation.tools.p (com.mbridge.msdk.foundation.tools.p)
.class public final Lcom/mbridge/msdk/foundation/tools/p;
.super Ljava/lang/Object;
.source "LimitExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Lcom/mbridge/msdk/foundation/tools/p$1;

    invoke-direct {v0, p0, p1}, Lcom/mbridge/msdk/foundation/tools/p$1;-><init>(Lcom/mbridge/msdk/foundation/tools/p;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/p;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/tools/p;->a:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/tools/p;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/n;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/p;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/tools/p;)V
    .registers 1

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/tools/p;->a()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/p;->a:Ljava/lang/Runnable;

    if-nez v0, :cond_15

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/tools/p;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/p;->a:Ljava/lang/Runnable;

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/n;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/p;->a:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1f

    :cond_15
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/tools/p;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_1f

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/tools/p;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/p;->b:Ljava/lang/Runnable;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method
