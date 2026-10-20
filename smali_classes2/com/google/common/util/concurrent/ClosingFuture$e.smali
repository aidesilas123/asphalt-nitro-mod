###### Class com.google.common.util.concurrent.ClosingFuture.e (com.google.common.util.concurrent.ClosingFuture$e)
.class Lcom/google/common/util/concurrent/ClosingFuture$e;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$h;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/r<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/ClosingFuture$h;

.field final synthetic b:Lcom/google/common/util/concurrent/ClosingFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$e;->b:Lcom/google/common/util/concurrent/ClosingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$e;->a:Lcom/google/common/util/concurrent/ClosingFuture$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/util/concurrent/h0;
    .registers 5
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

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$j;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$c;)V

    :try_start_6
    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$e;->a:Lcom/google/common/util/concurrent/ClosingFuture$h;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture$j;->b(Lcom/google/common/util/concurrent/ClosingFuture$j;)Lcom/google/common/util/concurrent/ClosingFuture$q;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ClosingFuture$h;->a(Lcom/google/common/util/concurrent/ClosingFuture$q;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ClosingFuture$e;->b:Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/ClosingFuture;->e(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/ClosingFuture;->c(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$j;)V

    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture;->a(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_2b

    iget-object v2, p0, Lcom/google/common/util/concurrent/ClosingFuture$e;->b:Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/ClosingFuture;->e(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$j;

    move-result-object v2

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/common/util/concurrent/ClosingFuture$j;->d(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object v1

    :catchall_2b
    move-exception v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ClosingFuture$e;->b:Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-static {v2}, Lcom/google/common/util/concurrent/ClosingFuture;->e(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$j;

    move-result-object v2

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/common/util/concurrent/ClosingFuture$j;->d(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$e;->a:Lcom/google/common/util/concurrent/ClosingFuture$h;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
