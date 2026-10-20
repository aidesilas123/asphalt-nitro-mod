###### Class com.google.common.util.concurrent.Futures.d (com.google.common.util.concurrent.Futures$d)
.class final Lcom/google/common/util/concurrent/Futures$d;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/c0<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/util/concurrent/c0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/c0<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$d;->a:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$d;->a:Ljava/util/concurrent/Future;

    instance-of v1, v0, Lcom/google/common/util/concurrent/internal/a;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/common/util/concurrent/internal/a;

    invoke-static {v0}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/a;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$d;->a:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_14 .. :try_end_1a} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_1a} :catch_22
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_1a} :catch_20

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_20
    move-exception v0

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->a(Ljava/lang/Throwable;)V

    return-void

    :catch_29
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/c0;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$d;->b:Lcom/google/common/util/concurrent/c0;

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$b;->j(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
