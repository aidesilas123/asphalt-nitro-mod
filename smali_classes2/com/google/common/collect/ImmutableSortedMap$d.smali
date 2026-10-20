###### Class com.google.common.collect.ImmutableSortedMap.d (com.google.common.collect.ImmutableSortedMap$d)
.class Lcom/google/common/collect/ImmutableSortedMap$d;
.super Lcom/google/common/collect/ImmutableMap$d;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap$d<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$d;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$d;->c:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method bridge synthetic d(I)Lcom/google/common/collect/ImmutableMap$b;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$d;->e(I)Lcom/google/common/collect/ImmutableSortedMap$c;

    move-result-object p1

    return-object p1
.end method

.method e(I)Lcom/google/common/collect/ImmutableSortedMap$c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ImmutableSortedMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance p1, Lcom/google/common/collect/ImmutableSortedMap$c;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$d;->c:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Lcom/google/common/collect/ImmutableSortedMap$c;-><init>(Ljava/util/Comparator;)V

    return-object p1
.end method
