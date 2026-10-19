###### Class com.google.common.collect.ImmutableSortedMultiset.b (com.google.common.collect.ImmutableSortedMultiset$b)
.class final Lcom/google/common/collect/ImmutableSortedMultiset$b;
.super Ljava/lang/Object;
.source "ImmutableSortedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field final c:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/e3;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/e3<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/common/collect/e3;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->a:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/e3;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    invoke-interface {p1}, Lcom/google/common/collect/e3;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/c2$a;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_41
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    array-length v0, v0

    new-instance v1, Lcom/google/common/collect/ImmutableSortedMultiset$a;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->a:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableSortedMultiset$a;-><init>(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1b

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->b:[Ljava/lang/Object;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$b;->c:[I

    aget v4, v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->q(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$a;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1b
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSortedMultiset$a;->r()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
