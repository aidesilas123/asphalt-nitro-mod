###### Class com.tapjoy.internal.w2 (com.tapjoy.internal.w2)
.class public abstract Lcom/tapjoy/internal/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/os/Handler;


# direct methods
.method public static a()Landroid/os/Handler;
    .registers 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcom/tapjoy/internal/w2;->b()Landroid/os/Handler;

    move-result-object v0

    goto :goto_19

    :cond_11
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return-object v0
.end method

.method public static a(Landroid/os/Handler;)Lcom/tapjoy/internal/x7;
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/x7;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/x7;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public static declared-synchronized b()Landroid/os/Handler;
    .registers 3

    const-class v0, Lcom/tapjoy/internal/w2;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/w2;->a:Landroid/os/Handler;

    if-nez v1, :cond_12

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tapjoy/internal/w2;->a:Landroid/os/Handler;

    :cond_12
    sget-object v1, Lcom/tapjoy/internal/w2;->a:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object v1

    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method
