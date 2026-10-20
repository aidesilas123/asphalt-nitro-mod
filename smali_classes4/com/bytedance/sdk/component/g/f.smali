###### Class com.bytedance.sdk.component.g.f (com.bytedance.sdk.component.g.f)
.class public Lcom/bytedance/sdk/component/g/f;
.super Lcom/bytedance/sdk/component/g/e;
.source "TTExecutor.java"


# static fields
.field public static final a:I

.field public static b:Lcom/bytedance/sdk/component/g/c;

.field public static c:I

.field public static d:Z

.field private static volatile e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile f:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile g:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile h:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile i:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile j:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static volatile k:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/component/g/f;->a:I

    const/16 v0, 0x78

    sput v0, Lcom/bytedance/sdk/component/g/f;->c:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/component/g/f;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/g/e;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/util/concurrent/ExecutorService;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_5b

    const-class v0, Lcom/bytedance/sdk/component/g/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_56

    new-instance v1, Lcom/bytedance/sdk/component/g/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/g/a$a;-><init>()V

    const-string v2, "io"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/g/a$a;->b(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(J)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->h()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v2

    const-string v3, "io"

    invoke-interface {v2, p0, v3}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/g/a$a;->a()Lcom/bytedance/sdk/component/g/a;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object p0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_56
    monitor-exit v0

    goto :goto_5b

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw p0

    :cond_5b
    :goto_5b
    sget-object p0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static a(Lcom/bytedance/sdk/component/g/c;)V
    .registers 1

    sput-object p0, Lcom/bytedance/sdk/component/g/f;->b:Lcom/bytedance/sdk/component/g/c;

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/component/g/h;)V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->b()Ljava/util/concurrent/ExecutorService;

    :cond_7
    if-eqz p0, :cond_12

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public static a(Lcom/bytedance/sdk/component/g/h;I)V
    .registers 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/g/f;->b(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/component/g/h;II)V
    .registers 4

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    invoke-static {p2}, Lcom/bytedance/sdk/component/g/f;->a(I)Ljava/util/concurrent/ExecutorService;

    :cond_7
    if-eqz p0, :cond_15

    sget-object p2, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p2, :cond_15

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/g/h;->setPriority(I)V

    sget-object p1, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public static a(Z)V
    .registers 1

    sput-boolean p0, Lcom/bytedance/sdk/component/g/f;->d:Z

    return-void
.end method

.method public static b()Ljava/util/concurrent/ExecutorService;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_57

    const-class v0, Lcom/bytedance/sdk/component/g/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/g/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_52

    new-instance v1, Lcom/bytedance/sdk/component/g/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/g/a$a;-><init>()V

    const-string v2, "init"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->b(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/g/a$a;->a(J)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v3}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->h()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v3

    const-string v4, "init"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/a$a;->a()Lcom/bytedance/sdk/component/g/a;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/g/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_52
    monitor-exit v0

    goto :goto_57

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw v1

    :cond_57
    :goto_57
    sget-object v0, Lcom/bytedance/sdk/component/g/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static b(I)Ljava/util/concurrent/ExecutorService;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_5b

    const-class v0, Lcom/bytedance/sdk/component/g/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_56

    new-instance v1, Lcom/bytedance/sdk/component/g/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/g/a$a;-><init>()V

    const-string v2, "ad"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/g/a$a;->b(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(J)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->h()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v2

    const-string v3, "ad"

    invoke-interface {v2, p0, v3}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/g/a$a;->a()Lcom/bytedance/sdk/component/g/a;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object p0, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_56
    monitor-exit v0

    goto :goto_5b

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw p0

    :cond_5b
    :goto_5b
    sget-object p0, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method public static b(Lcom/bytedance/sdk/component/g/h;)V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->c()Ljava/util/concurrent/ExecutorService;

    :cond_7
    sget-object v0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/component/g/h;I)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/g/h;->setPriority(I)V

    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/component/g/f;->c(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method

.method public static c()Ljava/util/concurrent/ExecutorService;
    .registers 1

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/bytedance/sdk/component/g/f;->a(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static c(I)V
    .registers 1

    sput p0, Lcom/bytedance/sdk/component/g/f;->c:I

    return-void
.end method

.method public static c(Lcom/bytedance/sdk/component/g/h;)V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->d()Ljava/util/concurrent/ExecutorService;

    :cond_7
    if-eqz p0, :cond_12

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public static c(Lcom/bytedance/sdk/component/g/h;I)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/g/h;->setPriority(I)V

    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/component/g/f;->d(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method

.method public static d()Ljava/util/concurrent/ExecutorService;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_5d

    const-class v0, Lcom/bytedance/sdk/component/g/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_58

    new-instance v1, Lcom/bytedance/sdk/component/g/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/g/a$a;-><init>()V

    const-string v2, "log"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->b(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/g/a$a;->a(J)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->h()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v3

    const-string v4, "log"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/a$a;->a()Lcom/bytedance/sdk/component/g/a;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_58
    monitor-exit v0

    goto :goto_5d

    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v1

    :cond_5d
    :goto_5d
    sget-object v0, Lcom/bytedance/sdk/component/g/f;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static d(Lcom/bytedance/sdk/component/g/h;)V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->e()Ljava/util/concurrent/ExecutorService;

    :cond_7
    if-eqz p0, :cond_12

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public static e()Ljava/util/concurrent/ExecutorService;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_5d

    const-class v0, Lcom/bytedance/sdk/component/g/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_58

    new-instance v1, Lcom/bytedance/sdk/component/g/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/g/a$a;-><init>()V

    const-string v2, "aidl"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->b(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/g/a$a;->a(J)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->h()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v3

    const-string v4, "aidl"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/a$a;->a()Lcom/bytedance/sdk/component/g/a;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_58
    monitor-exit v0

    goto :goto_5d

    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v1

    :cond_5d
    :goto_5d
    sget-object v0, Lcom/bytedance/sdk/component/g/f;->j:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static e(Lcom/bytedance/sdk/component/g/h;)V
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_8

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/bytedance/sdk/component/g/f;->b(I)Ljava/util/concurrent/ExecutorService;

    :cond_8
    if-eqz p0, :cond_13

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method public static f()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 4

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_21

    const-class v0, Lcom/bytedance/sdk/component/g/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/g/f;->k:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_1c

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v1

    const/4 v2, 0x5

    const-string v3, "scheduled"

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object v1

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/g/f;->k:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1c
    monitor-exit v0

    goto :goto_21

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :goto_21
    sget-object v0, Lcom/bytedance/sdk/component/g/f;->k:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public static g()Z
    .registers 1

    sget-boolean v0, Lcom/bytedance/sdk/component/g/f;->d:Z

    return v0
.end method

.method public static h()Ljava/util/concurrent/RejectedExecutionHandler;
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/component/g/f$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/g/f$1;-><init>()V

    return-object v0
.end method

.method public static i()Lcom/bytedance/sdk/component/g/c;
    .registers 1

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->b:Lcom/bytedance/sdk/component/g/c;

    return-object v0
.end method

.method public static j()Ljava/util/concurrent/ExecutorService;
    .registers 5

    sget-object v0, Lcom/bytedance/sdk/component/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_5d

    const-class v0, Lcom/bytedance/sdk/component/g/f;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/component/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_58

    new-instance v1, Lcom/bytedance/sdk/component/g/a$a;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/g/a$a;-><init>()V

    const-string v2, "computation"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->b(I)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4}, Lcom/bytedance/sdk/component/g/a$a;->a(J)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v3}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/BlockingQueue;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/f;->h()Ljava/util/concurrent/RejectedExecutionHandler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/RejectedExecutionHandler;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/component/g/e;->a()Lcom/bytedance/sdk/component/g/j;

    move-result-object v3

    const-string v4, "computation"

    invoke-interface {v3, v2, v4}, Lcom/bytedance/sdk/component/g/j;->createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/g/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/g/a$a;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/bytedance/sdk/component/g/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/g/a$a;->a()Lcom/bytedance/sdk/component/g/a;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/component/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Lcom/bytedance/sdk/component/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_58
    monitor-exit v0

    goto :goto_5d

    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw v1

    :cond_5d
    :goto_5d
    sget-object v0, Lcom/bytedance/sdk/component/g/f;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
