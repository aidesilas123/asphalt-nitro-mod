###### Class com.google.common.util.concurrent.q.d (com.google.common.util.concurrent.q$d)
.class final Lcom/google/common/util/concurrent/q$d;
.super Lcom/google/common/util/concurrent/q$b;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/q$b;-><init>(Lcom/google/common/util/concurrent/q$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/q$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/q$d;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/q;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/q;->F(Lcom/google/common/util/concurrent/q;)Ljava/util/Set;

    move-result-object v0

    if-ne v0, p2, :cond_a

    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/q;->G(Lcom/google/common/util/concurrent/q;Ljava/util/Set;)Ljava/util/Set;

    :cond_a
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method b(Lcom/google/common/util/concurrent/q;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/q<",
            "*>;)I"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/q;->H(Lcom/google/common/util/concurrent/q;)I

    move-result v0

    monitor-exit p1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
