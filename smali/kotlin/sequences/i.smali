###### Class kotlin.sequences.i (kotlin.sequences.i)
.class public final Lkotlin/sequences/i;
.super Lkotlin/sequences/SequencesKt___SequencesKt;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlin/sequences/SequencesKt__SequenceBuilderKt",
        "kotlin/sequences/SequencesKt__SequencesJVMKt",
        "kotlin/sequences/SequencesKt__SequencesKt",
        "kotlin/sequences/SequencesKt___SequencesJvmKt",
        "kotlin/sequences/SequencesKt___SequencesKt"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x31
.end annotation


# direct methods
.method public static bridge synthetic asIterable(Lkotlin/sequences/f;)Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->asIterable(Lkotlin/sequences/f;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic asSequence(Ljava/util/Iterator;)Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic constrainOnce(Lkotlin/sequences/f;)Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->constrainOnce(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic count(Lkotlin/sequences/f;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)I"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->count(Lkotlin/sequences/f;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic distinct(Lkotlin/sequences/f;)Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->distinct(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic drop(Lkotlin/sequences/f;I)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;I)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->drop(Lkotlin/sequences/f;I)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic emptySequence()Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/sequences/SequencesKt__SequencesKt;->emptySequence()Lkotlin/sequences/f;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic filter(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic filterNot(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNot(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic filterNotNull(Lkotlin/sequences/f;)Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->filterNotNull(Lkotlin/sequences/f;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic firstOrNull(Lkotlin/sequences/f;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->firstOrNull(Lkotlin/sequences/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic flatMap(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+",
            "Lkotlin/sequences/f<",
            "+TR;>;>;)",
            "Lkotlin/sequences/f<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->flatMap(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic generateSequence(Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic generateSequence(Lkotlin/jvm/b/a;)Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence(Lkotlin/jvm/b/a;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic generateSequence(Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence(Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic iterator(Lkotlin/jvm/b/p;)Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlin/sequences/h<",
            "-TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->iterator(Lkotlin/jvm/b/p;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic joinToString$default(Lkotlin/sequences/f;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;
    .registers 9

    invoke-static/range {p0 .. p8}, Lkotlin/sequences/SequencesKt___SequencesKt;->joinToString$default(Lkotlin/sequences/f;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic last(Lkotlin/sequences/f;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->last(Lkotlin/sequences/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic map(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TR;>;)",
            "Lkotlin/sequences/f<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic mapNotNull(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;+TR;>;)",
            "Lkotlin/sequences/f<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->mapNotNull(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic plus(Lkotlin/sequences/f;Ljava/lang/Iterable;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->plus(Lkotlin/sequences/f;Ljava/lang/Iterable;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic plus(Lkotlin/sequences/f;Ljava/lang/Object;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;TT;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->plus(Lkotlin/sequences/f;Ljava/lang/Object;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sequence(Lkotlin/jvm/b/p;)Lkotlin/sequences/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlin/sequences/h<",
            "-TT;>;-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequenceBuilderKt;->sequence(Lkotlin/jvm/b/p;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge varargs synthetic sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/f;
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

    invoke-static {p0}, Lkotlin/sequences/SequencesKt__SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sortedWith(Lkotlin/sequences/f;Ljava/util/Comparator;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->sortedWith(Lkotlin/sequences/f;Ljava/util/Comparator;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic takeWhile(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlin/sequences/f<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->takeWhile(Lkotlin/sequences/f;Lkotlin/jvm/b/l;)Lkotlin/sequences/f;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toList(Lkotlin/sequences/f;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic toMutableList(Lkotlin/sequences/f;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toMutableList(Lkotlin/sequences/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
