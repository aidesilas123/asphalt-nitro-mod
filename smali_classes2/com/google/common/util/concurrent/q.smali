###### Class com.google.common.util.concurrent.q (com.google.common.util.concurrent.q)
.class abstract Lcom/google/common/util/concurrent/q;
.super Lcom/google/common/util/concurrent/m$j;
.source "AggregateFutureState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/q$d;,
        Lcom/google/common/util/concurrent/q$c;,
        Lcom/google/common/util/concurrent/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/m$j<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final h:Lcom/google/common/util/concurrent/q$b;

.field private static final i:Ljava/util/logging/Logger;


# instance fields
.field private volatile j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile k:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-class v0, Lcom/google/common/util/concurrent/q;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/q;->i:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    :try_start_d
    new-instance v1, Lcom/google/common/util/concurrent/q$c;

    const-class v2, Lcom/google/common/util/concurrent/q;

    const-class v3, Ljava/util/Set;

    const-string v4, "j"

    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/common/util/concurrent/q;

    const-string v4, "k"

    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/common/util/concurrent/q$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_25

    goto :goto_2d

    :catchall_25
    move-exception v1

    new-instance v2, Lcom/google/common/util/concurrent/q$d;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/q$d;-><init>(Lcom/google/common/util/concurrent/q$a;)V

    move-object v0, v1

    move-object v1, v2

    :goto_2d
    sput-object v1, Lcom/google/common/util/concurrent/q;->h:Lcom/google/common/util/concurrent/q$b;

    if-eqz v0, :cond_3a

    sget-object v1, Lcom/google/common/util/concurrent/q;->i:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/util/concurrent/m$j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/q;->j:Ljava/util/Set;

    iput p1, p0, Lcom/google/common/util/concurrent/q;->k:I

    return-void
.end method

.method static synthetic F(Lcom/google/common/util/concurrent/q;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/q;->j:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic G(Lcom/google/common/util/concurrent/q;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/google/common/util/concurrent/q;->j:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic H(Lcom/google/common/util/concurrent/q;)I
    .registers 2

    iget v0, p0, Lcom/google/common/util/concurrent/q;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/q;->k:I

    return v0
.end method


# virtual methods
.method abstract I(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method final J()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/q;->j:Ljava/util/Set;

    return-void
.end method

.method final K()I
    .registers 2

    sget-object v0, Lcom/google/common/util/concurrent/q;->h:Lcom/google/common/util/concurrent/q$b;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/q$b;->b(Lcom/google/common/util/concurrent/q;)I

    move-result v0

    return v0
.end method

.method final L()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/q;->j:Ljava/util/Set;

    if-nez v0, :cond_18

    invoke-static {}, Lcom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/q;->I(Ljava/util/Set;)V

    sget-object v1, Lcom/google/common/util/concurrent/q;->h:Lcom/google/common/util/concurrent/q$b;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/q$b;->a(Lcom/google/common/util/concurrent/q;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/q;->j:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    :cond_18
    return-object v0
.end method
