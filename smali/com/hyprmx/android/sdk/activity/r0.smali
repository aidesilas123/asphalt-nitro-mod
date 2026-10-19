###### Class com.hyprmx.android.sdk.activity.r0 (com.hyprmx.android.sdk.activity.r0)
.class public final Lcom/hyprmx/android/sdk/activity/r0;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$tryLoadingThankYourUrl$1$1"
    f = "HyprMXVastViewController.kt"
    i = {
        0x0
    }
    l = {
        0x305
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/r0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/r0;->c:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance v0, Lcom/hyprmx/android/sdk/activity/r0;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/r0;->c:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {v0, v1, p2}, Lcom/hyprmx/android/sdk/activity/r0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/activity/r0;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/r0;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/r0;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/r0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/r0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    if-ne v1, v2, :cond_13

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/r0;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/s;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_30

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/r0;->b:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/s;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/r0;->b:Ljava/lang/Object;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/r0;->a:I

    const-wide/16 v1, 0x1f40

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2f

    return-object v0

    :cond_2f
    move-object v0, p1

    :goto_30
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/s;)Z

    move-result p1

    if-eqz p1, :cond_84

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/r0;->c:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/webview/f;->getProgress()I

    move-result p1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_84

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/r0;->c:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->B:Lcom/hyprmx/android/sdk/analytics/b;

    sget-object v0, Lcom/hyprmx/android/sdk/utility/s;->i:Lcom/hyprmx/android/sdk/utility/s;

    const/4 v1, 0x2

    const-string v2, "Error loading the thank you page for vast."

    invoke-interface {p1, v0, v2, v1}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/r0;->c:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v0, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->h:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    const/4 v1, 0x0

    const-string v2, "about:blank"

    invoke-virtual {v0, v2, v1}, Lcom/hyprmx/android/sdk/webview/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->E:Landroid/widget/VideoView;

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    :cond_7a
    iget-object v0, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/hyprmx/android/sdk/activity/x;

    invoke-direct {v1, p1}, Lcom/hyprmx/android/sdk/activity/x;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;)V

    invoke-virtual {p1, v0, v1}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/hyprmx/android/sdk/activity/x;)V

    :cond_84
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
