###### Class com.google.common.collect.MapMakerInternalMap.b0 (com.google.common.collect.MapMakerInternalMap$b0)
.class final Lcom/google/common/collect/MapMakerInternalMap$b0;
.super Lcom/google/common/collect/MapMakerInternalMap$d;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b0"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMakerInternalMap$b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapMakerInternalMap$d<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$b0<",
        "TK;TV;>;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$d0<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$b0<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile c:Lcom/google/common/collect/MapMakerInternalMap$e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$e0<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$b0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$d;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$i;)V

    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->q()Lcom/google/common/collect/MapMakerInternalMap$e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b0;->c:Lcom/google/common/collect/MapMakerInternalMap$e0;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/MapMakerInternalMap$e0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap$e0<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b0;->c:Lcom/google/common/collect/MapMakerInternalMap$e0;

    return-object v0
.end method

.method d(Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$b0;)Lcom/google/common/collect/MapMakerInternalMap$b0;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$b0<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$b0;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$d;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$d;->a:I

    invoke-direct {v0, p1, v1, v2, p3}, Lcom/google/common/collect/MapMakerInternalMap$b0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$b0;)V

    iget-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b0;->c:Lcom/google/common/collect/MapMakerInternalMap$e0;

    invoke-interface {p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$e0;->b(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$i;)Lcom/google/common/collect/MapMakerInternalMap$e0;

    move-result-object p1

    iput-object p1, v0, Lcom/google/common/collect/MapMakerInternalMap$b0;->c:Lcom/google/common/collect/MapMakerInternalMap$e0;

    return-object v0
.end method

.method e(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b0;->c:Lcom/google/common/collect/MapMakerInternalMap$e0;

    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$f0;

    invoke-direct {v1, p2, p1, p0}, Lcom/google/common/collect/MapMakerInternalMap$f0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$i;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$b0;->c:Lcom/google/common/collect/MapMakerInternalMap$e0;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$e0;->clear()V

    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b0;->c:Lcom/google/common/collect/MapMakerInternalMap$e0;

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$e0;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
