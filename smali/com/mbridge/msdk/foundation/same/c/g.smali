###### Class com.mbridge.msdk.foundation.same.c.g (com.mbridge.msdk.foundation.same.c.g)
.class public final Lcom/mbridge/msdk/foundation/same/c/g;
.super Ljava/lang/Object;
.source "ImageLoaderController.java"


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static a()Z
    .registers 3

    sget-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    if-nez v0, :cond_16

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v0

    const-string v2, "u_i_l_l_n"

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/mbridge/msdk/foundation/same/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_16
    sget-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return v1
.end method

.method public static b()Z
    .registers 3

    sget-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v0

    const-string v2, "u_i_l_l_b_d"

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/mbridge/msdk/foundation/same/c/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_16
    sget-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method public static c()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 11

    sget-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v0, 0x1

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v9, Lcom/mbridge/msdk/foundation/same/c/g$1;

    invoke-direct {v9}, Lcom/mbridge/msdk/foundation/same/c/g$1;-><init>()V

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_2d
    sget-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sget-object v0, Lcom/mbridge/msdk/foundation/same/c/g;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

###### Class com.mbridge.msdk.foundation.same.c.g.AnonymousClass1 (com.mbridge.msdk.foundation.same.c.g$1)
.class final Lcom/mbridge/msdk/foundation/same/c/g$1;
.super Ljava/lang/Object;
.source "ImageLoaderController.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/foundation/same/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p1, "mb-image-loader-thread"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
