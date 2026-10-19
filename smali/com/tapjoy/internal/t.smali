###### Class com.tapjoy.internal.t (com.tapjoy.internal.t)
.class public abstract Lcom/tapjoy/internal/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/app/Application;

.field public static b:I

.field public static final c:Lcom/tapjoy/internal/c8;

.field public static final d:Ljava/util/Set;

.field public static final e:Lcom/tapjoy/internal/c8;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/c8;

    invoke-direct {v0}, Lcom/tapjoy/internal/c8;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/c8;

    new-instance v0, Lcom/tapjoy/internal/v7;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/v7;-><init>(Ljava/util/WeakHashMap;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/t;->d:Ljava/util/Set;

    new-instance v0, Lcom/tapjoy/internal/c8;

    invoke-direct {v0}, Lcom/tapjoy/internal/c8;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/t;->e:Lcom/tapjoy/internal/c8;

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/c8;

    iget-object v0, v0, Lcom/tapjoy/internal/c8;->a:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    return-object v0

    :cond_12
    sget-object v0, Lcom/tapjoy/internal/t;->d:Ljava/util/Set;

    monitor-enter v0

    :try_start_15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    monitor-exit v0

    return-object v1

    :cond_2b
    monitor-exit v0

    return-object v1

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_15 .. :try_end_2f} :catchall_2d

    throw v1
.end method
