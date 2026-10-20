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
