###### Class com.google.common.util.concurrent.m.h (com.google.common.util.concurrent.m$h)
.class final Lcom/google/common/util/concurrent/m$h;
.super Lcom/google/common/util/concurrent/m$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m$b;-><init>(Lcom/google/common/util/concurrent/m$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/m$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m$h;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;Lcom/google/common/util/concurrent/m$e;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$e;",
            "Lcom/google/common/util/concurrent/m$e;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->g(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$e;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/m;->h(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->c(Lcom/google/common/util/concurrent/m;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/m;->d(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$l;",
            "Lcom/google/common/util/concurrent/m$l;",
            ")Z"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->i(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$l;

    move-result-object v0

    if-ne v0, p2, :cond_d

    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/m;->j(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;

    const/4 p2, 0x1

    monitor-exit p1

    return p2

    :cond_d
    const/4 p2, 0x0

    monitor-exit p1

    return p2

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw p2
.end method

.method d(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$e;",
            ")",
            "Lcom/google/common/util/concurrent/m$e;"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->g(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$e;

    move-result-object v0

    if-eq v0, p2, :cond_a

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/m;->h(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;

    :cond_a
    monitor-exit p1

    return-object v0

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method e(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;",
            "Lcom/google/common/util/concurrent/m$l;",
            ")",
            "Lcom/google/common/util/concurrent/m$l;"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->i(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$l;

    move-result-object v0

    if-eq v0, p2, :cond_a

    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/m;->j(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;

    :cond_a
    monitor-exit p1

    return-object v0

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method f(Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)V
    .registers 3

    iput-object p2, p1, Lcom/google/common/util/concurrent/m$l;->c:Lcom/google/common/util/concurrent/m$l;

    return-void
.end method

.method g(Lcom/google/common/util/concurrent/m$l;Ljava/lang/Thread;)V
    .registers 3

    iput-object p2, p1, Lcom/google/common/util/concurrent/m$l;->b:Ljava/lang/Thread;

    return-void
.end method
