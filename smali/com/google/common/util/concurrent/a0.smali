###### Class com.google.common.util.concurrent.a0 (com.google.common.util.concurrent.a0)
.class public abstract Lcom/google/common/util/concurrent/a0;
.super Lcom/google/common/util/concurrent/z;
.source "ForwardingListenableFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/z<",
        "TV;>;",
        "Lcom/google/common/util/concurrent/h0<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/util/concurrent/z;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract D()Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/h0<",
            "+TV;>;"
        }
    .end annotation
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0;->D()Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/h0;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

###### Class com.google.common.util.concurrent.a0.a (com.google.common.util.concurrent.a0$a)
.class public abstract Lcom/google/common/util/concurrent/a0$a;
.super Lcom/google/common/util/concurrent/a0;
.source "ForwardingListenableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/a0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/h0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/util/concurrent/a0;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/h0;

    iput-object p1, p0, Lcom/google/common/util/concurrent/a0$a;->a:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0$a;->D()Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic C()Ljava/util/concurrent/Future;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a0$a;->D()Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    return-object v0
.end method

.method protected final D()Lcom/google/common/util/concurrent/h0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/h0<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/a0$a;->a:Lcom/google/common/util/concurrent/h0;

    return-object v0
.end method
