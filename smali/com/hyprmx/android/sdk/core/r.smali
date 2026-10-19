###### Class com.hyprmx.android.sdk.core.r (com.hyprmx.android.sdk.core.r)
.class public final Lcom/hyprmx/android/sdk/core/r;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.HyprMXDelegate$initializeHyprController$2"
    f = "HyprMX.kt"
    i = {
        0x0
    }
    l = {
        0x94
    }
    m = "invokeSuspend"
    n = {
        "it"
    }
    s = {
        "L$1"
    }
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/q;

.field public b:Lcom/hyprmx/android/sdk/core/j;

.field public c:I

.field public final synthetic d:Lcom/hyprmx/android/sdk/core/q;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/hyprmx/android/sdk/consent/ConsentStatus;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/q;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/q;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/consent/ConsentStatus;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/r;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/r;->d:Lcom/hyprmx/android/sdk/core/q;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/r;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/core/r;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/core/r;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/core/r;->h:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 10
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

    new-instance p1, Lcom/hyprmx/android/sdk/core/r;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/r;->d:Lcom/hyprmx/android/sdk/core/q;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/core/r;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/core/r;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/core/r;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/core/r;->h:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/hyprmx/android/sdk/core/r;-><init>(Lcom/hyprmx/android/sdk/core/q;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/r;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/r;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/r;->c:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    if-ne v1, v2, :cond_14

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/r;->b:Lcom/hyprmx/android/sdk/core/j;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/r;->a:Lcom/hyprmx/android/sdk/core/q;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4f

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/r;->d:Lcom/hyprmx/android/sdk/core/q;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/core/q;->a:Lcom/hyprmx/android/sdk/core/p;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/core/r;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context.applicationContext"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hyprmx/android/sdk/core/r;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/core/r;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/hyprmx/android/sdk/core/r;->h:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/hyprmx/android/sdk/core/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/consent/ConsentStatus;)Lcom/hyprmx/android/sdk/core/j;

    move-result-object v1

    iput-object v1, p1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/core/r;->d:Lcom/hyprmx/android/sdk/core/q;

    iget-object p1, v1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    if-eqz p1, :cond_9b

    iput-object v1, p0, Lcom/hyprmx/android/sdk/core/r;->a:Lcom/hyprmx/android/sdk/core/q;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/r;->b:Lcom/hyprmx/android/sdk/core/j;

    iput v2, p0, Lcom/hyprmx/android/sdk/core/r;->c:I

    invoke-virtual {p1, v3, p0}, Lcom/hyprmx/android/sdk/core/j;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4d

    return-object v0

    :cond_4d
    move-object v0, p1

    move-object p1, v4

    :goto_4f
    check-cast p1, Lcom/hyprmx/android/sdk/core/j$a;

    instance-of v4, p1, Lcom/hyprmx/android/sdk/core/j$a$c;

    const/4 v5, 0x0

    if-eqz v4, :cond_63

    check-cast p1, Lcom/hyprmx/android/sdk/core/j$a$c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/core/j$a$c;->a:Lcom/hyprmx/android/sdk/core/j;

    iput-object p1, v1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    iput-boolean v5, v1, Lcom/hyprmx/android/sdk/core/q;->i:Z

    iget-object p1, v1, Lcom/hyprmx/android/sdk/core/q;->h:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    if-eqz p1, :cond_9b

    goto :goto_6f

    :cond_63
    instance-of v4, p1, Lcom/hyprmx/android/sdk/core/j$a$b;

    if-eqz v4, :cond_75

    iput-object v0, v1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    iput-boolean v5, v1, Lcom/hyprmx/android/sdk/core/q;->i:Z

    iget-object p1, v1, Lcom/hyprmx/android/sdk/core/q;->h:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    if-eqz p1, :cond_9b

    :goto_6f
    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;->initializationComplete()V

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_9b

    :cond_75
    instance-of p1, p1, Lcom/hyprmx/android/sdk/core/j$a$a;

    if-eqz p1, :cond_95

    iput-object v3, v1, Lcom/hyprmx/android/sdk/core/q;->g:Lcom/hyprmx/android/sdk/core/j;

    iput-boolean v2, v1, Lcom/hyprmx/android/sdk/core/q;->i:Z

    iget-object v4, v1, Lcom/hyprmx/android/sdk/core/q;->e:Lkotlinx/coroutines/s;

    new-instance v7, Lcom/hyprmx/android/sdk/core/s;

    invoke-direct {v7, v1, v3}, Lcom/hyprmx/android/sdk/core/s;-><init>(Lcom/hyprmx/android/sdk/core/q;Lkotlin/coroutines/d;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    iget-object p1, v1, Lcom/hyprmx/android/sdk/core/q;->h:Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;

    if-eqz p1, :cond_9b

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/core/HyprMXIf$HyprMXInitializationListener;->initializationFailed()V

    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_9b

    :cond_95
    new-instance p1, Lkotlin/k;

    invoke-direct {p1}, Lkotlin/k;-><init>()V

    throw p1

    :cond_9b
    :goto_9b
    return-object v3
.end method
