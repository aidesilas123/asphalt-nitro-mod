###### Class com.mbridge.msdk.foundation.same.net.k (com.mbridge.msdk.foundation.same.net.k)
.class public Lcom/mbridge/msdk/foundation/same/net/k;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# static fields
.field private static final a:Ljava/lang/String; = "k"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/mbridge/msdk/foundation/same/net/c;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mbridge/msdk/foundation/same/net/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Lcom/mbridge/msdk/foundation/same/net/stack/b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/k;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/k;->b:Landroid/content/Context;

    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/d;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0}, Lcom/mbridge/msdk/foundation/same/net/d;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/k;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/net/stack/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->d:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/k;->g:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/net/k;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/k;->b:Landroid/content/Context;

    new-instance p1, Lcom/mbridge/msdk/foundation/same/net/d;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Lcom/mbridge/msdk/foundation/same/net/d;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/k;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/stack/b;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->g:Lcom/mbridge/msdk/foundation/same/net/stack/b;

    return-object p0
.end method

.method private a()V
    .registers 21

    move-object/from16 v0, p0

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ac;->a()Lcom/mbridge/msdk/foundation/tools/ac;

    move-result-object v1

    const-string v2, "c_v_r_q_t"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_58

    :try_start_f
    const-string v2, "v_r_q_c_s"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;I)I

    move-result v5

    const-string v2, "v_r_q_m_s"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;I)I

    move-result v6

    const-string v2, "v_r_q_c_t"

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/tools/ac;->a(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v11}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v2, v0, Lcom/mbridge/msdk/foundation/same/net/k;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3c} :catch_3d

    goto :goto_72

    :catch_3d
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v13, 0x0

    const v14, 0x7fffffff

    const-wide/16 v15, 0x3c

    sget-object v17, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v18, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v19, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct/range {v19 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Lcom/mbridge/msdk/foundation/same/net/k;->e:Ljava/util/concurrent/ExecutorService;

    goto :goto_72

    :cond_58
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, v0, Lcom/mbridge/msdk/foundation/same/net/k;->e:Ljava/util/concurrent/ExecutorService;

    :goto_72
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/c;
    .registers 1

    iget-object p0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->c:Lcom/mbridge/msdk/foundation/same/net/c;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/mbridge/msdk/foundation/same/net/j;)V
    .registers 5

    invoke-virtual {p1, p0}, Lcom/mbridge/msdk/foundation/same/net/j;->a(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/j;

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_38

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/foundation/same/net/j;->a(I)Lcom/mbridge/msdk/foundation/same/net/j;

    sget-object v0, Lcom/mbridge/msdk/foundation/same/net/k;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add-to-queue request="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/net/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mbridge/msdk/foundation/same/net/k$1;

    invoke-direct {v1, p0, p1}, Lcom/mbridge/msdk/foundation/same/net/k$1;-><init>(Lcom/mbridge/msdk/foundation/same/net/k;Lcom/mbridge/msdk/foundation/same/net/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method final b(Lcom/mbridge/msdk/foundation/same/net/j;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

###### Class com.mbridge.msdk.foundation.same.net.k.AnonymousClass1 (com.mbridge.msdk.foundation.same.net.k$1)
.class final Lcom/mbridge/msdk/foundation/same/net/k$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/net/k;->a(Lcom/mbridge/msdk/foundation/same/net/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/foundation/same/net/j;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/net/k;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/k;Lcom/mbridge/msdk/foundation/same/net/j;)V
    .registers 3

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->b:Lcom/mbridge/msdk/foundation/same/net/k;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->a:Lcom/mbridge/msdk/foundation/same/net/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->b:Lcom/mbridge/msdk/foundation/same/net/k;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/k;->a(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/stack/b;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/i;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->b:Lcom/mbridge/msdk/foundation/same/net/k;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/net/k;->b(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/i;-><init>(Lcom/mbridge/msdk/foundation/same/net/c;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->a:Lcom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/i;->a(Lcom/mbridge/msdk/foundation/same/net/j;)V

    goto :goto_2f

    :cond_19
    new-instance v0, Lcom/mbridge/msdk/foundation/same/net/i;

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->b:Lcom/mbridge/msdk/foundation/same/net/k;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/net/k;->b(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/c;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->b:Lcom/mbridge/msdk/foundation/same/net/k;

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/net/k;->a(Lcom/mbridge/msdk/foundation/same/net/k;)Lcom/mbridge/msdk/foundation/same/net/stack/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/net/i;-><init>(Lcom/mbridge/msdk/foundation/same/net/c;Lcom/mbridge/msdk/foundation/same/net/stack/b;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/k$1;->a:Lcom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/i;->a(Lcom/mbridge/msdk/foundation/same/net/j;)V

    :goto_2f
    return-void
.end method
