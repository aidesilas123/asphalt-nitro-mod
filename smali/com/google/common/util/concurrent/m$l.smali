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
