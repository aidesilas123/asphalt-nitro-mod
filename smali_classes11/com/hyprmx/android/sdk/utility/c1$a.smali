###### Class com.hyprmx.android.sdk.utility.c1.a (com.hyprmx.android.sdk.utility.c1$a)
.class public final Lcom/hyprmx/android/sdk/utility/c1$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/utility/c1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Ljava/io/InputStream;",
        "Lkotlin/coroutines/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.utility.VideoCacheManagerImpl$downloadVideo$2$response$1"
    f = "VideoCacheManagerImpl.kt"
    i = {}
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/utility/e1;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/utility/e1;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/utility/c1$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->c:Lcom/hyprmx/android/sdk/utility/e1;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->d:Ljava/lang/String;

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

    new-instance v0, Lcom/hyprmx/android/sdk/utility/c1$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->c:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/utility/c1$a;-><init>(Lcom/hyprmx/android/sdk/utility/e1;Ljava/lang/String;Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/utility/c1$a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/io/InputStream;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/utility/c1$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/utility/c1$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/utility/c1$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->c:Lcom/hyprmx/android/sdk/utility/e1;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/e1;->d:Lcom/hyprmx/android/sdk/preload/p;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->d:Ljava/lang/String;

    iput v2, p0, Lcom/hyprmx/android/sdk/utility/c1$a;->a:I

    invoke-interface {v1, v3, p1, p0}, Lcom/hyprmx/android/sdk/preload/p;->a(Ljava/lang/String;Ljava/io/InputStream;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    return-object p1
.end method
