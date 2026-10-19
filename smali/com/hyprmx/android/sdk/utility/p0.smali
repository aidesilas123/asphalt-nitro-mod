###### Class com.hyprmx.android.sdk.utility.p0 (com.hyprmx.android.sdk.utility.p0)
.class public final Lcom/hyprmx/android/sdk/utility/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/utility/n0;
.implements Lcom/hyprmx/android/sdk/utility/m;


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/utility/m;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    new-instance v0, Lcom/hyprmx/android/sdk/utility/f;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/utility/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/utility/p0;-><init>(Lcom/hyprmx/android/sdk/utility/m;)V

    return-void
.end method

.method public constructor <init>(Lcom/hyprmx/android/sdk/utility/m;)V
    .registers 3

    const-string v0, "failureToastHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/p0;->a:Lcom/hyprmx/android/sdk/utility/m;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/utility/o0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, p2, v2}, Lcom/hyprmx/android/sdk/utility/o0;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/utility/p0;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/utility/p0;->a:Lcom/hyprmx/android/sdk/utility/m;

    invoke-interface {v0, p1, p2}, Lcom/hyprmx/android/sdk/utility/m;->a(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
