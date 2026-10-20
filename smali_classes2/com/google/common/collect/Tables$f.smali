###### Class com.google.common.collect.Tables.f (com.google.common.collect.Tables$f)
.class final Lcom/google/common/collect/Tables$f;
.super Lcom/google/common/collect/Tables$g;
.source "Tables.java"

# interfaces
.implements Lcom/google/common/collect/x2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
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
        "Lcom/google/common/collect/Tables$g<",
        "TR;TC;TV;>;",
        "Lcom/google/common/collect/x2<",
        "TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x2;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x2<",
            "TR;+TC;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/Tables$g;-><init>(Lcom/google/common/collect/l3;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic B()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$f;->D()Lcom/google/common/collect/x2;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic C()Lcom/google/common/collect/l3;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$f;->D()Lcom/google/common/collect/x2;

    move-result-object v0

    return-object v0
.end method

.method protected D()Lcom/google/common/collect/x2;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Tables$g;->C()Lcom/google/common/collect/l3;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/x2;

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$f;->h()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$f;->D()Lcom/google/common/collect/x2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/x2;->h()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/util/Map;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$f;->j()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Tables;->a()Lcom/google/common/base/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/Tables$f;->D()Lcom/google/common/collect/x2;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/x2;->j()Ljava/util/SortedMap;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/SortedMap;Lcom/google/common/base/f;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
