###### Class com.hyprmx.android.sdk.model.a (com.hyprmx.android.sdk.model.a)
.class public interface abstract Lcom/hyprmx/android/sdk/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a()Lcom/hyprmx/android/sdk/preload/n;
.end method

.method public abstract a(Lcom/hyprmx/android/sdk/analytics/k$a;)Ljava/lang/Object;
.end method

###### Class com.hyprmx.android.sdk.model.a.CC (com.hyprmx.android.sdk.model.a$-CC)
.class public final synthetic Lcom/hyprmx/android/sdk/model/a$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/analytics/k$a;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/model/a$-CC;->d(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static b(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lorg/json/JSONArray;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/model/a$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/model/a$a;

    iget v1, v0, Lcom/hyprmx/android/sdk/model/a$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/model/a$a;->f:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/model/a$a;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/model/a$a;-><init>(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/model/a$a;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/model/a$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v3, :cond_2f

    iget-object v2, v0, Lcom/hyprmx/android/sdk/model/a$a;->c:Lorg/json/JSONArray;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/model/a$a;->b:Ljava/util/Iterator;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/model/a$a;->a:Lorg/json/JSONArray;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_73

    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/model/a;->a()Lcom/hyprmx/android/sdk/preload/n;

    move-result-object v2

    invoke-interface {v2}, Lcom/hyprmx/android/sdk/preload/n;->c()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v2

    move-object v2, p1

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/api/data/b;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/model/a$a;->a:Lorg/json/JSONArray;

    iput-object v4, v0, Lcom/hyprmx/android/sdk/model/a$a;->b:Ljava/util/Iterator;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/model/a$a;->c:Lorg/json/JSONArray;

    iput v3, v0, Lcom/hyprmx/android/sdk/model/a$a;->f:I

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/api/data/b;->c()Lorg/json/JSONObject;

    move-result-object p1

    if-ne p1, v1, :cond_72

    return-object v1

    :cond_72
    move-object v5, v2

    :goto_73
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v2, v5

    goto :goto_51

    :cond_78
    return-object v2
.end method

.method public static synthetic c(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/hyprmx/android/sdk/model/a$-CC;->b(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/model/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/model/a$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/model/a$b;

    iget v1, v0, Lcom/hyprmx/android/sdk/model/a$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/model/a$b;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/model/a$b;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/model/a$b;-><init>(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/model/a$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/model/a$b;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    iget-object p0, v0, Lcom/hyprmx/android/sdk/model/a$b;->a:Lorg/json/JSONObject;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, v0, Lcom/hyprmx/android/sdk/model/a$b;->a:Lorg/json/JSONObject;

    iput v3, v0, Lcom/hyprmx/android/sdk/model/a$b;->d:I

    invoke-static {p0, v0}, Lcom/hyprmx/android/sdk/model/a$-CC;->b(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_46

    return-object v1

    :cond_46
    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_49
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_52

    return-object p0

    :cond_52
    const-string v0, "preloaded_ads"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0
.end method

###### Class com.hyprmx.android.sdk.model.a.C0290a (com.hyprmx.android.sdk.model.a$a)
.class public final Lcom/hyprmx/android/sdk/model/a$a;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/model/a$-CC;->b(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.model.PreloadedVastData"
    f = "PreloadedVastData.kt"
    i = {
        0x0
    }
    l = {
        0x1e
    }
    m = "getAllPreloadParameters"
    n = {
        "preloadedAdArray"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONArray;

.field public b:Ljava/util/Iterator;

.field public c:Lorg/json/JSONArray;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/hyprmx/android/sdk/model/a;

.field public f:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/model/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/model/a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/model/a$a;->e:Lcom/hyprmx/android/sdk/model/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/model/a$a;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/model/a$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/model/a$a;->f:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/model/a$a;->e:Lcom/hyprmx/android/sdk/model/a;

    invoke-static {p1, p0}, Lcom/hyprmx/android/sdk/model/a$-CC;->c(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.model.a.b (com.hyprmx.android.sdk.model.a$b)
.class public final Lcom/hyprmx/android/sdk/model/a$b;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/model/a$-CC;->d(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.model.PreloadedVastData"
    f = "PreloadedVastData.kt"
    i = {
        0x0
    }
    l = {
        0xf
    }
    m = "getParameters$suspendImpl"
    n = {
        "preloadedOffers"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field public a:Lorg/json/JSONObject;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/model/a;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/model/a;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/model/a$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/model/a$b;->c:Lcom/hyprmx/android/sdk/model/a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/model/a$b;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/model/a$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/model/a$b;->d:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/model/a$b;->c:Lcom/hyprmx/android/sdk/model/a;

    invoke-static {p1, p0}, Lcom/hyprmx/android/sdk/model/a$-CC;->d(Lcom/hyprmx/android/sdk/model/a;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
