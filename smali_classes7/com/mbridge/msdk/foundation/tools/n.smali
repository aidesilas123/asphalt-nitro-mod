###### Class com.mbridge.msdk.foundation.tools.n (com.mbridge.msdk.foundation.tools.n)
.class public final Lcom/mbridge/msdk/foundation/tools/n;
.super Ljava/lang/Object;
.source "FastKVConfig.java"


# static fields
.field static a:Lcom/mbridge/msdk/foundation/tools/FastKV$b;

.field static volatile b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/mbridge/msdk/foundation/tools/n$1;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/tools/n$1;-><init>()V

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/n;->a:Lcom/mbridge/msdk/foundation/tools/FastKV$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/util/concurrent/Executor;
    .registers 11

    sget-object v0, Lcom/mbridge/msdk/foundation/tools/n;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_32

    const-class v0, Lcom/mbridge/msdk/foundation/tools/n;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/mbridge/msdk/foundation/tools/n;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_2d

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x4

    const/16 v4, 0xa

    const-wide/16 v5, 0x1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/mbridge/msdk/foundation/tools/n$2;

    invoke-direct {v9}, Lcom/mbridge/msdk/foundation/tools/n$2;-><init>()V

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v1, Lcom/mbridge/msdk/foundation/tools/n;->b:Ljava/util/concurrent/Executor;

    :cond_2d
    monitor-exit v0

    goto :goto_32

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1

    :cond_32
    :goto_32
    sget-object v0, Lcom/mbridge/msdk/foundation/tools/n;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method
