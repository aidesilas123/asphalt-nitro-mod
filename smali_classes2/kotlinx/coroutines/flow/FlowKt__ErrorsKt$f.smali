###### Class kotlinx.coroutines.flow.FlowKt__ErrorsKt.f (kotlinx.coroutines.flow.FlowKt__ErrorsKt$f)
.class public final Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ErrorsKt;->retryWhen(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/r;)Lkotlinx/coroutines/flow/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/i<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/flow/i;

.field final synthetic b:Lkotlin/jvm/b/r;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/r;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;->a:Lkotlinx/coroutines/flow/i;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;->b:Lkotlin/jvm/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/j<",
            "-TT;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;-><init>(Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_52

    if-eq v2, v4, :cond_42

    if-ne v2, v3, :cond_3a

    iget-wide v5, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->g:J

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->f:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->d:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9a

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    iget p1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->h:I

    iget-wide v5, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->g:J

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->d:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_74

    :cond_52
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v5, 0x0

    move-object p2, p0

    :goto_58
    const/4 v2, 0x0

    iget-object v7, p2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;->a:Lkotlinx/coroutines/flow/i;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->e:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->f:Ljava/lang/Object;

    iput-wide v5, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->g:J

    iput v2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->h:I

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->b:I

    invoke-static {v7, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->catchImpl(Lkotlinx/coroutines/flow/i;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_6f

    return-object v1

    :cond_6f
    move-object v2, p1

    const/4 p1, 0x0

    move-object v10, v7

    move-object v7, p2

    move-object p2, v10

    :goto_74
    check-cast p2, Ljava/lang/Throwable;

    if-eqz p2, :cond_a9

    iget-object p1, v7, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f;->b:Lkotlin/jvm/b/r;

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v7, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->d:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->f:Ljava/lang/Object;

    iput-wide v5, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->g:J

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$f$a;->b:I

    const/4 v9, 0x6

    invoke-static {v9}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p1, v2, p2, v8, v0}, Lkotlin/jvm/b/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v8, 0x7

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    if-ne p1, v1, :cond_97

    return-object v1

    :cond_97
    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_9a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a8

    const-wide/16 p1, 0x1

    add-long/2addr v5, p1

    move-object p2, v7

    const/4 p1, 0x1

    goto :goto_aa

    :cond_a8
    throw p1

    :cond_a9
    move-object p2, v7

    :goto_aa
    if-nez p1, :cond_af

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_af
    move-object p1, v2

    goto :goto_58
.end method
