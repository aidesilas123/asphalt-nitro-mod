###### Class com.google.common.util.concurrent.Callables (com.google.common.util.concurrent.Callables)
.class public final Lcom/google/common/util/concurrent/Callables;
.super Ljava/lang/Object;
.source "Callables.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/j0;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/j0;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/h0;

    move-result-object p0

    return-object p0
.end method

.method public static asAsyncCallable(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/j0;)Lcom/google/common/util/concurrent/r;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/common/util/concurrent/j0;",
            ")",
            "Lcom/google/common/util/concurrent/r<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/util/concurrent/d;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/d;-><init>(Lcom/google/common/util/concurrent/j0;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method public static returning(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/c;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

###### Class com.google.common.util.concurrent.c (com.google.common.util.concurrent.c)
.class public final synthetic Lcom/google/common/util/concurrent/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/c;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Callables;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

###### Class com.google.common.util.concurrent.d (com.google.common.util.concurrent.d)
.class public final synthetic Lcom/google/common/util/concurrent/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/util/concurrent/r;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/j0;

.field public final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/j0;Ljava/util/concurrent/Callable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/d;->a:Lcom/google/common/util/concurrent/j0;

    iput-object p2, p0, Lcom/google/common/util/concurrent/d;->b:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/h0;
    .registers 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/d;->a:Lcom/google/common/util/concurrent/j0;

    iget-object v1, p0, Lcom/google/common/util/concurrent/d;->b:Ljava/util/concurrent/Callable;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Callables;->a(Lcom/google/common/util/concurrent/j0;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    return-object v0
.end method
