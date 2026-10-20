###### Class com.bytedance.sdk.openadsdk.n.a.g (com.bytedance.sdk.openadsdk.n.a.g)
.class public Lcom/bytedance/sdk/openadsdk/n/a/g;
.super Ljava/lang/Object;
.source "PAGTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/n/a/g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/n/a/g$a;

.field private static b:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 0

    return-void
.end method

.method public static a(Lcom/bytedance/sdk/openadsdk/n/a/b;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/n/a/g;->b()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/n/a/g;->a:Lcom/bytedance/sdk/openadsdk/n/a/g$a;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/n/a/g$a;->a(Lcom/bytedance/sdk/openadsdk/n/a/b;)V

    :cond_d
    return-void
.end method

.method public static b()V
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/n/a/g;->a:Lcom/bytedance/sdk/openadsdk/n/a/g$a;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/n/a/g;->b:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_44

    :cond_f
    const-class v0, Lcom/bytedance/sdk/openadsdk/n/a/g;

    monitor-enter v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_3a

    :try_start_12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/n/a/g;->b:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_35

    :cond_1c
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "csj_MRC"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/n/a/g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/n/a/g$a;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/n/a/g;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/n/a/g$a;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/n/a/g;->a:Lcom/bytedance/sdk/openadsdk/n/a/g$a;

    :cond_35
    monitor-exit v0

    goto :goto_44

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_37

    :try_start_39
    throw v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v0

    const-string v1, "MRC"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method

.method public static b(Lcom/bytedance/sdk/openadsdk/n/a/b;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/n/a/g;->a:Lcom/bytedance/sdk/openadsdk/n/a/g$a;

    if-eqz v0, :cond_1c

    :try_start_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/n/a/b;->k()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/n/a/g;->a:Lcom/bytedance/sdk/openadsdk/n/a/g$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/bytedance/sdk/openadsdk/n/a/g;->a:Lcom/bytedance/sdk/openadsdk/n/a/g$a;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1c

    :catch_1c
    :cond_1c
    return-void
.end method
