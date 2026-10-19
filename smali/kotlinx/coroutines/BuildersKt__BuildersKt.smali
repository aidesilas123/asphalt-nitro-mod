###### Class kotlinx.coroutines.BuildersKt__BuildersKt (kotlinx.coroutines.BuildersKt__BuildersKt)
.class final synthetic Lkotlinx/coroutines/BuildersKt__BuildersKt;
.super Ljava/lang/Object;
.source "Builders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aQ\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\'\u0010\u0004\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0005\u00a2\u0006\u0002\u0008\t\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0002\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "runBlocking",
        "T",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lkotlinx/coroutines/s;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/ContinuationInterceptor;->d0:Lkotlin/coroutines/ContinuationInterceptor$a;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$a;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/ContinuationInterceptor;

    if-nez v1, :cond_1f

    sget-object v1, Lkotlinx/coroutines/d1;->a:Lkotlinx/coroutines/d1;

    invoke-virtual {v1}, Lkotlinx/coroutines/d1;->b()Lkotlinx/coroutines/EventLoop;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/g0;->a:Lkotlinx/coroutines/g0;

    invoke-interface {p0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    goto :goto_42

    :cond_1f
    instance-of v2, v1, Lkotlinx/coroutines/EventLoop;

    const/4 v3, 0x0

    if-eqz v2, :cond_27

    check-cast v1, Lkotlinx/coroutines/EventLoop;

    goto :goto_28

    :cond_27
    move-object v1, v3

    :goto_28
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lkotlinx/coroutines/EventLoop;->W()Z

    move-result v2

    if-eqz v2, :cond_31

    move-object v3, v1

    :cond_31
    if-nez v3, :cond_34

    goto :goto_36

    :cond_34
    move-object v1, v3

    goto :goto_3c

    :cond_36
    :goto_36
    sget-object v1, Lkotlinx/coroutines/d1;->a:Lkotlinx/coroutines/d1;

    invoke-virtual {v1}, Lkotlinx/coroutines/d1;->a()Lkotlinx/coroutines/EventLoop;

    move-result-object v1

    :goto_3c
    sget-object v2, Lkotlinx/coroutines/g0;->a:Lkotlinx/coroutines/g0;

    invoke-static {v2, p0}, Lkotlinx/coroutines/CoroutineContextKt;->newCoroutineContext(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    :goto_42
    new-instance v2, Lkotlinx/coroutines/d;

    invoke-direct {v2, p0, v0, v1}, Lkotlinx/coroutines/d;-><init>(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V

    sget-object p0, Lkotlinx/coroutines/CoroutineStart;->a:Lkotlinx/coroutines/CoroutineStart;

    invoke-virtual {v2, p0, v2, p1}, Lkotlinx/coroutines/AbstractCoroutine;->c1(Lkotlinx/coroutines/CoroutineStart;Ljava/lang/Object;Lkotlin/jvm/b/p;)V

    invoke-virtual {v2}, Lkotlinx/coroutines/d;->d1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    sget-object p0, Lkotlin/coroutines/e;->a:Lkotlin/coroutines/e;

    :cond_6
    invoke-static {p0, p1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
