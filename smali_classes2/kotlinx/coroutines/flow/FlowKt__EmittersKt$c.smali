###### Class kotlinx.coroutines.flow.FlowKt__EmittersKt.c (kotlinx.coroutines.flow.FlowKt__EmittersKt$c)
.class public final Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c;
.super Ljava/lang/Object;
.source "SafeCollector.common.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__EmittersKt;->onEmpty(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/i;
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

.field final synthetic b:Lkotlin/jvm/b/p;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/i;Lkotlin/jvm/b/p;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c;->a:Lkotlinx/coroutines/flow/i;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c;->b:Lkotlin/jvm/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 9
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

    instance-of v0, p2, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;

    iget v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;-><init>(Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4a

    if-eq v2, v4, :cond_3a

    if-ne v2, v3, :cond_32

    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->d:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/internal/n;

    :try_start_2c
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_94

    :catchall_30
    move-exception p2

    goto :goto_98

    :cond_32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    iget-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->f:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/internal/h0;

    iget-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->e:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/j;

    iget-object v4, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->d:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6d

    :cond_4a
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p2, Lkotlin/jvm/internal/h0;

    invoke-direct {p2}, Lkotlin/jvm/internal/h0;-><init>()V

    iput-boolean v4, p2, Lkotlin/jvm/internal/h0;->a:Z

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c;->a:Lkotlinx/coroutines/flow/i;

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$d;

    invoke-direct {v5, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$d;-><init>(Lkotlin/jvm/internal/h0;Lkotlinx/coroutines/flow/j;)V

    iput-object p0, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->e:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->f:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->b:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/flow/i;->collect(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6a

    return-object v1

    :cond_6a
    move-object v4, p0

    move-object v2, p1

    move-object p1, p2

    :goto_6d
    iget-boolean p1, p1, Lkotlin/jvm/internal/h0;->a:Z

    if-eqz p1, :cond_9c

    new-instance p1, Lkotlinx/coroutines/flow/internal/n;

    invoke-interface {v0}, Lkotlin/coroutines/d;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lkotlinx/coroutines/flow/internal/n;-><init>(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/CoroutineContext;)V

    :try_start_7a
    iget-object p2, v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c;->b:Lkotlin/jvm/b/p;

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->e:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->f:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$c$a;->b:I

    const/4 v2, 0x6

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/jvm/internal/InlineMarker;->mark(I)V
    :try_end_91
    .catchall {:try_start_7a .. :try_end_91} :catchall_30

    if-ne p2, v1, :cond_94

    return-object v1

    :cond_94
    :goto_94
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/n;->releaseIntercepted()V

    goto :goto_9c

    :goto_98
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/internal/n;->releaseIntercepted()V

    throw p2

    :cond_9c
    :goto_9c
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
