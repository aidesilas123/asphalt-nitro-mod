###### Class com.hyprmx.android.sdk.preload.u.b (com.hyprmx.android.sdk.preload.u$b)
.class public final Lcom/hyprmx/android/sdk/preload/u$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/u;->commitVastOffer(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.hyprmx.android.sdk.preload.PreloadController$commitVastOffer$1"
    f = "PreloadController.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x61,
        0x65,
        0x67
    }
    m = "invokeSuspend"
    n = {
        "ad",
        "it"
    }
    s = {
        "L$0",
        "L$2"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public final synthetic e:Lcom/hyprmx/android/sdk/preload/u;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/u;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/u;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/u$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->e:Lcom/hyprmx/android/sdk/preload/u;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/preload/u$b;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/preload/u$b;->g:Ljava/lang/String;

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/u$b;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/u$b;->e:Lcom/hyprmx/android/sdk/preload/u;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/preload/u$b;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/preload/u$b;-><init>(Lcom/hyprmx/android/sdk/preload/u;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/u$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/u$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/u$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->d:I

    const-string v2, "media_download_failures"

    const-string v3, "jsonString"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v7, "mediaAssetURL"

    if-eqz v1, :cond_3a

    if-eq v1, v6, :cond_31

    if-eq v1, v5, :cond_24

    if-ne v1, v4, :cond_1c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_107

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/preload/u$b;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/preload/u$b;->a:Ljava/lang/Object;

    check-cast v6, Lcom/hyprmx/android/sdk/preload/u;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_da

    :cond_31
    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->a:Ljava/lang/Object;

    check-cast v1, Lcom/hyprmx/android/sdk/api/data/b;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_be

    :cond_3a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->e:Lcom/hyprmx/android/sdk/preload/u;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/u;->a:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->f:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/hyprmx/android/sdk/preload/n;->d(Ljava/lang/String;)Lcom/hyprmx/android/sdk/api/data/b;

    move-result-object v1

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "identifier"

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v9, "json.getString(FIELD_OFFER_IDENTIFIER)"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->a:Ljava/lang/String;

    const-string p1, "url"

    invoke-static {p1, v8}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->c:Ljava/lang/String;

    const-string p1, "last_parse_date"

    invoke-static {p1, v8}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->d:Ljava/lang/String;

    const-string p1, "tag_parse_failures"

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->h:I

    const-string p1, "tag_download_failures"

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->g:I

    const-string p1, "vastJSONString"

    invoke-static {p1, v8}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->e:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->f:Ljava/lang/String;

    iget-object p1, v1, Lcom/hyprmx/android/sdk/api/data/b;->b:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v9, v1, Lcom/hyprmx/android/sdk/api/data/b;->a:Ljava/lang/String;

    invoke-interface {p1, v9}, Lcom/hyprmx/android/sdk/preload/n;->f(Ljava/lang/String;)Lcom/hyprmx/android/sdk/api/data/c;

    move-result-object p1

    if-eqz p1, :cond_ad

    invoke-static {v7, v8}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a6

    const-string v10, "<set-?>"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v9, p1, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    :cond_a6
    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    :cond_ad
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->e:Lcom/hyprmx/android/sdk/preload/u;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/u;->a:Lcom/hyprmx/android/sdk/preload/n;

    iget-object v8, p0, Lcom/hyprmx/android/sdk/preload/u$b;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->a:Ljava/lang/Object;

    iput v6, p0, Lcom/hyprmx/android/sdk/preload/u$b;->d:I

    invoke-interface {p1, v8, v1, p0}, Lcom/hyprmx/android/sdk/preload/n;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/api/data/b;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_be

    return-object v0

    :cond_be
    :goto_be
    iget-object v1, v1, Lcom/hyprmx/android/sdk/api/data/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_107

    iget-object v6, p0, Lcom/hyprmx/android/sdk/preload/u$b;->e:Lcom/hyprmx/android/sdk/preload/u;

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->g:Ljava/lang/String;

    iget-object v8, v6, Lcom/hyprmx/android/sdk/preload/u;->a:Lcom/hyprmx/android/sdk/preload/n;

    iput-object v6, p0, Lcom/hyprmx/android/sdk/preload/u$b;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/hyprmx/android/sdk/preload/u$b;->c:Ljava/lang/String;

    iput v5, p0, Lcom/hyprmx/android/sdk/preload/u$b;->d:I

    invoke-interface {v8, v1}, Lcom/hyprmx/android/sdk/preload/n;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_d7

    return-object v0

    :cond_d7
    move-object v11, v5

    move-object v5, p1

    move-object p1, v11

    :goto_da
    check-cast p1, Lcom/hyprmx/android/sdk/api/data/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p1, Lcom/hyprmx/android/sdk/api/data/c;->c:I

    invoke-static {v7, v3}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f5

    iput-object v2, p1, Lcom/hyprmx/android/sdk/api/data/c;->a:Ljava/lang/String;

    :cond_f5
    iget-object v2, v6, Lcom/hyprmx/android/sdk/preload/u;->a:Lcom/hyprmx/android/sdk/preload/n;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/hyprmx/android/sdk/preload/u$b;->a:Ljava/lang/Object;

    iput-object v3, p0, Lcom/hyprmx/android/sdk/preload/u$b;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/hyprmx/android/sdk/preload/u$b;->c:Ljava/lang/String;

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/u$b;->d:I

    invoke-interface {v2, v1, p1, p0}, Lcom/hyprmx/android/sdk/preload/n;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/api/data/c;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_107

    return-object v0

    :cond_107
    :goto_107
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
