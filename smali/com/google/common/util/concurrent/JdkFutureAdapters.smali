###### Class com.google.common.util.concurrent.JdkFutureAdapters (com.google.common.util.concurrent.JdkFutureAdapters)
.class public final Lcom/google/common/util/concurrent/JdkFutureAdapters;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/JdkFutureAdapters$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;)Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/util/concurrent/h0;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/util/concurrent/h0;

    return-object p0

    :cond_7
    new-instance v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static listenInPoolThread(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/h0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/util/concurrent/h0;

    if-eqz v0, :cond_a

    check-cast p0, Lcom/google/common/util/concurrent/h0;

    return-object p0

    :cond_a
    new-instance v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.JdkFutureAdapters.a (com.google.common.util.concurrent.JdkFutureAdapters$a)
.class Lcom/google/common/util/concurrent/JdkFutureAdapters$a;
.super Lcom/google/common/util/concurrent/z;
.source "JdkFutureAdapters.java"

# interfaces
.implements Lcom/google/common/util/concurrent/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/JdkFutureAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/z<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/h0<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/Executor;


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/common/util/concurrent/v;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/common/util/concurrent/r0;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/r0;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/r0;->e(Z)Lcom/google/common/util/concurrent/r0;

    move-result-object v0

    const-string v1, "ListenableFutureAdapter-thread-%d"

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/r0;->f(Ljava/lang/String;)Lcom/google/common/util/concurrent/r0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/r0;->b()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/z;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/v;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/v;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/v;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic D()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5

    :catchall_5
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/v;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/v;->b()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->C()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected C()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public synthetic E()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->D()V

    return-void
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/v;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/v;

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/v;->b()V

    return-void

    :cond_1d
    iget-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->c:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/common/util/concurrent/f;

    invoke-direct {p2, p0}, Lcom/google/common/util/concurrent/f;-><init>(Lcom/google/common/util/concurrent/JdkFutureAdapters$a;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method

###### Class com.google.common.util.concurrent.f (com.google.common.util.concurrent.f)
.class public final synthetic Lcom/google/common/util/concurrent/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/JdkFutureAdapters$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/JdkFutureAdapters$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/JdkFutureAdapters$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/f;->a:Lcom/google/common/util/concurrent/JdkFutureAdapters$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->E()V

    return-void
.end method
