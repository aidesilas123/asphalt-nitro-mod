###### Class com.google.common.util.concurrent.t0 (com.google.common.util.concurrent.t0)
.class Lcom/google/common/util/concurrent/t0;
.super Lcom/google/common/util/concurrent/FluentFuture$a;
.source "TrustedListenableFutureTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/t0$a;,
        Lcom/google/common/util/concurrent/t0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture$a<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private volatile h:Lcom/google/common/util/concurrent/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/g0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/r<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$a;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/t0$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/t0$a;-><init>(Lcom/google/common/util/concurrent/t0;Lcom/google/common/util/concurrent/r;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/t0;->h:Lcom/google/common/util/concurrent/g0;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture$a;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/t0$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/t0$b;-><init>(Lcom/google/common/util/concurrent/t0;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/t0;->h:Lcom/google/common/util/concurrent/g0;

    return-void
.end method

.method static F(Lcom/google/common/util/concurrent/r;)Lcom/google/common/util/concurrent/t0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/r<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/t0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/t0;-><init>(Lcom/google/common/util/concurrent/r;)V

    return-object v0
.end method

.method static G(Ljava/lang/Runnable;Ljava/lang/Object;)Lcom/google/common/util/concurrent/t0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Lcom/google/common/util/concurrent/t0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t0;

    invoke-static {p0, p1}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/t0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static H(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/t0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)",
            "Lcom/google/common/util/concurrent/t0<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/t0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/t0;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method


# virtual methods
.method protected m()V
    .registers 2

    invoke-super {p0}, Lcom/google/common/util/concurrent/m;->m()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->E()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0;->h:Lcom/google/common/util/concurrent/g0;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/g0;->c()V

    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/t0;->h:Lcom/google/common/util/concurrent/g0;

    return-void
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0;->h:Lcom/google/common/util/concurrent/g0;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/g0;->run()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/t0;->h:Lcom/google/common/util/concurrent/g0;

    return-void
.end method

.method protected y()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0;->h:Lcom/google/common/util/concurrent/g0;

    if-eqz v0, :cond_25

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "task=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-super {p0}, Lcom/google/common/util/concurrent/m;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.t0.a (com.google.common.util.concurrent.t0$a)
.class final Lcom/google/common/util/concurrent/t0$a;
.super Lcom/google/common/util/concurrent/g0;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/g0<",
        "Lcom/google/common/util/concurrent/h0<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final c:Lcom/google/common/util/concurrent/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/r<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/util/concurrent/t0;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/t0;Lcom/google/common/util/concurrent/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/r<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/util/concurrent/t0$a;->d:Lcom/google/common/util/concurrent/t0;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/g0;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/r;

    iput-object p1, p0, Lcom/google/common/util/concurrent/t0$a;->c:Lcom/google/common/util/concurrent/r;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$a;->d:Lcom/google/common/util/concurrent/t0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/m;->C(Ljava/lang/Throwable;)Z

    return-void
.end method

.method bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/common/util/concurrent/h0;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/t0$a;->h(Lcom/google/common/util/concurrent/h0;)V

    return-void
.end method

.method final d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$a;->d:Lcom/google/common/util/concurrent/t0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/FluentFuture$a;->isDone()Z

    move-result v0

    return v0
.end method

.method bridge synthetic e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/t0$a;->i()Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$a;->c:Lcom/google/common/util/concurrent/r;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method h(Lcom/google/common/util/concurrent/h0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$a;->d:Lcom/google/common/util/concurrent/t0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/m;->D(Lcom/google/common/util/concurrent/h0;)Z

    return-void
.end method

.method i()Lcom/google/common/util/concurrent/h0;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$a;->c:Lcom/google/common/util/concurrent/r;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/r;->call()Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/t0$a;->c:Lcom/google/common/util/concurrent/r;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/h0;

    return-object v0
.end method

###### Class com.google.common.util.concurrent.t0.b (com.google.common.util.concurrent.t0$b)
.class final Lcom/google/common/util/concurrent/t0$b;
.super Lcom/google/common/util/concurrent/g0;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/g0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/google/common/util/concurrent/t0;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/t0;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/util/concurrent/t0$b;->d:Lcom/google/common/util/concurrent/t0;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/g0;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/t0$b;->c:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$b;->d:Lcom/google/common/util/concurrent/t0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/m;->C(Ljava/lang/Throwable;)Z

    return-void
.end method

.method b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$b;->d:Lcom/google/common/util/concurrent/t0;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/m;->B(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$b;->d:Lcom/google/common/util/concurrent/t0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/FluentFuture$a;->isDone()Z

    move-result v0

    return v0
.end method

.method e()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$b;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/t0$b;->c:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
