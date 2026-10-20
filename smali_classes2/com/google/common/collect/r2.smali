###### Class com.google.common.collect.r2 (com.google.common.collect.r2)
.class final Lcom/google/common/collect/r2;
.super Lcom/google/common/collect/ImmutableSet;
.source "RegularImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/Object;

.field static final d:Lcom/google/common/collect/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient e:[Ljava/lang/Object;

.field private final transient f:I

.field final transient g:[Ljava/lang/Object;

.field private final transient h:I

.field private final transient i:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    sput-object v4, Lcom/google/common/collect/r2;->c:[Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/r2;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lcom/google/common/collect/r2;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lcom/google/common/collect/r2;->d:Lcom/google/common/collect/r2;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .registers 6

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/r2;->e:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/r2;->f:I

    iput-object p3, p0, Lcom/google/common/collect/r2;->g:[Ljava/lang/Object;

    iput p4, p0, Lcom/google/common/collect/r2;->h:I

    iput p5, p0, Lcom/google/common/collect/r2;->i:I

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/r2;->g:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    array-length v2, v0

    if-nez v2, :cond_9

    goto :goto_20

    :cond_9
    invoke-static {p1}, Lcom/google/common/collect/l1;->d(Ljava/lang/Object;)I

    move-result v2

    :goto_d
    iget v3, p0, Lcom/google/common/collect/r2;->h:I

    and-int/2addr v2, v3

    aget-object v3, v0, v2

    if-nez v3, :cond_15

    return v1

    :cond_15
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 p1, 0x1

    return p1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    :goto_20
    return v1
.end method

.method f([Ljava/lang/Object;I)I
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/r2;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/r2;->i:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/common/collect/r2;->i:I

    add-int/2addr p2, p1

    return p2
.end method

.method g()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/r2;->e:[Ljava/lang/Object;

    return-object v0
.end method

.method h()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/r2;->i:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/r2;->f:I

    return v0
.end method

.method i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/r2;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method j()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public n()Lcom/google/common/collect/o3;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/o3<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->n()Lcom/google/common/collect/o3;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/google/common/collect/r2;->i:I

    return v0
.end method

.method y()Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/r2;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/r2;->i:I

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableList;->t([Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method z()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
