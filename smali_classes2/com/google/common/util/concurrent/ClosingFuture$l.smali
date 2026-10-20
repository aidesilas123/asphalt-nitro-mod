###### Class com.google.common.util.concurrent.ClosingFuture.l (com.google.common.util.concurrent.ClosingFuture$l)
.class public Lcom/google/common/util/concurrent/ClosingFuture$l;
.super Ljava/lang/Object;
.source "ClosingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/f<",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/common/util/concurrent/ClosingFuture$j;

.field private final c:Z

.field protected final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$l$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ClosingFuture$l$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/ClosingFuture$l;->a:Lcom/google/common/base/f;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$j;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$c;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$l;->b:Lcom/google/common/util/concurrent/ClosingFuture$j;

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$l;->c:Z

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$l;->d:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/util/concurrent/ClosingFuture;

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$l;->b:Lcom/google/common/util/concurrent/ClosingFuture$j;

    invoke-static {p2, v0}, Lcom/google/common/util/concurrent/ClosingFuture;->c(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$j;)V

    goto :goto_17

    :cond_29
    return-void
.end method

.method synthetic constructor <init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/ClosingFuture$c;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$l;-><init>(ZLjava/lang/Iterable;)V

    return-void
.end method
