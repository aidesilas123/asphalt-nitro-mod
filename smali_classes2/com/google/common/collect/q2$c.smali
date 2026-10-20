###### Class com.google.common.collect.q2.c (com.google.common.collect.q2$c)
.class Lcom/google/common/collect/q2$c;
.super Ljava/lang/Object;
.source "RegularImmutableMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/c2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/c2<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/q2$c;->b:[I

    invoke-interface {p1}, Lcom/google/common/collect/c2;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/c2$a;

    iget-object v2, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->c()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/google/common/collect/q2$c;->b:[I

    invoke-interface {v1}, Lcom/google/common/collect/c2$a;->getCount()I

    move-result v1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_3b
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$b;

    iget-object v1, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$b;-><init>(I)V

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/google/common/collect/q2$c;->a:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/q2$c;->b:[I

    aget v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMultiset$b;->j(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$b;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset$b;->k()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
