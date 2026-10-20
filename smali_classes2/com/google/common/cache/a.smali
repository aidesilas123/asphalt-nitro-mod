###### Class com.google.common.cache.a (com.google.common.cache.a)
.class public final synthetic Lcom/google/common/cache/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/cache/h;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lcom/google/common/cache/h;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/cache/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/cache/a;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/cache/a;->b:Lcom/google/common/cache/h;

    return-void
.end method
