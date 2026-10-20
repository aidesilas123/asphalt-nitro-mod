###### Class com.google.common.collect.Tables.e (com.google.common.collect.Tables$e)
.class Lcom/google/common/collect/Tables$e;
.super Lcom/google/common/collect/s;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/s<",
        "TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final c:Lcom/google/common/base/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/f<",
            "Lcom/google/common/collect/l3$a<",
            "***>;",
            "Lcom/google/common/collect/l3$a<",
            "***>;>;"
        }
    .end annotation
.end field


# instance fields
.field final d:Lcom/google/common/collect/l3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/collect/Tables$e$a;

    invoke-direct {v0}, Lcom/google/common/collect/Tables$e$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/Tables$e;->c:Lcom/google/common/base/f;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/l3;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/l3<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/s;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/l3;

    iput-object p1, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    return-void
.end method


# virtual methods
.method c()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/l3$a<",
            "TC;TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->t()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/Tables$e;->c:Lcom/google/common/base/f;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lcom/google/common/base/f;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0, p1}, Lcom/google/common/collect/l3;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->z()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->n()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->j()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->size()I

    move-result v0

    return v0
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0, p2, p1, p3}, Lcom/google/common/collect/l3;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Tables$e;->d:Lcom/google/common/collect/l3;

    invoke-interface {v0}, Lcom/google/common/collect/l3;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
