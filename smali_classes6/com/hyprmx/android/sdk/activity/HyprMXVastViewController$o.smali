###### Class com.hyprmx.android.sdk.activity.HyprMXVastViewController.o (com.hyprmx.android.sdk.activity.HyprMXVastViewController$o)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->startCatalogDurationTracking(FLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$startCatalogDurationTracking$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0xf4
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:F

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(FLjava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 9
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;-><init>(FLjava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "startCatalogDurationTracking "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->e:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    new-instance v3, Lcom/hyprmx/android/sdk/vast/a;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->z:Lcom/hyprmx/android/sdk/analytics/d;

    iget v4, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->b:F

    iget-object v5, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->d:Ljava/lang/String;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/hyprmx/android/sdk/vast/a;-><init>(Lcom/hyprmx/android/sdk/analytics/d;FLjava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController$o;->a:I

    invoke-interface {v1, v3, p0}, Lcom/hyprmx/android/sdk/tracking/c;->a(Lcom/hyprmx/android/sdk/tracking/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5b

    return-object v0

    :cond_5b
    :goto_5b
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
