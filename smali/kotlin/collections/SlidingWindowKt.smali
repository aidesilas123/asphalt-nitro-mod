###### Class kotlin.collections.SlidingWindowKt (kotlin.collections.SlidingWindowKt)
.class public final Lkotlin/collections/SlidingWindowKt;
.super Ljava/lang/Object;
.source "SlidingWindow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u001aH\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\u0006\"\u0004\u0008\u0000\u0010\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u00062\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u001aD\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00080\u00070\u000e\"\u0004\u0008\u0000\u0010\u0008*\u0008\u0012\u0004\u0012\u0002H\u00080\u000e2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "checkWindowSizeStep",
        "",
        "size",
        "",
        "step",
        "windowedIterator",
        "",
        "",
        "T",
        "iterator",
        "partialWindows",
        "",
        "reuseBuffer",
        "windowedSequence",
        "Lkotlin/sequences/Sequence;",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final checkWindowSizeStep(II)V
    .registers 5

    if-lez p0, :cond_6

    if-lez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_48

    const-string v0, " must be greater than zero."

    if-eq p0, p1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and step "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3e

    :cond_2a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    return-void
.end method

.method public static final windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;IIZZ)",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object p0, Lkotlin/collections/r;->a:Lkotlin/collections/r;

    return-object p0

    :cond_e
    new-instance v7, Lkotlin/collections/SlidingWindowKt$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v3, p0

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lkotlin/collections/SlidingWindowKt$a;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/d;)V

    invoke-static {v7}, Lkotlin/sequences/i;->iterator(Lkotlin/jvm/b/p;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static final windowedSequence(Lkotlin/sequences/f;IIZZ)Lkotlin/sequences/f;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/f<",
            "+TT;>;IIZZ)",
            "Lkotlin/sequences/f<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/collections/SlidingWindowKt;->checkWindowSizeStep(II)V

    new-instance v0, Lkotlin/collections/SlidingWindowKt$b;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lkotlin/collections/SlidingWindowKt$b;-><init>(Lkotlin/sequences/f;IIZZ)V

    return-object v0
.end method

###### Class kotlin.collections.SlidingWindowKt.a (kotlin.collections.SlidingWindowKt$a)
.class final Lkotlin/collections/SlidingWindowKt$a;
.super Lkotlin/coroutines/jvm/internal/h;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/h;",
        "Lkotlin/jvm/b/p<",
        "Lkotlin/sequences/h<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;",
        ""
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator",
        "buffer",
        "gap",
        "$this$iterator",
        "buffer",
        "$this$iterator",
        "buffer"
    }
    s = {
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field private synthetic e:Ljava/lang/Object;

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic i:Z

.field final synthetic j:Z


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "+TT;>;ZZ",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/collections/SlidingWindowKt$a;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$a;->g:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$a;->h:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$a;->i:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$a;->j:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/h;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v7, Lkotlin/collections/SlidingWindowKt$a;

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$a;->g:I

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$a;->h:Ljava/util/Iterator;

    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$a;->i:Z

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$a;->j:Z

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lkotlin/collections/SlidingWindowKt$a;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/d;)V

    iput-object p1, v7, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    return-object v7
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlin/sequences/h;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$a;->invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/h;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/h<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lkotlin/collections/SlidingWindowKt$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlin/collections/SlidingWindowKt$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$a;->d:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_5a

    if-eq v1, v6, :cond_46

    if-eq v1, v5, :cond_41

    if-eq v1, v4, :cond_2f

    if-eq v1, v3, :cond_21

    if-ne v1, v2, :cond_19

    goto :goto_41

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    check-cast v1, Lkotlin/collections/RingBuffer;

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/h;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_14d

    :cond_2f
    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, p0, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    check-cast v5, Lkotlin/collections/RingBuffer;

    iget-object v8, p0, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    check-cast v8, Lkotlin/sequences/h;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    goto/16 :goto_11f

    :cond_41
    :goto_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_169

    :cond_46
    iget v1, p0, Lkotlin/collections/SlidingWindowKt$a;->c:I

    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/h;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move v8, v1

    goto :goto_a8

    :cond_5a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/h;

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    const/16 v8, 0x400

    invoke-static {v1, v8}, Lkotlin/ranges/m;->coerceAtMost(II)I

    move-result v1

    iget v8, p0, Lkotlin/collections/SlidingWindowKt$a;->g:I

    iget v9, p0, Lkotlin/collections/SlidingWindowKt$a;->f:I

    sub-int/2addr v8, v9

    if-ltz v8, :cond_dc

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$a;->h:Ljava/util/Iterator;

    move-object v4, p1

    move-object p1, p0

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    :cond_7d
    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-lez v1, :cond_8c

    add-int/lit8 v1, v1, -0x1

    goto :goto_7d

    :cond_8c
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget v10, p1, Lkotlin/collections/SlidingWindowKt$a;->f:I

    if-ne v9, v10, :cond_7d

    iput-object v4, p1, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    iput-object v3, p1, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    iput-object v2, p1, Lkotlin/collections/SlidingWindowKt$a;->b:Ljava/lang/Object;

    iput v8, p1, Lkotlin/collections/SlidingWindowKt$a;->c:I

    iput v6, p1, Lkotlin/collections/SlidingWindowKt$a;->d:I

    invoke-virtual {v4, v3, p1}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a8

    return-object v0

    :cond_a8
    :goto_a8
    iget-boolean v1, p1, Lkotlin/collections/SlidingWindowKt$a;->i:Z

    if-eqz v1, :cond_b0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_b8

    :cond_b0
    new-instance v1, Ljava/util/ArrayList;

    iget v3, p1, Lkotlin/collections/SlidingWindowKt$a;->f:I

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v1

    :goto_b8
    move v1, v8

    goto :goto_7d

    :cond_ba
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v6

    if-eqz v1, :cond_169

    iget-boolean v1, p1, Lkotlin/collections/SlidingWindowKt$a;->j:Z

    if-nez v1, :cond_cd

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p1, Lkotlin/collections/SlidingWindowKt$a;->f:I

    if-ne v1, v2, :cond_169

    :cond_cd
    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$a;->b:Ljava/lang/Object;

    iput v5, p1, Lkotlin/collections/SlidingWindowKt$a;->d:I

    invoke-virtual {v4, v3, p1}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_169

    return-object v0

    :cond_dc
    new-instance v5, Lkotlin/collections/RingBuffer;

    invoke-direct {v5, v1}, Lkotlin/collections/RingBuffer;-><init>(I)V

    iget-object v1, p0, Lkotlin/collections/SlidingWindowKt$a;->h:Ljava/util/Iterator;

    move-object v8, p1

    move-object p1, p0

    :cond_e5
    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_125

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Lkotlin/collections/RingBuffer;->f(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lkotlin/collections/RingBuffer;->i()Z

    move-result v9

    if-eqz v9, :cond_e5

    invoke-virtual {v5}, Lkotlin/collections/a;->size()I

    move-result v9

    iget v10, p1, Lkotlin/collections/SlidingWindowKt$a;->f:I

    if-ge v9, v10, :cond_105

    invoke-virtual {v5, v10}, Lkotlin/collections/RingBuffer;->h(I)Lkotlin/collections/RingBuffer;

    move-result-object v5

    goto :goto_e5

    :cond_105
    iget-boolean v9, p1, Lkotlin/collections/SlidingWindowKt$a;->i:Z

    if-eqz v9, :cond_10b

    move-object v9, v5

    goto :goto_110

    :cond_10b
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_110
    iput-object v8, p1, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    iput-object v5, p1, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/collections/SlidingWindowKt$a;->b:Ljava/lang/Object;

    iput v4, p1, Lkotlin/collections/SlidingWindowKt$a;->d:I

    invoke-virtual {v8, v9, p1}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v0, :cond_11f

    return-object v0

    :cond_11f
    :goto_11f
    iget v9, p1, Lkotlin/collections/SlidingWindowKt$a;->g:I

    invoke-virtual {v5, v9}, Lkotlin/collections/RingBuffer;->j(I)V

    goto :goto_e5

    :cond_125
    iget-boolean v1, p1, Lkotlin/collections/SlidingWindowKt$a;->j:Z

    if-eqz v1, :cond_169

    move-object v1, v5

    move-object v4, v8

    :goto_12b
    invoke-virtual {v1}, Lkotlin/collections/a;->size()I

    move-result v5

    iget v8, p1, Lkotlin/collections/SlidingWindowKt$a;->g:I

    if-le v5, v8, :cond_153

    iget-boolean v5, p1, Lkotlin/collections/SlidingWindowKt$a;->i:Z

    if-eqz v5, :cond_139

    move-object v5, v1

    goto :goto_13e

    :cond_139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_13e
    iput-object v4, p1, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    iput-object v1, p1, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$a;->b:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/SlidingWindowKt$a;->d:I

    invoke-virtual {v4, v5, p1}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_14d

    return-object v0

    :cond_14d
    :goto_14d
    iget v5, p1, Lkotlin/collections/SlidingWindowKt$a;->g:I

    invoke-virtual {v1, v5}, Lkotlin/collections/RingBuffer;->j(I)V

    goto :goto_12b

    :cond_153
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_169

    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$a;->e:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$a;->a:Ljava/lang/Object;

    iput-object v7, p1, Lkotlin/collections/SlidingWindowKt$a;->b:Ljava/lang/Object;

    iput v2, p1, Lkotlin/collections/SlidingWindowKt$a;->d:I

    invoke-virtual {v4, v1, p1}, Lkotlin/sequences/h;->c(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_169

    return-object v0

    :cond_169
    :goto_169
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

###### Class kotlin.collections.SlidingWindowKt.b (kotlin.collections.SlidingWindowKt$b)
.class public final Lkotlin/collections/SlidingWindowKt$b;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedSequence(Lkotlin/sequences/f;IIZZ)Lkotlin/sequences/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/f<",
        "Ljava/util/List<",
        "+TT;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u000f\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003H\u0096\u0002\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/sequences/SequencesKt__SequencesKt$Sequence$1",
        "Lkotlin/sequences/Sequence;",
        "iterator",
        "",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlin/sequences/f;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Z


# direct methods
.method public constructor <init>(Lkotlin/sequences/f;IIZZ)V
    .registers 6

    iput-object p1, p0, Lkotlin/collections/SlidingWindowKt$b;->a:Lkotlin/sequences/f;

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$b;->b:I

    iput p3, p0, Lkotlin/collections/SlidingWindowKt$b;->c:I

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$b;->d:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$b;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/collections/SlidingWindowKt$b;->a:Lkotlin/sequences/f;

    invoke-interface {v0}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/SlidingWindowKt$b;->b:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$b;->c:I

    iget-boolean v3, p0, Lkotlin/collections/SlidingWindowKt$b;->d:Z

    iget-boolean v4, p0, Lkotlin/collections/SlidingWindowKt$b;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
