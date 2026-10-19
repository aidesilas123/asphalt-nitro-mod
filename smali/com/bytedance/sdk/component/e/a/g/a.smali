###### Class com.bytedance.sdk.component.e.a.g.a (com.bytedance.sdk.component.e.a.g.a)
.class public Lcom/bytedance/sdk/component/e/a/g/a;
.super Ljava/lang/Object;
.source "TimerUtils.java"


# static fields
.field private static volatile a:Landroid/os/HandlerThread; = null

.field private static volatile b:Landroid/os/Handler; = null

.field private static c:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "csj_ad_log"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    sget-object v0, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Handler;
    .registers 4

    const-class v0, Lcom/bytedance/sdk/component/e/a/g/a;

    sget-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2a

    :cond_f
    sget-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->b:Landroid/os/Handler;

    if-nez v1, :cond_54

    monitor-enter v0

    :try_start_14
    sget-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->b:Landroid/os/Handler;

    if-nez v1, :cond_25

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->b:Landroid/os/Handler;

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
    sget-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_37

    sget-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_53

    :cond_37
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "csj_init_handle"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    sget-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/bytedance/sdk/component/e/a/g/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/component/e/a/g/a;->b:Landroid/os/Handler;

    :cond_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_57

    :cond_54
    :goto_54
    sget-object v0, Lcom/bytedance/sdk/component/e/a/g/a;->b:Landroid/os/Handler;

    return-object v0

    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method public static b()I
    .registers 1

    sget v0, Lcom/bytedance/sdk/component/e/a/g/a;->c:I

    if-gtz v0, :cond_8

    const/16 v0, 0xbb8

    sput v0, Lcom/bytedance/sdk/component/e/a/g/a;->c:I

    :cond_8
    sget v0, Lcom/bytedance/sdk/component/e/a/g/a;->c:I

    return v0
.end method
