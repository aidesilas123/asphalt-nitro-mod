###### Class com.hyprmx.android.sdk.activity.p0 (com.hyprmx.android.sdk.activity.p0)
.class public final Lcom/hyprmx/android/sdk/activity/p0;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$startDurationUpdateJob$1"
    f = "HyprMXVastViewController.kt"
    i = {}
    l = {
        0x327
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/p0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/p0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/p0;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/p0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/activity/p0;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/p0;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/p0;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/p0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/p0;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    if-ne v1, v2, :cond_c

    goto :goto_14

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_17
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/p0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->d0()Lcom/hyprmx/android/sdk/graphics/d;

    move-result-object p1

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/p0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    iget-object v3, p0, Lcom/hyprmx/android/sdk/activity/p0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    invoke-virtual {v3}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v1, v3

    if-ltz v1, :cond_44

    iget-object v3, p1, Lcom/hyprmx/android/sdk/graphics/d;->d:Ljava/text/SimpleDateFormat;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/hyprmx/android/sdk/graphics/d;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_47

    :cond_44
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_47
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/p0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-eqz p1, :cond_111

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_111

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/p0;->b:Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->F:Lcom/hyprmx/android/sdk/graphics/c;

    if-eqz v1, :cond_111

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXVastViewController;->g0()Landroid/widget/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result p1

    sub-int/2addr v4, p1

    iget-object p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->b:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iput v3, v1, Lcom/hyprmx/android/sdk/graphics/c;->d:I

    iput v4, v1, Lcom/hyprmx/android/sdk/graphics/c;->e:I

    iget p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->a:I

    sub-int/2addr p1, v3

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    if-lez p1, :cond_a6

    iget-object v7, v1, Lcom/hyprmx/android/sdk/graphics/c;->j:Ljava/text/SimpleDateFormat;

    add-int/lit16 p1, p1, 0x3e7

    div-int/2addr p1, v5

    mul-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v7, v1, Lcom/hyprmx/android/sdk/graphics/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/hyprmx/android/R$string;->hyprmx_skip_in_time:I

    new-array v10, v2, [Ljava/lang/Object;

    aput-object p1, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d4

    :cond_a6
    iget-object p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/hyprmx/android/R$string;->hyprmx_skip_ad:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-boolean p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->h:Z

    if-nez p1, :cond_d4

    iput-boolean v2, v1, Lcom/hyprmx/android/sdk/graphics/c;->h:Z

    iget p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->a:I

    if-eqz p1, :cond_cc

    iget-object p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->f:Lcom/hyprmx/android/sdk/graphics/c$a;

    if-eqz p1, :cond_cc

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/graphics/c$a;->a()V

    :cond_cc
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_d4

    iput-boolean v2, v1, Lcom/hyprmx/android/sdk/graphics/c;->i:Z

    :cond_d4
    :goto_d4
    iget p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->a:I

    sub-int p1, v3, p1

    const/16 v7, 0xbb8

    if-ltz p1, :cond_e0

    if-ge p1, v7, :cond_e0

    const/4 p1, 0x1

    goto :goto_e1

    :cond_e0
    const/4 p1, 0x0

    :goto_e1
    if-eqz p1, :cond_ee

    invoke-virtual {v1, v6}, Lcom/hyprmx/android/sdk/graphics/c;->setVisibility(I)V

    iget-object p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->f:Lcom/hyprmx/android/sdk/graphics/c$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_ee
    iget p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->a:I

    sub-int/2addr v3, p1

    if-gt v3, v7, :cond_fa

    if-gt v2, v4, :cond_f8

    if-ge v4, v5, :cond_f8

    const/4 v6, 0x1

    :cond_f8
    if-eqz v6, :cond_111

    :cond_fa
    iget-boolean p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->g:Z

    if-nez p1, :cond_111

    iget-boolean p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->i:Z

    if-nez p1, :cond_111

    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Lcom/hyprmx/android/sdk/graphics/c;->setVisibility(I)V

    iget-object p1, v1, Lcom/hyprmx/android/sdk/graphics/c;->f:Lcom/hyprmx/android/sdk/graphics/c$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v2, v1, Lcom/hyprmx/android/sdk/graphics/c;->g:Z

    :cond_111
    iput v2, p0, Lcom/hyprmx/android/sdk/activity/p0;->a:I

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_17

    return-object v0
.end method
