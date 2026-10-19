###### Class com.google.common.collect.HashBasedTable (com.google.common.collect.HashBasedTable)
.class public Lcom/google/common/collect/HashBasedTable;
.super Lcom/google/common/collect/j3;
.source "HashBasedTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBasedTable$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/j3<",
        "TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/collect/HashBasedTable$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lcom/google/common/collect/HashBasedTable$a<",
            "TC;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/j3;-><init>(Ljava/util/Map;Lcom/google/common/base/m;)V

    return-void
.end method

.method public static create()Lcom/google/common/collect/HashBasedTable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBasedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/HashBasedTable;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lcom/google/common/collect/HashBasedTable$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/collect/HashBasedTable$a;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/HashBasedTable;-><init>(Ljava/util/Map;Lcom/google/common/collect/HashBasedTable$a;)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/HashBasedTable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/HashBasedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const-string v0, "expectedCellsPerRow"

    invoke-static {p1, v0}, Lcom/google/common/collect/z;->b(ILjava/lang/String;)I

    invoke-static {p0}, Lcom/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object p0

    new-instance v0, Lcom/google/common/collect/HashBasedTable;

    new-instance v1, Lcom/google/common/collect/HashBasedTable$a;

    invoke-direct {v1, p1}, Lcom/google/common/collect/HashBasedTable$a;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBasedTable;-><init>(Ljava/util/Map;Lcom/google/common/collect/HashBasedTable$a;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/l3;)Lcom/google/common/collect/HashBasedTable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/l3<",
            "+TR;+TC;+TV;>;)",
            "Lcom/google/common/collect/HashBasedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/HashBasedTable;->create()Lcom/google/common/collect/HashBasedTable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBasedTable;->k(Lcom/google/common/collect/l3;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/j3;->C(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic F(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/j3;->F(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clear()V
    .registers 1

    invoke-super {p0}, Lcom/google/common/collect/j3;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/j3;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/j3;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/j3;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j3;->h()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/s;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic j()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j3;->j()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k(Lcom/google/common/collect/l3;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/s;->k(Lcom/google/common/collect/l3;)V

    return-void
.end method

.method public bridge synthetic n()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j3;->n()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/j3;->s(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j3;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic t()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j3;->t()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/s;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/j3;->u(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/j3;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j3;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/common/collect/j3;->x(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic z()Ljava/util/Set;
    .registers 2

    invoke-super {p0}, Lcom/google/common/collect/j3;->z()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.collect.HashBasedTable.a (com.google.common.collect.HashBasedTable$a)
.class Lcom/google/common/collect/HashBasedTable$a;
.super Ljava/lang/Object;
.source "HashBasedTable.java"

# interfaces
.implements Lcom/google/common/base/m;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/m<",
        "Ljava/util/Map<",
        "TC;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/collect/HashBasedTable$a;->a:I

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/HashBasedTable$a;->a:I

    invoke-static {v0}, Lcom/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/HashBasedTable$a;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
