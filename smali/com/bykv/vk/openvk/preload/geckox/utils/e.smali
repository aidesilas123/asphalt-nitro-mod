###### Class com.bykv.vk.openvk.preload.geckox.utils.e (com.bykv.vk.openvk.preload.geckox.utils.e)
.class public Lcom/bykv/vk/openvk/preload/geckox/utils/e;
.super Ljava/lang/Object;
.source "IOSerialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static volatile a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/bykv/vk/openvk/preload/geckox/utils/e;
    .registers 2

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    if-nez v0, :cond_17

    const-class v0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    if-nez v1, :cond_12

    new-instance v1, Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/preload/geckox/utils/e;-><init>()V

    sput-object v1, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->a:Lcom/bykv/vk/openvk/preload/geckox/utils/e;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/utils/e;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
