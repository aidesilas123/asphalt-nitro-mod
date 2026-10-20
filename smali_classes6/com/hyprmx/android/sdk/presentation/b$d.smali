###### Class com.hyprmx.android.sdk.presentation.b.d (com.hyprmx.android.sdk.presentation.b$d)
.class public final Lcom/hyprmx/android/sdk/presentation/b$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/presentation/b;->adRewarded(Ljava/lang/String;Ljava/lang/String;I)V
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
    c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$adRewarded$1"
    f = "PresentationController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/presentation/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/presentation/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/presentation/b$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->a:Lcom/hyprmx/android/sdk/presentation/b;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->d:I

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

    new-instance p1, Lcom/hyprmx/android/sdk/presentation/b$d;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->a:Lcom/hyprmx/android/sdk/presentation/b;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->c:Ljava/lang/String;

    iget v4, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->d:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/hyprmx/android/sdk/presentation/b$d;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/presentation/b$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/presentation/b$d;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/presentation/b$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->a:Lcom/hyprmx/android/sdk/presentation/b;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/presentation/b;->e:Lcom/hyprmx/android/sdk/presentation/g;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/hyprmx/android/sdk/presentation/g;->getPlacement(Ljava/lang/String;)Lcom/hyprmx/android/sdk/placement/Placement;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hyprmx/android/sdk/placement/c;

    iget-object v0, p1, Lcom/hyprmx/android/sdk/placement/c;->d:Lcom/hyprmx/android/sdk/placement/PlacementListener;

    instance-of v1, v0, Lcom/hyprmx/android/sdk/placement/RewardedPlacementListener;

    if-eqz v1, :cond_26

    check-cast v0, Lcom/hyprmx/android/sdk/placement/RewardedPlacementListener;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->c:Ljava/lang/String;

    iget v2, p0, Lcom/hyprmx/android/sdk/presentation/b$d;->d:I

    invoke-interface {v0, p1, v1, v2}, Lcom/hyprmx/android/sdk/placement/RewardedPlacementListener;->onAdRewarded(Lcom/hyprmx/android/sdk/placement/Placement;Ljava/lang/String;I)V

    :cond_26
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
