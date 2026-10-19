###### Class com.hyprmx.android.sdk.network.d (com.hyprmx.android.sdk.network.d)
.class public final Lcom/hyprmx/android/sdk/network/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/network/k;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/network/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/network/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/network/m<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v5, Lcom/hyprmx/android/sdk/network/d$a;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/hyprmx/android/sdk/network/d$a;-><init>(Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const-string v3, "GET"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/hyprmx/android/sdk/network/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lcom/hyprmx/android/sdk/analytics/c$a;)Ljava/lang/Object;
    .registers 12

    new-instance v5, Lcom/hyprmx/android/sdk/network/e;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/hyprmx/android/sdk/network/e;-><init>(Lkotlin/coroutines/d;)V

    const-string v3, "POST"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/hyprmx/android/sdk/network/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/network/a;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/io/InputStream;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/network/m<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v0

    new-instance v9, Lcom/hyprmx/android/sdk/network/d$b;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p0

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/hyprmx/android/sdk/network/d$b;-><init>(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/d;Ljava/lang/String;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)V

    move-object/from16 v1, p6

    invoke-static {v0, v9, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.network.d.a (com.hyprmx.android.sdk.network.d$a)
.class public final Lcom/hyprmx/android/sdk/network/d$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/network/d;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.network.HttpNetworkController$getRequest$2"
    f = "HttpNetworkController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/network/d$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 4
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

    new-instance v0, Lcom/hyprmx/android/sdk/network/d$a;

    invoke-direct {v0, p2}, Lcom/hyprmx/android/sdk/network/d$a;-><init>(Lkotlin/coroutines/d;)V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/network/d$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/io/InputStream;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/network/d$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/network/d$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/network/d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/network/d$a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Lcom/hyprmx/android/sdk/extensions/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.network.d.b (com.hyprmx.android.sdk.network.d$b)
.class public final Lcom/hyprmx/android/sdk/network/d$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/network/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lcom/hyprmx/android/sdk/network/m<",
        "+TT;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.network.HttpNetworkController$request$2"
    f = "HttpNetworkController.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x4c
    }
    m = "invokeSuspend"
    n = {
        "errorResponseCode",
        "$this$invokeSuspend_u24lambda_u242",
        "contentLength"
    }
    s = {
        "L$0",
        "L$1",
        "J$0"
    }
.end annotation


# instance fields
.field public a:Lkotlin/jvm/internal/j0;

.field public b:Ljava/net/HttpURLConnection;

.field public c:I

.field public d:J

.field public e:I

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/hyprmx/android/sdk/network/a;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/hyprmx/android/sdk/network/d;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Ljava/io/InputStream;",
            "Lkotlin/coroutines/d<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/d;Ljava/lang/String;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/network/a;",
            "Ljava/lang/String;",
            "Lcom/hyprmx/android/sdk/network/d;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/io/InputStream;",
            "-",
            "Lkotlin/coroutines/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/network/d$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/network/d$b;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/network/d$b;->g:Lcom/hyprmx/android/sdk/network/a;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/network/d$b;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/network/d$b;->i:Lcom/hyprmx/android/sdk/network/d;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/network/d$b;->j:Ljava/lang/String;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/network/d$b;->k:Lkotlin/jvm/b/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 11
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

    new-instance p1, Lcom/hyprmx/android/sdk/network/d$b;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/network/d$b;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/network/d$b;->g:Lcom/hyprmx/android/sdk/network/a;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/network/d$b;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/network/d$b;->i:Lcom/hyprmx/android/sdk/network/d;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/network/d$b;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/network/d$b;->k:Lkotlin/jvm/b/p;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/network/d$b;-><init>(Ljava/lang/String;Lcom/hyprmx/android/sdk/network/a;Ljava/lang/String;Lcom/hyprmx/android/sdk/network/d;Ljava/lang/String;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/network/d$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/network/d$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/network/d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    const-string v0, "PATCH"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/hyprmx/android/sdk/network/d$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_28

    if-ne v2, v3, :cond_20

    iget-wide v0, p0, Lcom/hyprmx/android/sdk/network/d$b;->d:J

    iget v2, p0, Lcom/hyprmx/android/sdk/network/d$b;->c:I

    iget-object v3, p0, Lcom/hyprmx/android/sdk/network/d$b;->b:Ljava/net/HttpURLConnection;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/network/d$b;->a:Lkotlin/jvm/internal/j0;

    :try_start_15
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1d

    move-object v9, p1

    move-wide v11, v0

    move v8, v2

    goto/16 :goto_126

    :catchall_1d
    move-exception p1

    goto/16 :goto_142

    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v4, Lkotlin/jvm/internal/j0;

    invoke-direct {v4}, Lkotlin/jvm/internal/j0;-><init>()V

    :try_start_30
    new-instance p1, Ljava/net/URL;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/network/d$b;->f:Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/network/d$b;->g:Lcom/hyprmx/android/sdk/network/a;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/network/d$b;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/network/d$b;->i:Lcom/hyprmx/android/sdk/network/d;

    iget-object v7, p0, Lcom/hyprmx/android/sdk/network/d$b;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/hyprmx/android/sdk/network/d$b;->k:Lkotlin/jvm/b/p;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4c} :catch_14c

    :try_start_4c
    iget-boolean v9, v2, Lcom/hyprmx/android/sdk/network/a;->a:Z

    invoke-virtual {p1, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget v9, v2, Lcom/hyprmx/android/sdk/network/a;->b:I

    invoke-virtual {p1, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget v9, v2, Lcom/hyprmx/android/sdk/network/a;->c:I

    invoke-virtual {p1, v9}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_13f

    const-string v10, "POST"

    if-eqz v9, :cond_6e

    :try_start_66
    invoke-virtual {p1, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v9, "X-HTTP-Method-Override"

    invoke-virtual {p1, v9, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6e
    const-string v9, "User-Agent"

    iget-object v6, v6, Lcom/hyprmx/android/sdk/network/d;->a:Landroid/content/Context;

    invoke-static {v6}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v9, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept"

    const-string v9, "*/*"

    invoke-virtual {p1, v6, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Accept-Language"

    const-string v9, "en-us"

    invoke-virtual {p1, v6, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v2, Lcom/hyprmx/android/sdk/network/a;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v9, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_91

    :cond_ad
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, "PUT"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    :cond_c1
    if-eqz v7, :cond_f4

    sget-object v0, Lkotlin/text/b;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v5, "this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v5, "outputStream"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_e3
    .catchall {:try_start_66 .. :try_end_e3} :catchall_13f

    const/4 v0, 0x0

    :try_start_e4
    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    sget-object v2, Lkotlin/v;->a:Lkotlin/v;
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_ed

    :try_start_e9
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_13f

    goto :goto_f4

    :catchall_ed
    move-exception v0

    :try_start_ee
    throw v0
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    :catchall_ef
    move-exception v1

    :try_start_f0
    invoke-static {v5, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_f4
    :goto_f4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_ff

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v5

    goto :goto_104

    :cond_ff
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v5, v0

    :goto_104
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v7, "inputStream"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/hyprmx/android/sdk/network/d$b;->a:Lkotlin/jvm/internal/j0;

    iput-object p1, p0, Lcom/hyprmx/android/sdk/network/d$b;->b:Ljava/net/HttpURLConnection;

    iput v2, p0, Lcom/hyprmx/android/sdk/network/d$b;->c:I

    iput-wide v5, p0, Lcom/hyprmx/android/sdk/network/d$b;->d:J

    iput v3, p0, Lcom/hyprmx/android/sdk/network/d$b;->e:I

    invoke-interface {v8, v0, p0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_11f
    .catchall {:try_start_f0 .. :try_end_11f} :catchall_13f

    if-ne v0, v1, :cond_122

    return-object v1

    :cond_122
    move-object v3, p1

    move-object v9, v0

    move v8, v2

    move-wide v11, v5

    :goto_126
    :try_start_126
    invoke-virtual {v3}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    new-instance p1, Lcom/hyprmx/android/sdk/network/m$b;

    const-string v0, "headerFields"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/hyprmx/android/sdk/network/m$b;-><init>(ILjava/lang/Object;Ljava/util/Map;J)V
    :try_end_135
    .catchall {:try_start_126 .. :try_end_135} :catchall_1d

    :try_start_135
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v4, Lkotlin/jvm/internal/j0;->a:I

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_159

    :catchall_13f
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    :goto_142
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v4, Lkotlin/jvm/internal/j0;->a:I

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_14c} :catch_14c

    :catch_14c
    move-exception p1

    new-instance v0, Lcom/hyprmx/android/sdk/network/m$a;

    iget v1, v4, Lkotlin/jvm/internal/j0;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/hyprmx/android/sdk/network/m$a;-><init>(Ljava/lang/String;I)V

    move-object p1, v0

    :goto_159
    return-object p1
.end method
