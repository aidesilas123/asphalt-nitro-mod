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
