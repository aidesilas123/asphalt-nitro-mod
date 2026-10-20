###### Class com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController.b (com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$b)
.class public final Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;->b(Ljava/lang/String;ILkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$loadWebTrafficPage$2"
    f = "HyprMXWebTrafficViewController.kt"
    i = {}
    l = {
        0xd7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->b:I

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 6
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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;

    iget v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->b:I

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;-><init>(ILcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_43

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Open Web Page: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;->c0()Lcom/hyprmx/android/sdk/header/c;

    move-result-object p1

    iget v1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->b:I

    invoke-interface {p1, v1}, Lcom/hyprmx/android/sdk/header/c;->b(I)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    iput v2, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->a:I

    invoke-static {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;->a(Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;)Lkotlin/v;

    move-result-object p1

    if-ne p1, v0, :cond_43

    return-object v0

    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hyprmx/android/sdk/webview/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->t:Lcom/hyprmx/android/sdk/webview/f;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;->c0()Lcom/hyprmx/android/sdk/header/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/hyprmx/android/sdk/header/c;->showProgressSpinner()V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController$b;->c:Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;

    iget-object v0, p1, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;->z:Lcom/hyprmx/android/sdk/api/data/u;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/api/data/u;->b:Lcom/hyprmx/android/sdk/footer/a;

    iget-boolean v0, v0, Lcom/hyprmx/android/sdk/footer/a;->f:Z

    if-eqz v0, :cond_76

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXWebTrafficViewController;->D:Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;

    if-eqz p1, :cond_6d

    move-object v1, p1

    goto :goto_72

    :cond_6d
    const-string p1, "footerPresenter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :goto_72
    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;->setVisible(Z)V

    :cond_76
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
