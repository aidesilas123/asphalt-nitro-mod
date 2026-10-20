###### Class com.vungle.ads.internal.executor.SDKExecutors (com.vungle.ads.internal.executor.c)
.class public final Lcom/vungle/ads/internal/executor/c;
.super Ljava/lang/Object;
.source "SDKExecutors.kt"

# interfaces
.implements Lcom/vungle/ads/internal/executor/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/executor/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0013\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u000fR\u0014\u0010\u0016\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u000fR\u0014\u0010\u0018\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u000fR\u0014\u0010\u001a\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000f\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vungle/ads/internal/executor/SDKExecutors;",
        "Lcom/vungle/ads/internal/executor/Executors;",
        "()V",
        "BACKGROUND_EXECUTOR",
        "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;",
        "DOWNLOADER_EXECUTOR",
        "IO_EXECUTOR",
        "JOB_EXECUTOR",
        "LOGGER_EXECUTOR",
        "NUMBER_OF_CORES",
        "",
        "OFFLOAD_EXECUTOR",
        "UA_EXECUTOR",
        "backgroundExecutor",
        "getBackgroundExecutor",
        "()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;",
        "downloaderExecutor",
        "getDownloaderExecutor",
        "ioExecutor",
        "getIoExecutor",
        "jobExecutor",
        "getJobExecutor",
        "loggerExecutor",
        "getLoggerExecutor",
        "offloadExecutor",
        "getOffloadExecutor",
        "uaExecutor",
        "getUaExecutor",
        "Companion",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/executor/c$a;

.field private static final IO_KEEP_ALIVE_TIME_SECONDS:I = 0x5

.field private static final JOBS_KEEP_ALIVE_TIME_SECONDS:I = 0x1

.field private static final SINGLE_CORE_POOL_SIZE:I = 0x1

.field private static final VUNGLE_KEEP_ALIVE_TIME_SECONDS:I = 0xa


# instance fields
.field private BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

.field private DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

.field private IO_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

.field private JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

.field private LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

.field private final NUMBER_OF_CORES:I

.field private OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

.field private UA_EXECUTOR:Lcom/vungle/ads/internal/executor/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/executor/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/executor/c$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/executor/c;->Companion:Lcom/vungle/ads/internal/executor/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    iput v3, p0, Lcom/vungle/ads/internal/executor/c;->NUMBER_OF_CORES:I

    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/vungle/ads/internal/executor/b;

    const-string v1, "vng_jr"

    invoke-direct {v8, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x1

    move-object v1, v0

    move v2, v3

    move-object v6, v12

    invoke-direct/range {v1 .. v8}, Lcom/vungle/ads/internal/executor/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/c;->JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/b;

    const-string v1, "vng_io"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0x5

    move-object v4, v0

    move-object v9, v12

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/c;->IO_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/b;

    const-string v1, "vng_logger"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/lang/String;)V

    const-wide/16 v7, 0xa

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/c;->LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/b;

    const-string v1, "vng_background"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/c;->BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/b;

    const-string v1, "vng_ua"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/c;->UA_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    new-instance v10, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/b;

    const-string v1, "vng_down"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x4

    const-wide/16 v7, 0x1

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/c;->DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    new-instance v0, Lcom/vungle/ads/internal/executor/d;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/vungle/ads/internal/executor/b;

    const-string v1, "vng_ol"

    invoke-direct {v11, v1}, Lcom/vungle/ads/internal/executor/b;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-wide/16 v7, 0xa

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/vungle/ads/internal/executor/d;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/executor/c;->OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-void
.end method


# virtual methods
.method public getBackgroundExecutor()Lcom/vungle/ads/internal/executor/d;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/c;->BACKGROUND_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-object v0
.end method

.method public getDownloaderExecutor()Lcom/vungle/ads/internal/executor/d;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/c;->DOWNLOADER_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-object v0
.end method

.method public getIoExecutor()Lcom/vungle/ads/internal/executor/d;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/c;->IO_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-object v0
.end method

.method public getJobExecutor()Lcom/vungle/ads/internal/executor/d;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/c;->JOB_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-object v0
.end method

.method public getLoggerExecutor()Lcom/vungle/ads/internal/executor/d;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/c;->LOGGER_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-object v0
.end method

.method public getOffloadExecutor()Lcom/vungle/ads/internal/executor/d;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/c;->OFFLOAD_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-object v0
.end method

.method public getUaExecutor()Lcom/vungle/ads/internal/executor/d;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/executor/c;->UA_EXECUTOR:Lcom/vungle/ads/internal/executor/d;

    return-object v0
.end method
