###### Class com.hyprmx.android.sdk.footer.b (com.hyprmx.android.sdk.footer.b)
.class public final Lcom/hyprmx/android/sdk/footer/b;
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
    c = "com.hyprmx.android.sdk.footer.FooterPresenter$3$1"
    f = "FooterPresenter.kt"
    i = {}
    l = {
        0x39
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/footer/d;

.field public final synthetic c:Lcom/hyprmx/android/sdk/footer/e;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/footer/d;Lcom/hyprmx/android/sdk/footer/e;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/footer/d;",
            "Lcom/hyprmx/android/sdk/footer/e;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/footer/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/footer/b;->b:Lcom/hyprmx/android/sdk/footer/d;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/footer/b;->c:Lcom/hyprmx/android/sdk/footer/e;

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

    new-instance p1, Lcom/hyprmx/android/sdk/footer/b;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/b;->b:Lcom/hyprmx/android/sdk/footer/d;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/footer/b;->c:Lcom/hyprmx/android/sdk/footer/e;

    invoke-direct {p1, v0, v1, p2}, Lcom/hyprmx/android/sdk/footer/b;-><init>(Lcom/hyprmx/android/sdk/footer/d;Lcom/hyprmx/android/sdk/footer/e;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/footer/b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/footer/b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/footer/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/footer/b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/footer/b;->b:Lcom/hyprmx/android/sdk/footer/d;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/footer/d;->d:Lcom/hyprmx/android/sdk/utility/f0;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/footer/b;->c:Lcom/hyprmx/android/sdk/footer/e;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/footer/e;->a:Ljava/lang/String;

    iput v2, p0, Lcom/hyprmx/android/sdk/footer/b;->a:I

    invoke-interface {p1, v1, p0}, Lcom/hyprmx/android/sdk/utility/f0;->a(Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    check-cast p1, Lcom/hyprmx/android/sdk/utility/m0;

    instance-of v0, p1, Lcom/hyprmx/android/sdk/utility/m0$b;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/b;->b:Lcom/hyprmx/android/sdk/footer/d;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/footer/d;->c:Lcom/hyprmx/android/sdk/footer/FooterContract$View;

    check-cast p1, Lcom/hyprmx/android/sdk/utility/m0$b;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/utility/m0$b;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/footer/b;->c:Lcom/hyprmx/android/sdk/footer/e;

    iget v2, v1, Lcom/hyprmx/android/sdk/footer/e;->c:I

    iget v3, v1, Lcom/hyprmx/android/sdk/footer/e;->b:I

    iget-object v1, v1, Lcom/hyprmx/android/sdk/footer/e;->d:Ljava/lang/String;

    invoke-interface {v0, p1, v2, v3, v1}, Lcom/hyprmx/android/sdk/footer/FooterContract$View;->setIcon1(Landroid/graphics/Bitmap;IILjava/lang/String;)V

    goto :goto_4c

    :cond_47
    const-string p1, "Unable to load footer icon1."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :goto_4c
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
