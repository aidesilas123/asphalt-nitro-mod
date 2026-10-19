###### Class com.google.common.collect.MapMakerInternalMap.c0 (com.google.common.collect.MapMakerInternalMap$c0)
.class final Lcom/google/common/collect/MapMakerInternalMap$c0;
.super Lcom/google/common/collect/MapMakerInternalMap$n;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$n<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$b0<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$c0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$c0<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$n;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$c0;->h:Ljava/lang/ref/ReferenceQueue;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$c0;->i:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic K(Lcom/google/common/collect/MapMakerInternalMap$c0;)Ljava/lang/ref/ReferenceQueue;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$c0;->h:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method static synthetic L(Lcom/google/common/collect/MapMakerInternalMap$c0;)Ljava/lang/ref/ReferenceQueue;
    .registers 1

    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$c0;->i:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method bridge synthetic H()Lcom/google/common/collect/MapMakerInternalMap$n;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$c0;->M()Lcom/google/common/collect/MapMakerInternalMap$c0;

    move-result-object v0

    return-object v0
.end method

.method M()Lcom/google/common/collect/MapMakerInternalMap$c0;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$c0<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method s()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$c0;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$n;->d(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method t()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$c0;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$n;->g(Ljava/lang/ref/ReferenceQueue;)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$c0;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$n;->h(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method
