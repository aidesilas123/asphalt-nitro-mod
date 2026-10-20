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
