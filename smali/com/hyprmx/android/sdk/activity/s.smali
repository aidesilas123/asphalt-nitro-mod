###### Class com.hyprmx.android.sdk.activity.s (com.hyprmx.android.sdk.activity.s)
.class public final Lcom/hyprmx/android/sdk/activity/s;
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
    c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$setOrientationProperties$2"
    f = "HyprMXBaseViewController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;Ljava/lang/String;Lkotlin/coroutines/d;Z)V
    .registers 5

    iput-object p2, p0, Lcom/hyprmx/android/sdk/activity/s;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    iput-boolean p4, p0, Lcom/hyprmx/android/sdk/activity/s;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/hyprmx/android/sdk/activity/s;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/activity/s;->b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/activity/s;->c:Z

    invoke-direct {p1, v1, v0, p2, v2}, Lcom/hyprmx/android/sdk/activity/s;-><init>(Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;Ljava/lang/String;Lkotlin/coroutines/d;Z)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/activity/s;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/activity/s;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/activity/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->a:Ljava/lang/String;

    const-string v0, "portrait"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->c:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;->a(I)V

    goto :goto_52

    :cond_19
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->a:Ljava/lang/String;

    const-string v0, "landscape"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->c:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;->a(I)V

    goto :goto_52

    :cond_2c
    iget-boolean p1, p0, Lcom/hyprmx/android/sdk/activity/s;->c:Z

    if-nez p1, :cond_40

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/w0;->a(Landroidx/appcompat/app/AppCompatActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/hyprmx/android/sdk/activity/s;->b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->c:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;->a(I)V

    goto :goto_52

    :cond_40
    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->a:Ljava/lang/String;

    const-string v0, "none"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/hyprmx/android/sdk/activity/s;->b:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController;->c:Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/activity/HyprMXBaseViewController$a;->a(I)V

    :cond_52
    :goto_52
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
