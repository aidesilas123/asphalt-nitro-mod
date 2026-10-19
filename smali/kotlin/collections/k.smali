###### Class kotlin.collections.k (kotlin.collections.k)
.class public final Lkotlin/collections/k;
.super Lkotlin/collections/ArraysKt___ArraysKt;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/collections/ArraysKt__ArraysJVMKt",
        "kotlin/collections/ArraysKt__ArraysKt",
        "kotlin/collections/ArraysKt___ArraysJvmKt",
        "kotlin/collections/ArraysKt___ArraysKt"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x31
.end annotation


# direct methods
.method public static bridge synthetic asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic asList([D)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([D)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic asList([I)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic asList([J)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic asSequence([Ljava/lang/Object;)Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic contains([BB)Z
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([BB)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([CC)Z
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([CC)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([II)Z
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([JJ)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([JJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic contains([SS)Z
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([SS)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic copyInto([B[BIII)[B
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([B[BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyInto([C[CIII)[C
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([C[CIII)[C

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;III)[TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyInto$default([B[BIIIILjava/lang/Object;)[B
    .registers 7

    invoke-static/range {p0 .. p6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([B[BIIIILjava/lang/Object;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    invoke-static/range {p0 .. p6}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([BII)[B
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([III)[I
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([III)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([JII)[J
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([JII)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic copyOfRange([SII)[S
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyOfRange([SII)[S

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic drop([Ljava/lang/Object;I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->drop([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic fill([BBII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([BBII)V

    return-void
.end method

.method public static bridge synthetic fill([IIII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([IIII)V

    return-void
.end method

.method public static bridge synthetic fill([JJII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([JJII)V

    return-void
.end method

.method public static bridge synthetic fill([Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;II)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public static bridge synthetic fill([SSII)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill([SSII)V

    return-void
.end method

.method public static bridge synthetic fill$default([IIIIILjava/lang/Object;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([IIIIILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic filterNotNull([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic first([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([B)Lkotlin/ranges/IntRange;
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([B)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([I)Lkotlin/ranges/IntRange;
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([I)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([J)Lkotlin/ranges/IntRange;
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([J)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getIndices([S)Lkotlin/ranges/IntRange;
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getIndices([S)Lkotlin/ranges/IntRange;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getLastIndex([B)I
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([I)I
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([J)I
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([J)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([Ljava/lang/Object;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getLastIndex([S)I
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getLastIndex([S)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic getOrNull([II)Ljava/lang/Integer;
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)TT;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic indexOf([BB)I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([BB)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([II)I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([JJ)I
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic indexOf([SS)I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->indexOf([SS)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic joinTo$default([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/Appendable;
    .registers 10

    invoke-static/range {p0 .. p9}, Lkotlin/collections/ArraysKt___ArraysKt;->joinTo$default([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;
    .registers 9

    invoke-static/range {p0 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;
    .registers 9

    invoke-static/range {p0 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic joinToString$default([SLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;
    .registers 9

    invoke-static/range {p0 .. p8}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([SLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic last([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic lastIndexOf([BB)I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([BB)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic lastIndexOf([II)I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic lastIndexOf([JJ)I
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic lastIndexOf([SS)I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->lastIndexOf([SS)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic map([Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->map([Ljava/lang/Object;Lkotlin/jvm/b/l;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic reverse([B)V
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([B)V

    return-void
.end method

.method public static bridge synthetic reverse([BII)V
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([BII)V

    return-void
.end method

.method public static bridge synthetic reverse([I)V
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([I)V

    return-void
.end method

.method public static bridge synthetic reverse([III)V
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([III)V

    return-void
.end method

.method public static bridge synthetic reverse([J)V
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([J)V

    return-void
.end method

.method public static bridge synthetic reverse([JII)V
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([JII)V

    return-void
.end method

.method public static bridge synthetic reverse([S)V
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([S)V

    return-void
.end method

.method public static bridge synthetic reverse([SII)V
    .registers 3

    invoke-static {p0, p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->reverse([SII)V

    return-void
.end method

.method public static bridge synthetic single([C)C
    .registers 1

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->single([C)C

    move-result p0

    return p0
.end method

.method public static bridge synthetic single([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->single([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->singleOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([BLjava/util/Collection;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[B"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLjava/util/Collection;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([BLkotlin/ranges/IntRange;)[B
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([BLkotlin/ranges/IntRange;)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([ILjava/util/Collection;)[I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([ILjava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([ILkotlin/ranges/IntRange;)[I
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([ILkotlin/ranges/IntRange;)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([JLjava/util/Collection;)[J
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[J"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([JLjava/util/Collection;)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([JLkotlin/ranges/IntRange;)[J
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([JLkotlin/ranges/IntRange;)[J

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([SLjava/util/Collection;)[S
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[S"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([SLjava/util/Collection;)[S

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sliceArray([SLkotlin/ranges/IntRange;)[S
    .registers 2

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sliceArray([SLkotlin/ranges/IntRange;)[S

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sort([Ljava/lang/Object;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([B)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([C)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([C)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([D)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([D)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([F)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([F)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([I)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([J)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([S)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([S)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList([Z)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toMutableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic withIndex([Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable<",
            "Lkotlin/collections/IndexedValue<",
            "TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->withIndex([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic zip([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">([TT;[TR;)",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "TT;TR;>;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->zip([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
