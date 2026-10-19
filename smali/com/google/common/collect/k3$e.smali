###### Class com.google.common.collect.k3.e (com.google.common.collect.k3$e)
.class Lcom/google/common/collect/k3$e;
.super Lcom/google/common/collect/k3$k;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/w;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k3$k<",
        "TK;TV;>;",
        "Lcom/google/common/collect/w<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient g:Lcom/google/common/collect/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/k3$k;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/common/collect/k3$e;->g:Lcom/google/common/collect/w;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;Lcom/google/common/collect/k3$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/k3$e;-><init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;)V

    return-void
.end method


# virtual methods
.method bridge synthetic B()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/k3$e;->C()Lcom/google/common/collect/w;

    move-result-object v0

    return-object v0
.end method

.method C()Lcom/google/common/collect/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/k3$k;->B()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/w;

    return-object v0
.end method

.method public M()Lcom/google/common/collect/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w<",
            "TV;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/common/collect/k3$e;->g:Lcom/google/common/collect/w;

    if-nez v1, :cond_18

    new-instance v1, Lcom/google/common/collect/k3$e;

    invoke-virtual {p0}, Lcom/google/common/collect/k3$e;->C()Lcom/google/common/collect/w;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/w;->M()Lcom/google/common/collect/w;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p0}, Lcom/google/common/collect/k3$e;-><init>(Lcom/google/common/collect/w;Ljava/lang/Object;Lcom/google/common/collect/w;)V

    iput-object v1, p0, Lcom/google/common/collect/k3$e;->g:Lcom/google/common/collect/w;

    :cond_18
    iget-object v1, p0, Lcom/google/common/collect/k3$e;->g:Lcom/google/common/collect/w;

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/k3$e;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/common/collect/k3$e;->f:Ljava/util/Set;

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/google/common/collect/k3$e;->C()Lcom/google/common/collect/w;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/w;->values()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/k3$o;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/k3;->t(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/k3$e;->f:Ljava/util/Set;

    :cond_17
    iget-object v1, p0, Lcom/google/common/collect/k3$e;->f:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
