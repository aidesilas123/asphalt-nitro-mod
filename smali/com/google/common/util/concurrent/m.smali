###### Class com.google.common.util.concurrent.m (com.google.common.util.concurrent.m)
.class public abstract Lcom/google/common/util/concurrent/m;
.super Lcom/google/common/util/concurrent/internal/a;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/m$h;,
        Lcom/google/common/util/concurrent/m$f;,
        Lcom/google/common/util/concurrent/m$k;,
        Lcom/google/common/util/concurrent/m$b;,
        Lcom/google/common/util/concurrent/m$g;,
        Lcom/google/common/util/concurrent/m$c;,
        Lcom/google/common/util/concurrent/m$d;,
        Lcom/google/common/util/concurrent/m$e;,
        Lcom/google/common/util/concurrent/m$l;,
        Lcom/google/common/util/concurrent/m$j;,
        Lcom/google/common/util/concurrent/m$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/internal/a;",
        "Lcom/google/common/util/concurrent/h0<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final a:Z

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Lcom/google/common/util/concurrent/m$b;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private volatile e:Ljava/lang/Object;

.field private volatile f:Lcom/google/common/util/concurrent/m$e;

.field private volatile g:Lcom/google/common/util/concurrent/m$l;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-class v0, Lcom/google/common/util/concurrent/m$l;

    :try_start_2
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 v1, 0x0

    :goto_10
    sput-boolean v1, Lcom/google/common/util/concurrent/m;->a:Z

    const-class v1, Lcom/google/common/util/concurrent/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/m;->b:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_1f
    new-instance v2, Lcom/google/common/util/concurrent/m$k;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/m$k;-><init>(Lcom/google/common/util/concurrent/m$a;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_27

    move-object v3, v2

    move-object v2, v1

    goto :goto_61

    :catchall_27
    move-exception v2

    :try_start_28
    new-instance v9, Lcom/google/common/util/concurrent/m$f;

    const-class v3, Ljava/lang/Thread;

    const-string v4, "b"

    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-string v3, "c"

    invoke-static {v0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    const-class v3, Lcom/google/common/util/concurrent/m;

    const-string v6, "g"

    invoke-static {v3, v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v6

    const-class v0, Lcom/google/common/util/concurrent/m;

    const-class v3, Lcom/google/common/util/concurrent/m$e;

    const-string v7, "f"

    invoke-static {v0, v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v7

    const-class v0, Lcom/google/common/util/concurrent/m;

    const-class v3, Ljava/lang/Object;

    const-string v8, "e"

    invoke-static {v0, v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v8

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/common/util/concurrent/m$f;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_58
    .catchall {:try_start_28 .. :try_end_58} :catchall_5a

    move-object v3, v9

    goto :goto_61

    :catchall_5a
    move-exception v0

    new-instance v3, Lcom/google/common/util/concurrent/m$h;

    invoke-direct {v3, v1}, Lcom/google/common/util/concurrent/m$h;-><init>(Lcom/google/common/util/concurrent/m$a;)V

    move-object v1, v0

    :goto_61
    sput-object v3, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    if-eqz v1, :cond_75

    sget-object v0, Lcom/google/common/util/concurrent/m;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v2, "SafeAtomicHelper is broken!"

    invoke-virtual {v0, v3, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/m;->d:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/internal/a;-><init>()V

    return-void
.end method

.method private A(Lcom/google/common/util/concurrent/m$l;)V
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/common/util/concurrent/m$l;->b:Ljava/lang/Thread;

    :goto_3
    iget-object p1, p0, Lcom/google/common/util/concurrent/m;->g:Lcom/google/common/util/concurrent/m$l;

    sget-object v1, Lcom/google/common/util/concurrent/m$l;->a:Lcom/google/common/util/concurrent/m$l;

    if-ne p1, v1, :cond_a

    return-void

    :cond_a
    move-object v1, v0

    :goto_b
    if-eqz p1, :cond_29

    iget-object v2, p1, Lcom/google/common/util/concurrent/m$l;->c:Lcom/google/common/util/concurrent/m$l;

    iget-object v3, p1, Lcom/google/common/util/concurrent/m$l;->b:Ljava/lang/Thread;

    if-eqz v3, :cond_15

    move-object v1, p1

    goto :goto_27

    :cond_15
    if-eqz v1, :cond_1e

    iput-object v2, v1, Lcom/google/common/util/concurrent/m$l;->c:Lcom/google/common/util/concurrent/m$l;

    iget-object p1, v1, Lcom/google/common/util/concurrent/m$l;->b:Ljava/lang/Thread;

    if-nez p1, :cond_27

    goto :goto_3

    :cond_1e
    sget-object v3, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v3, p0, p1, v2}, Lcom/google/common/util/concurrent/m$b;->c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z

    move-result p1

    if-nez p1, :cond_27

    goto :goto_3

    :cond_27
    :goto_27
    move-object p1, v2

    goto :goto_b

    :cond_29
    return-void
.end method

.method static synthetic b()Lcom/google/common/util/concurrent/m$b;
    .registers 1

    sget-object v0, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/m;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lcom/google/common/util/concurrent/m;->u(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/google/common/util/concurrent/m;)V
    .registers 1

    invoke-static {p0}, Lcom/google/common/util/concurrent/m;->r(Lcom/google/common/util/concurrent/m;)V

    return-void
.end method

.method static synthetic g(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$e;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/m;->f:Lcom/google/common/util/concurrent/m$e;

    return-object p0
.end method

.method static synthetic h(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/m;->f:Lcom/google/common/util/concurrent/m$e;

    return-object p1
.end method

.method static synthetic i(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$l;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/m;->g:Lcom/google/common/util/concurrent/m$l;

    return-object p0
.end method

.method static synthetic j(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/m;->g:Lcom/google/common/util/concurrent/m$l;

    return-object p1
.end method

.method private k(Ljava/lang/StringBuilder;)V
    .registers 5

    const-string v0, "]"

    :try_start_2
    invoke-static {p0}, Lcom/google/common/util/concurrent/m;->v(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/m;->n(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_11} :catch_2b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_11} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_3b

    :catch_12
    move-exception v0

    const-string v1, "UNKNOWN, cause=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " thrown from get()]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :catch_25
    const-string v0, "CANCELLED"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    :catch_2b
    move-exception v1

    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3b
    return-void
.end method

.method private l(Ljava/lang/StringBuilder;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const-string v1, "PENDING"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    instance-of v2, v1, Lcom/google/common/util/concurrent/m$g;

    const-string v3, "]"

    if-eqz v2, :cond_21

    const-string v2, ", setFuture=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v1, Lcom/google/common/util/concurrent/m$g;

    iget-object v1, v1, Lcom/google/common/util/concurrent/m$g;->b:Lcom/google/common/util/concurrent/h0;

    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/m;->o(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Strings;->emptyToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_29} :catch_2c
    .catch Ljava/lang/StackOverflowError; {:try_start_21 .. :try_end_29} :catch_2a

    goto :goto_4c

    :catch_2a
    move-exception v1

    goto :goto_2d

    :catch_2c
    move-exception v1

    :goto_2d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Exception thrown from implementation: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4c
    if-eqz v1, :cond_59

    const-string v2, ", info=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->isDone()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/m;->k(Ljava/lang/StringBuilder;)V

    :cond_69
    return-void
.end method

.method private n(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_8

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_8
    if-ne p2, p0, :cond_10

    const-string p2, "this future"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2b
    return-void
.end method

.method private o(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4

    if-ne p2, p0, :cond_8

    :try_start_2
    const-string p2, "this future"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_b} :catch_c

    goto :goto_1b

    :catch_c
    move-exception p2

    goto :goto_f

    :catch_e
    move-exception p2

    :goto_f
    const-string v0, "Exception thrown from implementation: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1b
    return-void
.end method

.method private static p(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .registers 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private q(Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;
    .registers 5

    sget-object v0, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    sget-object v1, Lcom/google/common/util/concurrent/m$e;->a:Lcom/google/common/util/concurrent/m$e;

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/m$b;->d(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;

    move-result-object v0

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_b
    if-eqz p1, :cond_14

    iget-object v1, p1, Lcom/google/common/util/concurrent/m$e;->d:Lcom/google/common/util/concurrent/m$e;

    iput-object v0, p1, Lcom/google/common/util/concurrent/m$e;->d:Lcom/google/common/util/concurrent/m$e;

    move-object v0, p1

    move-object p1, v1

    goto :goto_b

    :cond_14
    return-object v0
.end method

.method private static r(Lcom/google/common/util/concurrent/m;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/m;->z()V

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->m()V

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m;->q(Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_3d

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$e;->d:Lcom/google/common/util/concurrent/m$e;

    iget-object v1, p0, Lcom/google/common/util/concurrent/m$e;->b:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    instance-of v2, v1, Lcom/google/common/util/concurrent/m$g;

    if-eqz v2, :cond_31

    check-cast v1, Lcom/google/common/util/concurrent/m$g;

    iget-object p0, v1, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    iget-object v2, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    if-ne v2, v1, :cond_3b

    iget-object v2, v1, Lcom/google/common/util/concurrent/m$g;->b:Lcom/google/common/util/concurrent/h0;

    invoke-static {v2}, Lcom/google/common/util/concurrent/m;->u(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v3, p0, v1, v2}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    goto :goto_1

    :cond_31
    iget-object p0, p0, Lcom/google/common/util/concurrent/m$e;->c:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-static {v1, p0}, Lcom/google/common/util/concurrent/m;->s(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_3b
    move-object p0, v0

    goto :goto_b

    :cond_3d
    return-void
.end method

.method private static s(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 7

    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_38

    :catch_4
    move-exception v0

    sget-object v1, Lcom/google/common/util/concurrent/m;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "RuntimeException while executing runnable "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with executor "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_38
    return-void
.end method

.method private t(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    instance-of v0, p1, Lcom/google/common/util/concurrent/m$c;

    if-nez v0, :cond_1b

    instance-of v0, p1, Lcom/google/common/util/concurrent/m$d;

    if-nez v0, :cond_11

    sget-object v0, Lcom/google/common/util/concurrent/m;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_10

    invoke-static {}, Lcom/google/common/util/concurrent/m0;->b()Ljava/lang/Object;

    move-result-object p1

    :cond_10
    return-object p1

    :cond_11
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/m$d;

    iget-object p1, p1, Lcom/google/common/util/concurrent/m$d;->b:Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1b
    check-cast p1, Lcom/google/common/util/concurrent/m$c;

    iget-object p1, p1, Lcom/google/common/util/concurrent/m$c;->d:Ljava/lang/Throwable;

    const-string v0, "Task was cancelled."

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/m;->p(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    throw p1
.end method

.method private static u(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/h0<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "get() did not throw CancellationException, despite reporting isCancelled() == true: "

    instance-of v1, p0, Lcom/google/common/util/concurrent/m$i;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    check-cast p0, Lcom/google/common/util/concurrent/m;

    iget-object p0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    instance-of v0, p0, Lcom/google/common/util/concurrent/m$c;

    if-eqz v0, :cond_24

    move-object v0, p0

    check-cast v0, Lcom/google/common/util/concurrent/m$c;

    iget-boolean v1, v0, Lcom/google/common/util/concurrent/m$c;->c:Z

    if-eqz v1, :cond_24

    iget-object p0, v0, Lcom/google/common/util/concurrent/m$c;->d:Ljava/lang/Throwable;

    if-eqz p0, :cond_22

    new-instance p0, Lcom/google/common/util/concurrent/m$c;

    iget-object v0, v0, Lcom/google/common/util/concurrent/m$c;->d:Ljava/lang/Throwable;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_24

    :cond_22
    sget-object p0, Lcom/google/common/util/concurrent/m$c;->b:Lcom/google/common/util/concurrent/m$c;

    :cond_24
    :goto_24
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_28
    instance-of v1, p0, Lcom/google/common/util/concurrent/internal/a;

    if-eqz v1, :cond_3b

    move-object v1, p0

    check-cast v1, Lcom/google/common/util/concurrent/internal/a;

    invoke-static {v1}, Lcom/google/common/util/concurrent/internal/InternalFutures;->tryInternalFastPathGetFailure(Lcom/google/common/util/concurrent/internal/a;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3b

    new-instance p0, Lcom/google/common/util/concurrent/m$d;

    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/m$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_3b
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    sget-boolean v3, Lcom/google/common/util/concurrent/m;->a:Z

    xor-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_4c

    sget-object p0, Lcom/google/common/util/concurrent/m$c;->b:Lcom/google/common/util/concurrent/m$c;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_4c
    :try_start_4c
    invoke-static {p0}, Lcom/google/common/util/concurrent/m;->v(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v1, :cond_76

    new-instance v3, Lcom/google/common/util/concurrent/m$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x54

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2, v4}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    return-object v3

    :cond_76
    if-nez v3, :cond_7a

    sget-object v3, Lcom/google/common/util/concurrent/m;->d:Ljava/lang/Object;
    :try_end_7a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4c .. :try_end_7a} :catch_b1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4c .. :try_end_7a} :catch_82
    .catchall {:try_start_4c .. :try_end_7a} :catchall_7b

    :cond_7a
    return-object v3

    :catchall_7b
    move-exception p0

    new-instance v0, Lcom/google/common/util/concurrent/m$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/m$d;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :catch_82
    move-exception v0

    if-nez v1, :cond_ab

    new-instance v1, Lcom/google/common/util/concurrent/m$d;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "get() threw CancellationException, despite reporting isCancelled() == false: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/m$d;-><init>(Ljava/lang/Throwable;)V

    return-object v1

    :cond_ab
    new-instance p0, Lcom/google/common/util/concurrent/m$c;

    invoke-direct {p0, v2, v0}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    return-object p0

    :catch_b1
    move-exception v3

    if-eqz v1, :cond_d8

    new-instance v1, Lcom/google/common/util/concurrent/m$c;

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x54

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2, v4}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    return-object v1

    :cond_d8
    new-instance p0, Lcom/google/common/util/concurrent/m$d;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m$d;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private static v(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private z()V
    .registers 3

    sget-object v0, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    sget-object v1, Lcom/google/common/util/concurrent/m$l;->a:Lcom/google/common/util/concurrent/m$l;

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/m$b;->e(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/m$l;->b()V

    iget-object v0, v0, Lcom/google/common/util/concurrent/m$l;->c:Lcom/google/common/util/concurrent/m$l;

    goto :goto_8

    :cond_10
    return-void
.end method


# virtual methods
.method protected B(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    if-nez p1, :cond_4

    sget-object p1, Lcom/google/common/util/concurrent/m;->d:Ljava/lang/Object;

    :cond_4
    sget-object v0, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/google/common/util/concurrent/m;->r(Lcom/google/common/util/concurrent/m;)V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected C(Ljava/lang/Throwable;)Z
    .registers 4

    new-instance v0, Lcom/google/common/util/concurrent/m$d;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/m$d;-><init>(Ljava/lang/Throwable;)V

    sget-object p1, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-static {p0}, Lcom/google/common/util/concurrent/m;->r(Lcom/google/common/util/concurrent/m;)V

    const/4 p1, 0x1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method protected D(Lcom/google/common/util/concurrent/h0;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_45

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_21

    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->u(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v0, p0, v3, p1}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {p0}, Lcom/google/common/util/concurrent/m;->r(Lcom/google/common/util/concurrent/m;)V

    return v2

    :cond_20
    return v1

    :cond_21
    new-instance v0, Lcom/google/common/util/concurrent/m$g;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/m$g;-><init>(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/h0;)V

    sget-object v4, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v4, p0, v3, v0}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :try_start_2e
    sget-object v1, Lcom/google/common/util/concurrent/DirectExecutor;->a:Lcom/google/common/util/concurrent/DirectExecutor;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    goto :goto_42

    :catchall_34
    move-exception p1

    :try_start_35
    new-instance v1, Lcom/google/common/util/concurrent/m$d;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/m$d;-><init>(Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3b

    goto :goto_3d

    :catchall_3b
    sget-object v1, Lcom/google/common/util/concurrent/m$d;->a:Lcom/google/common/util/concurrent/m$d;

    :goto_3d
    sget-object p1, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_42
    return v2

    :cond_43
    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    :cond_45
    instance-of v2, v0, Lcom/google/common/util/concurrent/m$c;

    if-eqz v2, :cond_50

    check-cast v0, Lcom/google/common/util/concurrent/m$c;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/m$c;->c:Z

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_50
    return v1
.end method

.method protected final E()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/common/util/concurrent/m$c;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/google/common/util/concurrent/m$c;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/m$c;->c:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected final a()Ljava/lang/Throwable;
    .registers 3

    instance-of v0, p0, Lcom/google/common/util/concurrent/m$i;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    instance-of v1, v0, Lcom/google/common/util/concurrent/m$d;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/google/common/util/concurrent/m$d;

    iget-object v0, v0, Lcom/google/common/util/concurrent/m$d;->b:Ljava/lang/Throwable;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 6

    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->isDone()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->f:Lcom/google/common/util/concurrent/m$e;

    sget-object v1, Lcom/google/common/util/concurrent/m$e;->a:Lcom/google/common/util/concurrent/m$e;

    if-eq v0, v1, :cond_2c

    new-instance v1, Lcom/google/common/util/concurrent/m$e;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/m$e;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1b
    iput-object v0, v1, Lcom/google/common/util/concurrent/m$e;->d:Lcom/google/common/util/concurrent/m$e;

    sget-object v2, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/m$b;->a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;Lcom/google/common/util/concurrent/m$e;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->f:Lcom/google/common/util/concurrent/m$e;

    sget-object v2, Lcom/google/common/util/concurrent/m$e;->a:Lcom/google/common/util/concurrent/m$e;

    if-ne v0, v2, :cond_1b

    :cond_2c
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/m;->s(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public cancel(Z)Z
    .registers 9

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    instance-of v4, v0, Lcom/google/common/util/concurrent/m$g;

    or-int/2addr v3, v4

    if-eqz v3, :cond_64

    sget-boolean v3, Lcom/google/common/util/concurrent/m;->a:Z

    if-eqz v3, :cond_1f

    new-instance v3, Lcom/google/common/util/concurrent/m$c;

    new-instance v4, Ljava/util/concurrent/CancellationException;

    const-string v5, "Future.cancel() was called."

    invoke-direct {v4, v5}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1, v4}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_29

    :cond_1f
    if-eqz p1, :cond_24

    sget-object v3, Lcom/google/common/util/concurrent/m$c;->a:Lcom/google/common/util/concurrent/m$c;

    goto :goto_26

    :cond_24
    sget-object v3, Lcom/google/common/util/concurrent/m$c;->b:Lcom/google/common/util/concurrent/m$c;

    :goto_26
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    const/4 v5, 0x0

    move-object v4, p0

    :cond_2b
    :goto_2b
    sget-object v6, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v6, v4, v0, v3}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    if-eqz p1, :cond_38

    invoke-virtual {v4}, Lcom/google/common/util/concurrent/m;->w()V

    :cond_38
    invoke-static {v4}, Lcom/google/common/util/concurrent/m;->r(Lcom/google/common/util/concurrent/m;)V

    instance-of v4, v0, Lcom/google/common/util/concurrent/m$g;

    if-eqz v4, :cond_65

    check-cast v0, Lcom/google/common/util/concurrent/m$g;

    iget-object v0, v0, Lcom/google/common/util/concurrent/m$g;->b:Lcom/google/common/util/concurrent/h0;

    instance-of v4, v0, Lcom/google/common/util/concurrent/m$i;

    if-eqz v4, :cond_58

    move-object v4, v0

    check-cast v4, Lcom/google/common/util/concurrent/m;

    iget-object v0, v4, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    if-nez v0, :cond_50

    const/4 v5, 0x1

    goto :goto_51

    :cond_50
    const/4 v5, 0x0

    :goto_51
    instance-of v6, v0, Lcom/google/common/util/concurrent/m$g;

    or-int/2addr v5, v6

    if-eqz v5, :cond_65

    const/4 v5, 0x1

    goto :goto_2b

    :cond_58
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_65

    :cond_5c
    iget-object v0, v4, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    instance-of v6, v0, Lcom/google/common/util/concurrent/m$g;

    if-nez v6, :cond_2b

    move v1, v5

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :cond_65
    :goto_65
    return v1
.end method

.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    instance-of v4, v0, Lcom/google/common/util/concurrent/m$g;

    xor-int/2addr v4, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->g:Lcom/google/common/util/concurrent/m$l;

    sget-object v3, Lcom/google/common/util/concurrent/m$l;->a:Lcom/google/common/util/concurrent/m$l;

    if-eq v0, v3, :cond_5a

    new-instance v3, Lcom/google/common/util/concurrent/m$l;

    invoke-direct {v3}, Lcom/google/common/util/concurrent/m$l;-><init>()V

    :cond_25
    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/m$l;->a(Lcom/google/common/util/concurrent/m$l;)V

    sget-object v4, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v4, p0, v0, v3}, Lcom/google/common/util/concurrent/m$b;->c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z

    move-result v0

    if-eqz v0, :cond_54

    :cond_30
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    if-eqz v0, :cond_3f

    const/4 v4, 0x1

    goto :goto_40

    :cond_3f
    const/4 v4, 0x0

    :goto_40
    instance-of v5, v0, Lcom/google/common/util/concurrent/m$g;

    xor-int/2addr v5, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4b
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/m;->A(Lcom/google/common/util/concurrent/m$l;)V

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_54
    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->g:Lcom/google/common/util/concurrent/m$l;

    sget-object v4, Lcom/google/common/util/concurrent/m$l;->a:Lcom/google/common/util/concurrent/m$l;

    if-ne v0, v4, :cond_25

    :cond_5a
    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_64
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1c6

    iget-object v6, v0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    const/4 v8, 0x1

    if-eqz v6, :cond_17

    const/4 v9, 0x1

    goto :goto_18

    :cond_17
    const/4 v9, 0x0

    :goto_18
    instance-of v10, v6, Lcom/google/common/util/concurrent/m$g;

    xor-int/2addr v10, v8

    and-int/2addr v9, v10

    if-eqz v9, :cond_23

    invoke-direct {v0, v6}, Lcom/google/common/util/concurrent/m;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_23
    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_2f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v4

    goto :goto_30

    :cond_2f
    move-wide v11, v9

    :goto_30
    const-wide/16 v13, 0x3e8

    cmp-long v6, v4, v13

    if-ltz v6, :cond_8e

    iget-object v6, v0, Lcom/google/common/util/concurrent/m;->g:Lcom/google/common/util/concurrent/m$l;

    sget-object v15, Lcom/google/common/util/concurrent/m$l;->a:Lcom/google/common/util/concurrent/m$l;

    if-eq v6, v15, :cond_84

    new-instance v15, Lcom/google/common/util/concurrent/m$l;

    invoke-direct {v15}, Lcom/google/common/util/concurrent/m$l;-><init>()V

    :cond_41
    invoke-virtual {v15, v6}, Lcom/google/common/util/concurrent/m$l;->a(Lcom/google/common/util/concurrent/m$l;)V

    sget-object v7, Lcom/google/common/util/concurrent/m;->c:Lcom/google/common/util/concurrent/m$b;

    invoke-virtual {v7, v0, v6, v15}, Lcom/google/common/util/concurrent/m$b;->c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z

    move-result v6

    if-eqz v6, :cond_7e

    :cond_4c
    invoke-static {v0, v4, v5}, Lcom/google/common/util/concurrent/n0;->a(Ljava/lang/Object;J)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_75

    iget-object v4, v0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    if-eqz v4, :cond_5b

    const/4 v5, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v5, 0x0

    :goto_5c
    instance-of v6, v4, Lcom/google/common/util/concurrent/m$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_67

    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/m;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    cmp-long v6, v4, v13

    if-gez v6, :cond_4c

    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/m;->A(Lcom/google/common/util/concurrent/m$l;)V

    goto :goto_8e

    :cond_75
    invoke-direct {v0, v15}, Lcom/google/common/util/concurrent/m;->A(Lcom/google/common/util/concurrent/m$l;)V

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_7e
    iget-object v6, v0, Lcom/google/common/util/concurrent/m;->g:Lcom/google/common/util/concurrent/m$l;

    sget-object v7, Lcom/google/common/util/concurrent/m$l;->a:Lcom/google/common/util/concurrent/m$l;

    if-ne v6, v7, :cond_41

    :cond_84
    iget-object v1, v0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/m;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_8e
    :goto_8e
    cmp-long v6, v4, v9

    if-lez v6, :cond_b7

    iget-object v4, v0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    if-eqz v4, :cond_98

    const/4 v5, 0x1

    goto :goto_99

    :cond_98
    const/4 v5, 0x0

    :goto_99
    instance-of v6, v4, Lcom/google/common/util/concurrent/m$g;

    xor-int/2addr v6, v8

    and-int/2addr v5, v6

    if-eqz v5, :cond_a4

    invoke-direct {v0, v4}, Lcom/google/common/util/concurrent/m;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_a4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_b1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v11, v4

    goto :goto_8e

    :cond_b1
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/m;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Waited "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-long v11, v4, v13

    cmp-long v15, v11, v9

    if-gez v15, :cond_183

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v11, " (plus "

    invoke-virtual {v2, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    neg-long v4, v4

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v11}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    sub-long v4, v4, v17

    cmp-long v3, v11, v9

    if-eqz v3, :cond_119

    cmp-long v9, v4, v13

    if-lez v9, :cond_116

    goto :goto_119

    :cond_116
    const/16 v16, 0x0

    goto :goto_11b

    :cond_119
    :goto_119
    const/16 v16, 0x1

    :goto_11b
    if-lez v3, :cond_159

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v16, :cond_151

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_151
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_159
    if-eqz v16, :cond_179

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " nanoseconds "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_179
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay)"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_183
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/util/concurrent/m;->isDone()Z

    move-result v1

    if-eqz v1, :cond_199

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " but future completed as timeout expired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_199
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c6
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
.end method

.method public isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/common/util/concurrent/m$c;

    return v0
.end method

.method public isDone()Z
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/m;->e:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    instance-of v0, v0, Lcom/google/common/util/concurrent/m$g;

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method protected m()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.common.util.concurrent."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "CANCELLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a

    :cond_4d
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->isDone()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m;->k(Ljava/lang/StringBuilder;)V

    goto :goto_5a

    :cond_57
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m;->l(Ljava/lang/StringBuilder;)V

    :goto_5a
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected w()V
    .registers 1

    return-void
.end method

.method final x(Ljava/util/concurrent/Future;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m;->E()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_13
    return-void
.end method

.method protected y()Ljava/lang/String;
    .registers 5

    instance-of v0, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_26

    move-object v0, p0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "remaining delay=["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.m.a (com.google.common.util.concurrent.m$a)
.class synthetic Lcom/google/common/util/concurrent/m$a;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.common.util.concurrent.m.b (com.google.common.util.concurrent.m$b)
.class abstract Lcom/google/common/util/concurrent/m$b;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/m$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m$b;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;Lcom/google/common/util/concurrent/m$e;)Z
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
.end method

.method abstract b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z
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
.end method

.method abstract c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z
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
.end method

.method abstract d(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;
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
.end method

.method abstract e(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;
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
.end method

.method abstract f(Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)V
.end method

.method abstract g(Lcom/google/common/util/concurrent/m$l;Ljava/lang/Thread;)V
.end method

###### Class com.google.common.util.concurrent.m.c (com.google.common.util.concurrent.m$c)
.class final Lcom/google/common/util/concurrent/m$c;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/m$c;

.field static final b:Lcom/google/common/util/concurrent/m$c;


# instance fields
.field final c:Z

.field final d:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-boolean v0, Lcom/google/common/util/concurrent/m;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    sput-object v1, Lcom/google/common/util/concurrent/m$c;->b:Lcom/google/common/util/concurrent/m$c;

    sput-object v1, Lcom/google/common/util/concurrent/m$c;->a:Lcom/google/common/util/concurrent/m$c;

    goto :goto_1a

    :cond_a
    new-instance v0, Lcom/google/common/util/concurrent/m$c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/m$c;->b:Lcom/google/common/util/concurrent/m$c;

    new-instance v0, Lcom/google/common/util/concurrent/m$c;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/m$c;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/m$c;->a:Lcom/google/common/util/concurrent/m$c;

    :goto_1a
    return-void
.end method

.method constructor <init>(ZLjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/m$c;->c:Z

    iput-object p2, p0, Lcom/google/common/util/concurrent/m$c;->d:Ljava/lang/Throwable;

    return-void
.end method

###### Class com.google.common.util.concurrent.m.d (com.google.common.util.concurrent.m$d)
.class final Lcom/google/common/util/concurrent/m$d;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/m$d;


# instance fields
.field final b:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/common/util/concurrent/m$d;

    new-instance v1, Lcom/google/common/util/concurrent/m$d$a;

    const-string v2, "Failure occurred while trying to finish a future."

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/m$d$a;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/m$d;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/m$d;->a:Lcom/google/common/util/concurrent/m$d;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/m$d;->b:Ljava/lang/Throwable;

    return-void
.end method

###### Class com.google.common.util.concurrent.m.d.a (com.google.common.util.concurrent.m$d$a)
.class Lcom/google/common/util/concurrent/m$d$a;
.super Ljava/lang/Throwable;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized fillInStackTrace()Ljava/lang/Throwable;
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-object p0
.end method

###### Class com.google.common.util.concurrent.m.e (com.google.common.util.concurrent.m$e)
.class final Lcom/google/common/util/concurrent/m$e;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/m$e;


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/concurrent/Executor;

.field d:Lcom/google/common/util/concurrent/m$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/m$e;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/m$e;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/m$e;->a:Lcom/google/common/util/concurrent/m$e;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/m$e;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/google/common/util/concurrent/m$e;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/m$e;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/google/common/util/concurrent/m$e;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

###### Class com.google.common.util.concurrent.m.f (com.google.common.util.concurrent.m$f)
.class final Lcom/google/common/util/concurrent/m$f;
.super Lcom/google/common/util/concurrent/m$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m$l;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m$l;",
            "Lcom/google/common/util/concurrent/m$l;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m;",
            "Lcom/google/common/util/concurrent/m$l;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m;",
            "Lcom/google/common/util/concurrent/m$e;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m$l;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m$l;",
            "Lcom/google/common/util/concurrent/m$l;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m;",
            "Lcom/google/common/util/concurrent/m$l;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m;",
            "Lcom/google/common/util/concurrent/m$e;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/common/util/concurrent/m;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m$b;-><init>(Lcom/google/common/util/concurrent/m$a;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/m$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lcom/google/common/util/concurrent/m$f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p3, p0, Lcom/google/common/util/concurrent/m$f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p4, p0, Lcom/google/common/util/concurrent/m$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p5, p0, Lcom/google/common/util/concurrent/m$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

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

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$f;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/m$e;

    return-object p1
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

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$f;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/m$l;

    return-object p1
.end method

.method f(Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$f;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method g(Lcom/google/common/util/concurrent/m$l;Ljava/lang/Thread;)V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.common.util.concurrent.m.g (com.google.common.util.concurrent.m$g)
.class final Lcom/google/common/util/concurrent/m$g;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
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
.field final a:Lcom/google/common/util/concurrent/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/h0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/m<",
            "TV;>;",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    iput-object p2, p0, Lcom/google/common/util/concurrent/m$g;->b:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    invoke-static {v0}, Lcom/google/common/util/concurrent/m;->c(Lcom/google/common/util/concurrent/m;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/m$g;->b:Lcom/google/common/util/concurrent/h0;

    invoke-static {v0}, Lcom/google/common/util/concurrent/m;->e(Lcom/google/common/util/concurrent/h0;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/google/common/util/concurrent/m;->b()Lcom/google/common/util/concurrent/m$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/common/util/concurrent/m$b;->b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$g;->a:Lcom/google/common/util/concurrent/m;

    invoke-static {v0}, Lcom/google/common/util/concurrent/m;->f(Lcom/google/common/util/concurrent/m;)V

    :cond_20
    return-void
.end method

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

###### Class com.google.common.util.concurrent.m.i (com.google.common.util.concurrent.m$i)
.class interface abstract Lcom/google/common/util/concurrent/m$i;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/h0<",
        "TV;>;"
    }
.end annotation

###### Class com.google.common.util.concurrent.m.j (com.google.common.util.concurrent.m$j)
.class abstract Lcom/google/common/util/concurrent/m$j;
.super Lcom/google/common/util/concurrent/m;
.source "AbstractFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/m$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/m<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/m$i<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/util/concurrent/m;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final cancel(Z)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/m;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public final get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/util/concurrent/m;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/m;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final isCancelled()Z
    .registers 2

    invoke-super {p0}, Lcom/google/common/util/concurrent/m;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .registers 2

    invoke-super {p0}, Lcom/google/common/util/concurrent/m;->isDone()Z

    move-result v0

    return v0
.end method

###### Class com.google.common.util.concurrent.m.k (com.google.common.util.concurrent.m$k)
.class final Lcom/google/common/util/concurrent/m$k;
.super Lcom/google/common/util/concurrent/m$b;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# static fields
.field static final a:Lsun/misc/Unsafe;

.field static final b:J

.field static final c:J

.field static final d:J

.field static final e:J

.field static final f:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v0, Lcom/google/common/util/concurrent/m$l;

    :try_start_2
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_6} :catch_7

    goto :goto_12

    :catch_7
    :try_start_7
    new-instance v1, Lcom/google/common/util/concurrent/m$k$a;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/m$k$a;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_12
    .catch Ljava/security/PrivilegedActionException; {:try_start_7 .. :try_end_12} :catch_5d

    :goto_12
    :try_start_12
    const-class v2, Lcom/google/common/util/concurrent/m;

    const-string v3, "g"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/common/util/concurrent/m$k;->c:J

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    sput-wide v3, Lcom/google/common/util/concurrent/m$k;->b:J

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/m$k;->d:J

    const-string v2, "b"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/m$k;->e:J

    const-string v2, "c"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lcom/google/common/util/concurrent/m$k;->f:J

    sput-object v1, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "Could not initialize intrinsics"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/m$b;-><init>(Lcom/google/common/util/concurrent/m$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/m$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m$k;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;Lcom/google/common/util/concurrent/m$e;)Z
    .registers 10
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

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/m$k;->b:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method b(Lcom/google/common/util/concurrent/m;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
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

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/m$k;->d:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z
    .registers 10
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

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/util/concurrent/m$k;->c:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;)Lcom/google/common/util/concurrent/m$e;
    .registers 5
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

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->g(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$e;

    move-result-object v0

    if-ne p2, v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/m$k;->a(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$e;Lcom/google/common/util/concurrent/m$e;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method e(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;)Lcom/google/common/util/concurrent/m$l;
    .registers 5
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

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/m;->i(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/m$l;

    move-result-object v0

    if-ne p2, v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/common/util/concurrent/m$k;->c(Lcom/google/common/util/concurrent/m;Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method f(Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)V
    .registers 6

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/common/util/concurrent/m$k;->f:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method g(Lcom/google/common/util/concurrent/m$l;Ljava/lang/Thread;)V
    .registers 6

    sget-object v0, Lcom/google/common/util/concurrent/m$k;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/common/util/concurrent/m$k;->e:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

###### Class com.google.common.util.concurrent.m.k.a (com.google.common.util.concurrent.m$k$a)
.class Lcom/google/common/util/concurrent/m$k$a;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lsun/misc/Unsafe;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v2, :cond_25

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;

    return-object v0

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    new-instance v0, Ljava/lang/NoSuchFieldError;

    const-string v1, "the Unsafe"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/m$k$a;->a()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.util.concurrent.m.l (com.google.common.util.concurrent.m$l)
.class final Lcom/google/common/util/concurrent/m$l;
.super Ljava/lang/Object;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# static fields
.field static final a:Lcom/google/common/util/concurrent/m$l;


# instance fields
.field volatile b:Ljava/lang/Thread;

.field volatile c:Lcom/google/common/util/concurrent/m$l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/common/util/concurrent/m$l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/m$l;-><init>(Z)V

    sput-object v0, Lcom/google/common/util/concurrent/m$l;->a:Lcom/google/common/util/concurrent/m$l;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/util/concurrent/m;->b()Lcom/google/common/util/concurrent/m$b;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/common/util/concurrent/m$b;->g(Lcom/google/common/util/concurrent/m$l;Ljava/lang/Thread;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/m$l;)V
    .registers 3

    invoke-static {}, Lcom/google/common/util/concurrent/m;->b()Lcom/google/common/util/concurrent/m$b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/m$b;->f(Lcom/google/common/util/concurrent/m$l;Lcom/google/common/util/concurrent/m$l;)V

    return-void
.end method

.method b()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/m$l;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/util/concurrent/m$l;->b:Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_a
    return-void
.end method
