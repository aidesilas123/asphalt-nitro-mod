###### Class com.google.common.util.concurrent.Futures.c (com.google.common.util.concurrent.Futures$c)
.class Lcom/google/common/util/concurrent/Futures$c;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->inCompletionOrder(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/Futures$g;

.field final synthetic b:Lcom/google/common/collect/ImmutableList;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/collect/ImmutableList;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$c;->a:Lcom/google/common/util/concurrent/Futures$g;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$c;->b:Lcom/google/common/collect/ImmutableList;

    iput p3, p0, Lcom/google/common/util/concurrent/Futures$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$c;->a:Lcom/google/common/util/concurrent/Futures$g;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$c;->b:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Lcom/google/common/util/concurrent/Futures$c;->c:I

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures$g;->a(Lcom/google/common/util/concurrent/Futures$g;Lcom/google/common/collect/ImmutableList;I)V

    return-void
.end method
