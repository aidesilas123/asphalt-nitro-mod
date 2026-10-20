###### Class com.fyber.inneractive.sdk.network.y (com.fyber.inneractive.sdk.network.y)
.class public Lcom/fyber/inneractive/sdk/network/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/network/y$d;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public volatile b:Z

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final e:Ljava/lang/Runnable;

.field public f:Lcom/fyber/inneractive/sdk/network/r0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/network/y$a;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/network/y$a;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/network/y;->g:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fyber/inneractive/sdk/network/y$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/network/y$d;-><init>(Lcom/fyber/inneractive/sdk/network/y$a;)V

    new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v1, p0, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/network/y;->b:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/y;->c:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v10, Lcom/fyber/inneractive/sdk/network/y;->g:Ljava/util/concurrent/ThreadFactory;

    const/4 v4, 0x6

    const/4 v5, 0x6

    const-wide/16 v6, 0x3e8

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/y;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/fyber/inneractive/sdk/network/y$b;

    invoke-direct {v0, p0}, Lcom/fyber/inneractive/sdk/network/y$b;-><init>(Lcom/fyber/inneractive/sdk/network/y;)V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/y;->e:Ljava/lang/Runnable;

    new-instance v0, Lcom/fyber/inneractive/sdk/network/r0;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/network/r0;-><init>()V

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/network/y;->f:Lcom/fyber/inneractive/sdk/network/r0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fyber/inneractive/sdk/network/c0;Lcom/fyber/inneractive/sdk/network/j;)Lcom/fyber/inneractive/sdk/network/b0;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/network/j;",
            ")",
            "Lcom/fyber/inneractive/sdk/network/b0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_56

    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->g()Z

    move-result v2

    if-nez v2, :cond_56

    iget v2, p2, Lcom/fyber/inneractive/sdk/network/j;->a:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_31

    const/16 v3, 0x12c

    const/16 v4, 0x130

    if-lt v2, v3, :cond_19

    if-ge v2, v4, :cond_19

    goto :goto_31

    :cond_19
    if-ne v2, v4, :cond_24

    new-instance p2, Lcom/fyber/inneractive/sdk/network/f;

    invoke-direct {p2}, Lcom/fyber/inneractive/sdk/network/f;-><init>()V

    invoke-interface {p1, v0, p2, v1}, Lcom/fyber/inneractive/sdk/network/c0;->a(Ljava/lang/Object;Ljava/lang/Exception;Z)V

    goto :goto_56

    :cond_24
    new-instance v2, Lcom/fyber/inneractive/sdk/network/s0;

    iget v3, p2, Lcom/fyber/inneractive/sdk/network/j;->a:I

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/network/j;->b:Ljava/lang/String;

    invoke-direct {v2, v3, p2}, Lcom/fyber/inneractive/sdk/network/s0;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0, v2, v1}, Lcom/fyber/inneractive/sdk/network/c0;->a(Ljava/lang/Object;Ljava/lang/Exception;Z)V

    goto :goto_56

    :cond_31
    :goto_31
    iget-object v0, p2, Lcom/fyber/inneractive/sdk/network/j;->d:Ljava/util/Map;

    invoke-interface {p1, p2, v0, v2}, Lcom/fyber/inneractive/sdk/network/c0;->a(Lcom/fyber/inneractive/sdk/network/j;Ljava/util/Map;I)Lcom/fyber/inneractive/sdk/network/b0;

    move-result-object v0
    :try_end_37
    .catch Lcom/fyber/inneractive/sdk/network/z0; {:try_start_4 .. :try_end_37} :catch_41
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_38

    goto :goto_56

    :catch_38
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "failed parsing network request"

    invoke-static {v0, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :catch_41
    move-exception p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "failed parsing network request but will retry"

    invoke-static {v1, p2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/network/y;->d(Lcom/fyber/inneractive/sdk/network/c0;)Z

    move-result p1

    if-eqz p1, :cond_50

    throw p2

    :cond_50
    new-instance p1, Lcom/fyber/inneractive/sdk/network/y0;

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/network/y0;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_56
    :goto_56
    return-object v0
.end method

.method public final a(Lcom/fyber/inneractive/sdk/network/c0;Lcom/fyber/inneractive/sdk/network/a;)Lcom/fyber/inneractive/sdk/network/j;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "*>;",
            "Lcom/fyber/inneractive/sdk/network/a<",
            "*>;)",
            "Lcom/fyber/inneractive/sdk/network/j;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "failed sending network request"

    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->g()Z

    move-result v2

    if-nez v2, :cond_18

    if-eqz p2, :cond_e

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/network/a;->a:Ljava/lang/String;

    goto :goto_10

    :cond_e
    const-string p2, ""

    :goto_10
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/network/y;->a()V

    invoke-interface {p1, p2}, Lcom/fyber/inneractive/sdk/network/c0;->a(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/network/j;

    move-result-object p1
    :try_end_17
    .catch Lcom/fyber/inneractive/sdk/network/z0; {:try_start_3 .. :try_end_17} :catch_3d
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_17} :catch_25
    .catch Lcom/fyber/inneractive/sdk/network/b; {:try_start_3 .. :try_end_17} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_17} :catch_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_17} :catch_1a

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return-object p1

    :catch_1a
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    :catch_21
    move-exception p2

    goto :goto_26

    :catch_23
    move-exception p2

    goto :goto_26

    :catch_25
    move-exception p2

    :goto_26
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/network/y;->d(Lcom/fyber/inneractive/sdk/network/c0;)Z

    move-result p1

    if-eqz p1, :cond_37

    new-instance p1, Lcom/fyber/inneractive/sdk/network/z0;

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/network/z0;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_37
    new-instance p1, Lcom/fyber/inneractive/sdk/network/y0;

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/network/y0;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_3d
    move-exception p2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "failed sending network request but will retry"

    invoke-static {v1, p2, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/fyber/inneractive/sdk/network/y;->d(Lcom/fyber/inneractive/sdk/network/c0;)Z

    move-result p1

    if-eqz p1, :cond_4c

    throw p2

    :cond_4c
    new-instance p1, Lcom/fyber/inneractive/sdk/network/y0;

    invoke-direct {p1, p2}, Lcom/fyber/inneractive/sdk/network/y0;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final a()V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fyber/inneractive/sdk/network/b;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->L:Lcom/fyber/inneractive/sdk/config/global/s;

    const-class v1, Lcom/fyber/inneractive/sdk/config/global/features/k;

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/config/global/s;->a(Ljava/lang/Class;)Lcom/fyber/inneractive/sdk/config/global/features/g;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/config/global/features/k;

    const-string v1, "should_use_is_network_connected"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/config/global/features/g;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    :try_start_16
    sget-object v1, Lcom/fyber/inneractive/sdk/util/l;->a:Landroid/app/Application;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v3}, Lcom/fyber/inneractive/sdk/util/l;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1
    :try_end_36
    .catchall {:try_start_16 .. :try_end_36} :catchall_39

    if-eqz v1, :cond_41

    goto :goto_40

    :catchall_39
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Error retrieved when trying to get the network state - Perhaps you forgot to declare android.permission.ACCESS_NETWORK_STATE in your Android manifest file."

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_40
    const/4 v2, 0x1

    :cond_41
    if-eqz v2, :cond_44

    goto :goto_4c

    :cond_44
    new-instance v0, Lcom/fyber/inneractive/sdk/network/b;

    const-string v1, "No network connection"

    invoke-direct {v0, v1}, Lcom/fyber/inneractive/sdk/network/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/network/c0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    sget-object v0, Lcom/fyber/inneractive/sdk/network/q0;->DONE:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-interface {p1, v0}, Lcom/fyber/inneractive/sdk/network/c0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/network/c0;Lcom/fyber/inneractive/sdk/network/b0;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/network/b0;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->g()Z

    move-result v2

    if-nez v2, :cond_21

    if-eqz p2, :cond_21

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/network/b0;->a:Ljava/lang/Object;

    invoke-interface {p1, p2, v0, v1}, Lcom/fyber/inneractive/sdk/network/c0;->a(Ljava/lang/Object;Ljava/lang/Exception;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_21

    :catch_10
    move-exception p2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "failed notifying the listener request complete"

    invoke-static {v3, p2, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->g()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-interface {p1, v0, p2, v1}, Lcom/fyber/inneractive/sdk/network/c0;->a(Ljava/lang/Object;Ljava/lang/Exception;Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final a(Lcom/fyber/inneractive/sdk/network/c0;Lcom/fyber/inneractive/sdk/network/j;Lcom/fyber/inneractive/sdk/network/b0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "TT;>;",
            "Lcom/fyber/inneractive/sdk/network/j;",
            "Lcom/fyber/inneractive/sdk/network/b0;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->g()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    if-eqz p3, :cond_29

    if-eqz p2, :cond_29

    iget v0, p2, Lcom/fyber/inneractive/sdk/network/j;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_29

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p2, p2, Lcom/fyber/inneractive/sdk/network/j;->e:Ljava/lang/String;

    invoke-interface {p1, p3, v0, p2}, Lcom/fyber/inneractive/sdk/network/c0;->a(Lcom/fyber/inneractive/sdk/network/b0;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_29

    :catch_20
    move-exception p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "Failed cache network response data"

    invoke-static {p3, p1, p2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public b(Lcom/fyber/inneractive/sdk/network/c0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/y;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    sget-object v0, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-interface {p1, v0}, Lcom/fyber/inneractive/sdk/network/c0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    return-void
.end method

.method public final c(Lcom/fyber/inneractive/sdk/network/c0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/network/y;->f:Lcom/fyber/inneractive/sdk/network/r0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->f()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "%s : NetworkRequestWatchdog : finalize request: %s"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/network/r0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fyber/inneractive/sdk/network/u0;

    if-eqz v1, :cond_2c

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/network/u0;->d:Ljava/lang/Runnable;

    sget-object v2, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2c
    iget-object v0, v0, Lcom/fyber/inneractive/sdk/network/r0;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Lcom/fyber/inneractive/sdk/network/c0;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->o()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/fyber/inneractive/sdk/network/q0;->QUEUED_FOR_RETRY:Lcom/fyber/inneractive/sdk/network/q0;

    invoke-interface {p1, v0}, Lcom/fyber/inneractive/sdk/network/c0;->a(Lcom/fyber/inneractive/sdk/network/q0;)V

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->v()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/network/y;->c:Landroid/os/Handler;

    new-instance v3, Lcom/fyber/inneractive/sdk/network/y$c;

    invoke-direct {v3, p0, p1}, Lcom/fyber/inneractive/sdk/network/y$c;-><init>(Lcom/fyber/inneractive/sdk/network/y;Lcom/fyber/inneractive/sdk/network/c0;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lcom/fyber/inneractive/sdk/network/c0;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fyber/inneractive/sdk/network/c0<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->s()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_11

    invoke-interface {p1}, Lcom/fyber/inneractive/sdk/network/c0;->j()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%s : NetworkExecutorImpl : should enabled watchdog : %s"

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
