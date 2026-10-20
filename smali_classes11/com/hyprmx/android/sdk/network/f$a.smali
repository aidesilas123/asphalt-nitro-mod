###### Class com.hyprmx.android.sdk.network.f.a (com.hyprmx.android.sdk.network.f$a)
.class public final Lcom/hyprmx/android/sdk/network/f$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/network/f;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.hyprmx.android.sdk.network.JSNetworkController$request$1"
    f = "JSNetworkController.kt"
    i = {}
    l = {
        0x22
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/hyprmx/android/sdk/network/f;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/network/f;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/network/f$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/network/f$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/network/f$a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/network/f$a;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/network/f$a;->e:Lcom/hyprmx/android/sdk/network/f;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/network/f$a;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/network/f$a;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/hyprmx/android/sdk/network/f$a;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 12
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

    new-instance p1, Lcom/hyprmx/android/sdk/network/f$a;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/network/f$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/network/f$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/network/f$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/network/f$a;->e:Lcom/hyprmx/android/sdk/network/f;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/network/f$a;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/network/f$a;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/hyprmx/android/sdk/network/f$a;->h:Ljava/lang/String;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/hyprmx/android/sdk/network/f$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/network/f$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/network/f$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/network/f$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18

    move-object/from16 v8, p0

    const-string v0, "Network response returned with "

    const-string v1, "Network request "

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    iget v2, v8, Lcom/hyprmx/android/sdk/network/f$a;->a:I

    const/4 v10, 0x0

    const-string v11, "error"

    const/4 v3, 0x1

    const-string v12, ");"

    const-string v13, "\', "

    const-string v14, "(\'"

    const-string v15, "code"

    if-eqz v2, :cond_2a

    if-ne v2, v3, :cond_22

    :try_start_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1f} :catch_10d

    move-object/from16 v1, p1

    goto :goto_76

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with method "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->e:Lcom/hyprmx/android/sdk/network/f;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/network/f;->a:Lcom/hyprmx/android/sdk/network/k;

    iget-object v2, v8, Lcom/hyprmx/android/sdk/network/f$a;->c:Ljava/lang/String;

    iget-object v4, v8, Lcom/hyprmx/android/sdk/network/f$a;->f:Ljava/lang/String;

    iget-object v5, v8, Lcom/hyprmx/android/sdk/network/f$a;->d:Ljava/lang/String;

    iget-object v6, v8, Lcom/hyprmx/android/sdk/network/f$a;->g:Ljava/lang/String;

    invoke-static {v6}, Lcom/hyprmx/android/sdk/network/g;->a(Ljava/lang/String;)Lcom/hyprmx/android/sdk/network/a;

    move-result-object v6

    new-instance v7, Lcom/hyprmx/android/sdk/network/f$a$a;

    invoke-direct {v7, v10}, Lcom/hyprmx/android/sdk/network/f$a$a;-><init>(Lkotlin/coroutines/d;)V

    iput v3, v8, Lcom/hyprmx/android/sdk/network/f$a;->a:I

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p0

    invoke-interface/range {v1 .. v7}, Lcom/hyprmx/android/sdk/network/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_76

    return-object v9

    :cond_76
    :goto_76
    check-cast v1, Lcom/hyprmx/android/sdk/network/m;

    instance-of v2, v1, Lcom/hyprmx/android/sdk/network/m$b;

    if-eqz v2, :cond_cf

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/hyprmx/android/sdk/network/m$b;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/network/m$b;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v1

    check-cast v2, Lcom/hyprmx/android/sdk/network/m$b;

    iget-object v2, v2, Lcom/hyprmx/android/sdk/network/m$b;->c:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/hyprmx/android/sdk/network/g;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/network/m;->a()I

    move-result v2

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "body"

    check-cast v1, Lcom/hyprmx/android/sdk/network/m$b;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/network/m$b;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->e:Lcom/hyprmx/android/sdk/network/f;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/network/f;->b:Lcom/hyprmx/android/sdk/core/js/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/hyprmx/android/sdk/network/f$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hyprmx/android/sdk/network/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_105

    :cond_cf
    instance-of v0, v1, Lcom/hyprmx/android/sdk/network/m$a;

    if-eqz v0, :cond_157

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lcom/hyprmx/android/sdk/network/m;->a()I

    move-result v2

    invoke-virtual {v0, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    check-cast v1, Lcom/hyprmx/android/sdk/network/m$a;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/network/m$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->e:Lcom/hyprmx/android/sdk/network/f;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/network/f;->b:Lcom/hyprmx/android/sdk/core/js/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/hyprmx/android/sdk/network/f$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hyprmx/android/sdk/network/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_10c} :catch_10d

    goto :goto_157

    :catch_10d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error making request to url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "Exception making network request"

    invoke-virtual {v0, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->e:Lcom/hyprmx/android/sdk/network/f;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/network/f;->b:Lcom/hyprmx/android/sdk/core/js/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/hyprmx/android/sdk/network/f$a;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/hyprmx/android/sdk/network/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    :cond_157
    :goto_157
    iget-object v0, v8, Lcom/hyprmx/android/sdk/network/f$a;->e:Lcom/hyprmx/android/sdk/network/f;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/network/f;->e:Ljava/util/LinkedHashMap;

    iget-object v1, v8, Lcom/hyprmx/android/sdk/network/f$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method
