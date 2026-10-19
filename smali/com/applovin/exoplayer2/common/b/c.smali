###### Class com.applovin.exoplayer2.common.b.c (com.applovin.exoplayer2.common.b.c)
.class public final Lcom/applovin/exoplayer2/common/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/b/c$a;
    }
.end annotation


# direct methods
.method private static a([IIII)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_a

    aget v0, p0, p2

    if-ne v0, p1, :cond_7

    return p2

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_a
    const/4 p0, -0x1

    return p0
.end method

.method public static ad(J)I
    .registers 6

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v3, v1, p0

    if-nez v3, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    const-string v2, "Out of range: %s"

    invoke-static {v1, v2, p0, p1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    return v0
.end method

.method private static b([IIII)I
    .registers 5

    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-lt p3, p2, :cond_c

    aget v0, p0, p3

    if-ne v0, p1, :cond_9

    return p3

    :cond_9
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method public static bq(I)I
    .registers 1

    return p0
.end method

.method static synthetic c([IIII)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/common/b/c;->a([IIII)I

    move-result p0

    return p0
.end method

.method static synthetic d([IIII)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/applovin/exoplayer2/common/b/c;->b([IIII)I

    move-result p0

    return p0
.end method

.method public static varargs d([I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance v0, Lcom/applovin/exoplayer2/common/b/c$a;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/b/c$a;-><init>([I)V

    return-object v0
.end method

.method public static f(Ljava/util/Collection;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    instance-of v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/applovin/exoplayer2/common/b/c$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/b/c$a;->gW()[I

    move-result-object p0

    return-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_26

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_26
    return-object v1
.end method

.method public static w(II)I
    .registers 2

    if-ge p0, p1, :cond_4

    const/4 p0, -0x1

    goto :goto_9

    :cond_4
    if-le p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

###### Class com.applovin.exoplayer2.common.b.c.a (com.applovin.exoplayer2.common.b.c$a)
.class Lcom/applovin/exoplayer2/common/b/c$a;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final end:I

.field final rj:[I

.field final start:I


# direct methods
.method constructor <init>([I)V
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/applovin/exoplayer2/common/b/c$a;-><init>([III)V

    return-void
.end method

.method constructor <init>([III)V
    .registers 4

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iput p2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    iput p3, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)Ljava/lang/Integer;
    .registers 6

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/b/c$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    add-int v2, v1, p1

    aget v2, v0, v2

    add-int/2addr v1, p1

    invoke-static {p2}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public br(I)Ljava/lang/Integer;
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/b/c$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    invoke-static {v0, p1, v1, v2}, Lcom/applovin/exoplayer2/common/b/c;->c([IIII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/exoplayer2/common/b/c$a;

    if-eqz v1, :cond_2e

    check-cast p1, Lcom/applovin/exoplayer2/common/b/c$a;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/b/c$a;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/common/b/c$a;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_16

    return v3

    :cond_16
    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_2d

    iget-object v4, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iget v5, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    add-int/2addr v5, v2

    aget v4, v4, v5

    iget-object v5, p1, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iget v6, p1, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    add-int/2addr v6, v2

    aget v5, v5, v6

    if-eq v4, v5, :cond_2a

    return v3

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2d
    return v0

    :cond_2e
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method gW()[I
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/b/c$a;->br(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    const/4 v1, 0x1

    :goto_3
    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/applovin/exoplayer2/common/b/c;->bq(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    invoke-static {v0, p1, v1, v2}, Lcom/applovin/exoplayer2/common/b/c;->c([IIII)I

    move-result p1

    if-ltz p1, :cond_1a

    iget v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    invoke-static {v0, p1, v1, v2}, Lcom/applovin/exoplayer2/common/b/c;->d([IIII)I

    move-result p1

    if-ltz p1, :cond_1a

    iget v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    sub-int/2addr p1, v0

    return p1

    :cond_1a
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/b/c$a;->a(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/b/c$a;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkPositionIndexes(III)V

    if-ne p1, p2, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance v0, Lcom/applovin/exoplayer2/common/b/c$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/applovin/exoplayer2/common/b/c$a;-><init>([III)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/b/c$a;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/exoplayer2/common/b/c$a;->start:I

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->end:I

    if-ge v1, v2, :cond_2e

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/b/c$a;->rj:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_2e
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
