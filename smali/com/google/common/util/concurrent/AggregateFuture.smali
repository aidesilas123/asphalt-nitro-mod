###### Class com.google.common.util.concurrent.AggregateFuture (com.google.common.util.concurrent.AggregateFuture)
.class abstract Lcom/google/common/util/concurrent/AggregateFuture;
.super Lcom/google/common/util/concurrent/q;
.source "AggregateFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/q<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final l:Ljava/util/logging/Logger;


# instance fields
.field private m:Lcom/google/common/collect/n1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n1<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final n:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture;->l:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/n1;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n1<",
            "+",
            "Lcom/google/common/util/concurrent/h0<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/q;-><init>(I)V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n1;

    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    iput-boolean p2, p0, Lcom/google/common/util/concurrent/AggregateFuture;->n:Z

    iput-boolean p3, p0, Lcom/google/common/util/concurrent/AggregateFuture;->o:Z

    return-void
.end method

.method private static M(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_f

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method private O(ILjava/util/concurrent/Future;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->N(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_7} :catch_d
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_15

    :catchall_8
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->R(Ljava/lang/Throwable;)V

    goto :goto_15

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->R(Ljava/lang/Throwable;)V

    :goto_15
    return-void
.end method

.method private P(Lcom/google/common/collect/n1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n1<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/q;->K()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->Y(Lcom/google/common/collect/n1;)V

    :cond_13
    return-void
.end method

.method private R(Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->n:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/m;->C(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/q;->L()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->M(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->X(Ljava/lang/Throwable;)V

    return-void

    :cond_1b
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_22

    invoke-static {p1}, Lcom/google/common/util/concurrent/AggregateFuture;->X(Ljava/lang/Throwable;)V

    :cond_22
    return-void
.end method

.method private synthetic T(Lcom/google/common/util/concurrent/h0;I)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/m$j;->cancel(Z)Z

    goto :goto_11

    :cond_e
    invoke-direct {p0, p2, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->O(ILjava/util/concurrent/Future;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->P(Lcom/google/common/collect/n1;)V

    return-void

    :catchall_15
    move-exception p1

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->P(Lcom/google/common/collect/n1;)V

    throw p1
.end method

.method private synthetic V(Lcom/google/common/collect/n1;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->P(Lcom/google/common/collect/n1;)V

    return-void
.end method

.method private static X(Ljava/lang/Throwable;)V
    .registers 4

    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_7

    const-string v0, "Input Future failed with Error"

    goto :goto_9

    :cond_7
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_9
    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture;->l:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private Y(Lcom/google/common/collect/n1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n1<",
            "+",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/common/collect/n1;->n()Lcom/google/common/collect/o3;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->O(ILjava/util/concurrent/Future;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/q;->J()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->Q()V

    sget-object p1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->b:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->Z(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    return-void
.end method


# virtual methods
.method final I(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m$j;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/AggregateFuture;->M(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_15
    return-void
.end method

.method abstract N(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITInputT;)V"
        }
    .end annotation
.end method

.method abstract Q()V
.end method

.method final S()V
    .registers 6

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AggregateFuture;->Q()V

    return-void

    :cond_11
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->n:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    invoke-virtual {v1}, Lcom/google/common/collect/n1;->n()Lcom/google/common/collect/o3;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/h0;

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/google/common/util/concurrent/a;

    invoke-direct {v4, p0, v2, v0}, Lcom/google/common/util/concurrent/a;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/h0;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_1c

    :cond_38
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->o:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    new-instance v1, Lcom/google/common/util/concurrent/b;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/b;-><init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/n1;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/h0;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_4b

    :cond_5f
    return-void
.end method

.method public synthetic U(Lcom/google/common/util/concurrent/h0;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/AggregateFuture;->T(Lcom/google/common/util/concurrent/h0;I)V

    return-void
.end method

.method public synthetic W(Lcom/google/common/collect/n1;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AggregateFuture;->V(Lcom/google/common/collect/n1;)V

    return-void
.end method

.method Z(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    return-void
.end method

.method protected final m()V
    .registers 4

    invoke-super {p0}, Lcom/google/common/util/concurrent/m;->m()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->a:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->Z(Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;)V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m$j;->isCancelled()Z

    move-result v1

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    and-int/2addr v1, v2

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->E()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1e

    :cond_2e
    return-void
.end method

.method protected final y()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture;->m:Lcom/google/common/collect/n1;

    if-eqz v0, :cond_20

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-super {p0}, Lcom/google/common/util/concurrent/m;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.AggregateFuture.ReleaseResourcesReason (com.google.common.util.concurrent.AggregateFuture$ReleaseResourcesReason)
.class final enum Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
.super Ljava/lang/Enum;
.source "AggregateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AggregateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReleaseResourcesReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

.field public static final enum b:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

.field private static final synthetic c:[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    const-string v1, "OUTPUT_FUTURE_DONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->a:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    new-instance v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    const-string v1, "ALL_INPUT_FUTURES_PROCESSED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->b:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-static {}, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->e()[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->c:[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->a:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->b:Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    .registers 2

    const-class v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;
    .registers 1

    sget-object v0, Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->c:[Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/AggregateFuture$ReleaseResourcesReason;

    return-object v0
.end method

###### Class com.google.common.util.concurrent.a (com.google.common.util.concurrent.a)
.class public final synthetic Lcom/google/common/util/concurrent/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/AggregateFuture;

.field public final synthetic b:Lcom/google/common/util/concurrent/h0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/h0;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->a:Lcom/google/common/util/concurrent/AggregateFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/h0;

    iput p3, p0, Lcom/google/common/util/concurrent/a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->a:Lcom/google/common/util/concurrent/AggregateFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/a;->b:Lcom/google/common/util/concurrent/h0;

    iget v2, p0, Lcom/google/common/util/concurrent/a;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/AggregateFuture;->U(Lcom/google/common/util/concurrent/h0;I)V

    return-void
.end method

###### Class com.google.common.util.concurrent.b (com.google.common.util.concurrent.b)
.class public final synthetic Lcom/google/common/util/concurrent/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/AggregateFuture;

.field public final synthetic b:Lcom/google/common/collect/n1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/collect/n1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/AggregateFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/collect/n1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/b;->a:Lcom/google/common/util/concurrent/AggregateFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/b;->b:Lcom/google/common/collect/n1;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AggregateFuture;->W(Lcom/google/common/collect/n1;)V

    return-void
.end method
