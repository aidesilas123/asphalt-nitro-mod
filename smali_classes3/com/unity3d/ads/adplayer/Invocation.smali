###### Class com.unity3d.ads.adplayer.Invocation (com.unity3d.ads.adplayer.Invocation)
.class public final Lcom/unity3d/ads/adplayer/Invocation;
.super Ljava/lang/Object;
.source "Invocation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u0013\u001a\u00020\u0001H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J1\u0010\u0015\u001a\u00020\t2\u001e\u0008\u0002\u0010\u0016\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\u0018\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0017H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0019R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/unity3d/ads/adplayer/Invocation;",
        "",
        "location",
        "Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;",
        "parameters",
        "",
        "(Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;[Ljava/lang/Object;)V",
        "_isHandled",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "completableDeferred",
        "isHandled",
        "Lkotlinx/coroutines/Deferred;",
        "()Lkotlinx/coroutines/Deferred;",
        "getLocation",
        "()Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;",
        "getParameters",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "getResult",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handle",
        "handler",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _isHandled:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final completableDeferred:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

.field private final parameters:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;[Ljava/lang/Object;)V
    .registers 4

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/Invocation;->location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    iput-object p2, p0, Lcom/unity3d/ads/adplayer/Invocation;->parameters:[Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->_isHandled:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/ads/adplayer/Invocation;->completableDeferred:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public static synthetic handle$default(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/jvm/b/l;Lkotlin/coroutines/d;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_a

    new-instance p1, Lcom/unity3d/ads/adplayer/Invocation$handle$2;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/unity3d/ads/adplayer/Invocation$handle$2;-><init>(Lkotlin/coroutines/d;)V

    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/adplayer/Invocation;->handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLocation()Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->location:Lcom/unity3d/ads/adplayer/ExposedFunctionLocation;

    return-object v0
.end method

.method public final getParameters()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->parameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public final getResult(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->completableDeferred:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/Deferred;->j(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final handle(Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/coroutines/d<",
            "Ljava/lang/Object;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/unity3d/ads/adplayer/Invocation$handle$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;

    iget v1, v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;

    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/Invocation$handle$1;-><init>(Lcom/unity3d/ads/adplayer/Invocation;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object p1, v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/ads/adplayer/Invocation;

    :try_start_29
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_4d

    :catchall_2d
    move-exception p2

    goto :goto_55

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/unity3d/ads/adplayer/Invocation;->_isHandled:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {p2, v2}, Lkotlinx/coroutines/CompletableDeferred;->v(Ljava/lang/Object;)Z

    :try_start_41
    iput-object p0, v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/unity3d/ads/adplayer/Invocation$handle$1;->label:I

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_53

    if-ne p2, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object p1, p0

    :goto_4d
    :try_start_4d
    iget-object v0, p1, Lcom/unity3d/ads/adplayer/Invocation;->completableDeferred:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/CompletableDeferred;->v(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_2d

    goto :goto_5a

    :catchall_53
    move-exception p2

    move-object p1, p0

    :goto_55
    iget-object p1, p1, Lcom/unity3d/ads/adplayer/Invocation;->completableDeferred:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->t(Ljava/lang/Throwable;)Z

    :goto_5a
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final isHandled()Lkotlinx/coroutines/Deferred;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/Deferred<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/Invocation;->_isHandled:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method
