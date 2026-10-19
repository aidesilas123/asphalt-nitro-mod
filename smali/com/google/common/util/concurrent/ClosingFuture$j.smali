###### Class com.google.common.util.concurrent.ClosingFuture.j (com.google.common.util.concurrent.ClosingFuture$j)
.class final Lcom/google/common/util/concurrent/ClosingFuture$j;
.super Ljava/util/IdentityHashMap;
.source "ClosingFuture.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "Ljava/io/Closeable;",
        "Ljava/util/concurrent/Executor;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/ClosingFuture$q;

.field private volatile b:Z

.field private volatile c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$q;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ClosingFuture$q;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$j;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->a:Lcom/google/common/util/concurrent/ClosingFuture$q;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$c;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture$j;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/ClosingFuture$j;)Lcom/google/common/util/concurrent/ClosingFuture$q;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->a:Lcom/google/common/util/concurrent/ClosingFuture$q;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->b:Z

    if-eqz v0, :cond_c

    monitor-exit p0

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->b:Z

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_41

    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->g(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    goto :goto_18

    :cond_34
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->clear()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->c:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_40
    return-void

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method d(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_6

    return-void

    :cond_6
    monitor-enter p0

    :try_start_7
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$j;->b:Z

    if-nez v0, :cond_10

    invoke-virtual {p0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture;->g(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method
