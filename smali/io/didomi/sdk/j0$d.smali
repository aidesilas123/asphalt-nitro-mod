###### Class io.didomi.drawable.C1797j0.d (io.didomi.sdk.j0$d)
.class final Lio/didomi/sdk/j0$d;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/j0;->a(Lio/didomi/sdk/consent/model/ConsentToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "io.didomi.sdk.consent.DCSRepository$save$1"
    f = "DCSRepository.kt"
    i = {}
    l = {
        0x39
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/didomi/sdk/consent/model/ConsentToken;

.field final synthetic c:Lio/didomi/sdk/j0;


# direct methods
.method constructor <init>(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/j0;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/consent/model/ConsentToken;",
            "Lio/didomi/sdk/j0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/j0$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/j0$d;->b:Lio/didomi/sdk/consent/model/ConsentToken;

    iput-object p2, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/j0$d;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/j0$d;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/j0$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

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

    new-instance p1, Lio/didomi/sdk/j0$d;

    iget-object v0, p0, Lio/didomi/sdk/j0$d;->b:Lio/didomi/sdk/consent/model/ConsentToken;

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-direct {p1, v0, v1, p2}, Lio/didomi/sdk/j0$d;-><init>(Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/j0;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/j0$d;->a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/didomi/sdk/j0$d;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/j0$d;->b:Lio/didomi/sdk/consent/model/ConsentToken;

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v1}, Lio/didomi/sdk/j0;->f(Lio/didomi/sdk/j0;)Lio/didomi/sdk/M8;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/M8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lio/didomi/sdk/X;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/DidomiConsentToken;

    move-result-object p1

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v1}, Lio/didomi/sdk/j0;->b(Lio/didomi/sdk/j0;)Lio/didomi/sdk/h0;

    move-result-object v1

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "Gson().toJson(didomiConsentToken)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v3}, Lio/didomi/sdk/j0;->d(Lio/didomi/sdk/j0;)I

    move-result v3

    iput v2, p0, Lio/didomi/sdk/j0$d;->a:I

    invoke-virtual {v1, p1, v3, p0}, Lio/didomi/sdk/h0;->a(Ljava/lang/String;ILkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4d

    return-object v0

    :cond_4d
    :goto_4d
    check-cast p1, Lio/didomi/sdk/y;

    invoke-virtual {p1}, Lio/didomi/sdk/y;->c()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {p1}, Lio/didomi/sdk/y;->a()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_61

    const-string v0, "Unknown error from DCS encoder"

    :cond_61
    invoke-virtual {p1}, Lio/didomi/sdk/y;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v0}, Lio/didomi/sdk/j0;->e(Lio/didomi/sdk/j0;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/j0$d;->c:Lio/didomi/sdk/j0;

    invoke-static {v1}, Lio/didomi/sdk/j0;->c(Lio/didomi/sdk/j0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/didomi/sdk/y;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_88} :catch_89

    goto :goto_95

    :catch_89
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_92

    const-string v0, "Unknown error while saving DCS"

    :cond_92
    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_95
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
