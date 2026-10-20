###### Class com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity.a (com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity$a)
.class public final Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    c = "com.hyprmx.android.sdk.overlay.HyprMXBrowserActivity$onActivityResult$1"
    f = "HyprMXBrowserActivity.kt"
    i = {}
    l = {
        0x94
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;IILandroid/content/Intent;Lkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;",
            "II",
            "Landroid/content/Intent;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

    iput p2, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->c:I

    iput p3, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->d:I

    iput-object p4, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->e:Landroid/content/Intent;

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

    new-instance p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

    iget v2, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->c:I

    iget v3, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->d:I

    iget-object v4, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->e:Landroid/content/Intent;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;-><init>(Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;IILandroid/content/Intent;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->b:Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;

    iget v3, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->c:I

    iget v4, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->d:I

    iget-object v5, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->e:Landroid/content/Intent;

    iget-object v1, p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->d:Lcom/hyprmx/android/sdk/overlay/f;

    const-string v6, "null cannot be cast to non-null type com.hyprmx.android.sdk.core.ImageCaptureInterface"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lcom/hyprmx/android/sdk/core/w;

    iput v2, p0, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity$a;->a:I

    iget-object v1, p1, Lcom/hyprmx/android/sdk/overlay/HyprMXBrowserActivity;->b:Lcom/hyprmx/android/sdk/overlay/l;

    move-object v2, p1

    move-object v7, p0

    invoke-virtual/range {v1 .. v7}, Lcom/hyprmx/android/sdk/overlay/l;->a(Landroid/content/Context;IILandroid/content/Intent;Lcom/hyprmx/android/sdk/core/w;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    :cond_39
    :goto_39
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
