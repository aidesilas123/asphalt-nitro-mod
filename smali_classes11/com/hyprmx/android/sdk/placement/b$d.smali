###### Class com.hyprmx.android.sdk.placement.b.d (com.hyprmx.android.sdk.placement.b$d)
.class public final Lcom/hyprmx/android/sdk/placement/b$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/placement/b;->onLoadAdSuccess(Ljava/lang/String;Z)V
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
    c = "com.hyprmx.android.sdk.placement.PlacementControllerImpl$onLoadAdSuccess$1"
    f = "PlacementController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/placement/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/placement/b;Ljava/lang/String;ZLkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/placement/b;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/placement/b$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/placement/b$d;->a:Lcom/hyprmx/android/sdk/placement/b;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/placement/b$d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/hyprmx/android/sdk/placement/b$d;->c:Z

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

    new-instance p1, Lcom/hyprmx/android/sdk/placement/b$d;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/b$d;->a:Lcom/hyprmx/android/sdk/placement/b;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/placement/b$d;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/hyprmx/android/sdk/placement/b$d;->c:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/placement/b$d;-><init>(Lcom/hyprmx/android/sdk/placement/b;Ljava/lang/String;ZLkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/placement/b$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/placement/b$d;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/placement/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/placement/b$d;->a:Lcom/hyprmx/android/sdk/placement/b;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/placement/b$d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/hyprmx/android/sdk/placement/b;->getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/c;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/hyprmx/android/sdk/placement/c;->d:Lcom/hyprmx/android/sdk/placement/PlacementListener;

    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/placement/b$d;->c:Z

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/placement/PlacementListener;->onAdAvailable(Lcom/hyprmx/android/sdk/placement/Placement;)V

    goto :goto_24

    :cond_1f
    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/placement/PlacementListener;->onAdNotAvailable(Lcom/hyprmx/android/sdk/placement/Placement;)V

    :cond_24
    :goto_24
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
