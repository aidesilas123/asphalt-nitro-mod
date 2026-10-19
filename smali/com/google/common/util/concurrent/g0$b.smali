###### Class com.google.common.util.concurrent.g0.b (com.google.common.util.concurrent.g0$b)
.class final Lcom/google/common/util/concurrent/g0$b;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/g0<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/g0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/g0<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/g0$b;->a:Lcom/google/common/util/concurrent/g0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/g0;Lcom/google/common/util/concurrent/g0$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/g0$b;-><init>(Lcom/google/common/util/concurrent/g0;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/g0$b;Ljava/lang/Thread;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/g0$b;->b(Ljava/lang/Thread;)V

    return-void
.end method

.method private b(Ljava/lang/Thread;)V
    .registers 2

    invoke-super {p0, p1}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->setExclusiveOwnerThread(Ljava/lang/Thread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/g0$b;->a:Lcom/google/common/util/concurrent/g0;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/g0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
