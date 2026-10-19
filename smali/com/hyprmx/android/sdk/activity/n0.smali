###### Class com.hyprmx.android.sdk.activity.n0 (com.hyprmx.android.sdk.activity.n0)
.class public final Lcom/hyprmx/android/sdk/activity/n0;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$completeVideoAndLoadThankYouUrl$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x2c1,
        0x2c3
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;ZLkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/n0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iput-boolean p2, p0, Lcom/hyprmx/android/sdk/activity/n0;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 5
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/n0;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/activity/n0;->c:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/activity/n0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;ZLkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/n0;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/n0;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/n0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/n0;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_20

    if-eq v1, v4, :cond_1c

    if-ne v1, v2, :cond_14

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_79

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_68

    :cond_20
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1, v3}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->f(Z)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->R:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_36

    invoke-static {v1, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_36
    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->Q:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_3d

    invoke-static {p1, v5, v4, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_3d
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    if-eqz p1, :cond_46

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/om/g;->b()V

    :cond_46
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v6, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getDuration()I

    move-result p1

    int-to-long v7, p1

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    int-to-long v9, p1

    iput v4, p0, Lcom/hyprmx/android/sdk/activity/n0;->a:I

    move-object v11, p0

    invoke-interface/range {v6 .. v11}, Lcom/hyprmx/android/sdk/tracking/c;->a(JJLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_68

    return-object v0

    :cond_68
    :goto_68
    iget-boolean p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->c:Z

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->C:Lcom/hyprmx/android/sdk/tracking/c;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/n0;->a:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/tracking/a;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_79

    return-object v0

    :cond_79
    :goto_79
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->f:Lcom/hyprmx/android/sdk/om/g;

    if-eqz p1, :cond_82

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/om/g;->a()V

    :cond_82
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-nez p1, :cond_94

    goto :goto_97

    :cond_94
    invoke-virtual {p1, v0}, Lcom/hyprmx/android/sdk/graphics/c;->setVisibility(I)V

    :goto_97
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->G:Lcom/hyprmx/android/sdk/graphics/b;

    if-nez p1, :cond_9e

    goto :goto_a1

    :cond_9e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_a1
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {v1}, Lcom/hyprmx/android/sdk/fullscreen/e;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_cc

    iget-object v2, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {v2, v1, v5}, Lcom/hyprmx/android/sdk/webview/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/hyprmx/android/sdk/activity/r0;

    invoke-direct {v9, p1, v5}, Lcom/hyprmx/android/sdk/activity/r0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->S:Lkotlinx/coroutines/Job;

    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    :cond_cc
    if-nez v5, :cond_e2

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_e2

    const-string v1, "Thank You URL is missing."

    const-string v2, "message"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->n:Lcom/hyprmx/android/sdk/fullscreen/e;

    invoke-interface {p1, v1}, Lcom/hyprmx/android/sdk/fullscreen/e;->f(Ljava/lang/String;)V

    :cond_e2
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->v:Landroid/app/AlertDialog;

    if-eqz p1, :cond_eb

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_eb
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_100

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/n0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_100
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
