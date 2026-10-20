###### Class com.tapjoy.internal.e (com.tapjoy.internal.e)
.class public final Lcom/tapjoy/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/tapjoy/internal/e;


# instance fields
.field public b:Landroid/app/Application;

.field public c:Lcom/tapjoy/internal/n0;

.field public final d:Ljava/util/HashSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/e;

    invoke-direct {v0}, Lcom/tapjoy/internal/e;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/e;->a:Lcom/tapjoy/internal/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/e;->d:Ljava/util/HashSet;

    return-void
.end method

.method public static a()V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/e;->a:Lcom/tapjoy/internal/e;

    iget-object v1, v0, Lcom/tapjoy/internal/e;->b:Landroid/app/Application;

    if-nez v1, :cond_7

    goto :goto_15

    :cond_7
    monitor-enter v0

    :try_start_8
    iget-object v1, v0, Lcom/tapjoy/internal/e;->c:Lcom/tapjoy/internal/n0;

    if-eqz v1, :cond_14

    iget-object v2, v0, Lcom/tapjoy/internal/e;->b:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/e;->c:Lcom/tapjoy/internal/n0;

    :cond_14
    monitor-exit v0

    :goto_15
    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/tapjoy/internal/e;->a:Lcom/tapjoy/internal/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget-object v1, v0, Lcom/tapjoy/internal/e;->b:Landroid/app/Application;

    if-nez v1, :cond_37

    :try_start_d
    instance-of v1, p0, Landroid/app/Application;

    if-eqz v1, :cond_16

    check-cast p0, Landroid/app/Application;

    iput-object p0, v0, Lcom/tapjoy/internal/e;->b:Landroid/app/Application;

    goto :goto_32

    :cond_16
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/tapjoy/internal/f0;

    invoke-direct {v1, v0, p0}, Lcom/tapjoy/internal/f0;-><init>(Lcom/tapjoy/internal/e;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_27} :catch_28

    goto :goto_32

    :catch_28
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Tapjoy.ActivityTracker"

    invoke-static {v1, p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    iget-object p0, v0, Lcom/tapjoy/internal/e;->b:Landroid/app/Application;

    if-nez p0, :cond_37

    goto :goto_89

    :cond_37
    monitor-enter v0

    :try_start_38
    iget-object p0, v0, Lcom/tapjoy/internal/e;->c:Lcom/tapjoy/internal/n0;

    if-nez p0, :cond_88

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_67

    iget-object v1, v0, Lcom/tapjoy/internal/e;->d:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_67
    iget-object p0, v0, Lcom/tapjoy/internal/e;->d:Ljava/util/HashSet;

    new-instance v1, Lcom/tapjoy/internal/n0;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/n0;-><init>(Ljava/util/HashSet;)V

    iput-object v1, v0, Lcom/tapjoy/internal/e;->c:Lcom/tapjoy/internal/n0;

    iget-object p0, v0, Lcom/tapjoy/internal/e;->b:Landroid/app/Application;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object p0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {p0}, Lcom/tapjoy/internal/v1;->i()Z

    move-result v1

    if-nez v1, :cond_7e

    goto :goto_88

    :cond_7e
    invoke-virtual {p0}, Lcom/tapjoy/internal/v1;->k()Z

    move-result p0

    if-eqz p0, :cond_88

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/tapjoy/internal/q;->a(Landroid/app/Activity;)V

    :cond_88
    :goto_88
    monitor-exit v0

    :goto_89
    return-void

    :catchall_8a
    move-exception p0

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_38 .. :try_end_8c} :catchall_8a

    throw p0
.end method
