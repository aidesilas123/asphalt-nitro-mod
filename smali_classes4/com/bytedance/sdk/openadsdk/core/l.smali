###### Class com.bytedance.sdk.openadsdk.core.l (com.bytedance.sdk.openadsdk.core.l)
.class public Lcom/bytedance/sdk/openadsdk/core/l;
.super Ljava/lang/Object;
.source "InitHelper.java"


# static fields
.field public static volatile a:Z

.field public static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static c:J

.field public static d:F

.field public static e:J

.field private static volatile f:I

.field private static volatile g:Landroid/os/HandlerThread;

.field private static volatile h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/bytedance/sdk/openadsdk/core/l;->c:J

    sput v1, Lcom/bytedance/sdk/openadsdk/core/l;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/bytedance/sdk/openadsdk/core/l;->d:F

    const/4 v0, 0x0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->h:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "csj_init_handle"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/l;->e:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .registers 2

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/l;->e:J

    return-wide v0
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/bytedance/sdk/openadsdk/core/l;->f:I

    return-void
.end method

.method public static a(J)V
    .registers 2

    sput-wide p0, Lcom/bytedance/sdk/openadsdk/core/l;->e:J

    return-void
.end method

.method public static b()Landroid/os/Handler;
    .registers 4

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/l;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2a

    :cond_f
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->h:Landroid/os/Handler;

    if-nez v1, :cond_54

    monitor-enter v0

    :try_start_14
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->h:Landroid/os/Handler;

    if-nez v1, :cond_25

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->h:Landroid/os/Handler;

    :cond_25
    monitor-exit v0

    goto :goto_54

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_27

    throw v1

    :cond_2a
    :goto_2a
    monitor-enter v0

    :try_start_2b
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    if-eqz v1, :cond_37

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_53

    :cond_37
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "csj_init_handle"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/l;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/l;->h:Landroid/os/Handler;

    :cond_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_57

    :cond_54
    :goto_54
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/l;->h:Landroid/os/Handler;

    return-object v0

    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public static c()Landroid/os/Handler;
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static d()I
    .registers 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/l;->f:I

    return v0
.end method

.method public static e()Z
    .registers 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/l;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static f()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/bytedance/sdk/openadsdk/core/l;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-gtz v6, :cond_f

    return-void

    :cond_f
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/l;->c:J

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/l$1;

    const-string v1, "onSharedPreferenceChanged"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/l$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/aa;->a(Lcom/bytedance/sdk/component/g/h;)V

    return-void
.end method
