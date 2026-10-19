###### Class kotlinx.serialization.json.internal.JsonTreeReader.a (kotlinx.serialization.json.internal.JsonTreeReader$a)
.class final Lkotlinx/serialization/json/internal/JsonTreeReader$a;
.super Lkotlin/coroutines/jvm/internal/h;
.source "JsonTreeReader.kt"

# interfaces
.implements Lkotlin/jvm/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/internal/JsonTreeReader;->c()Lkotlinx/serialization/json/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/h;",
        "Lkotlin/jvm/b/q<",
        "Lkotlin/b<",
        "Lkotlin/v;",
        "Lkotlinx/serialization/json/d;",
        ">;",
        "Lkotlin/v;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlinx/serialization/json/d;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/serialization/json/JsonElement;",
        "Lkotlin/DeepRecursiveScope;",
        "",
        "it"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1"
    f = "JsonTreeReader.kt"
    i = {}
    l = {
        0x70
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lkotlinx/serialization/json/internal/JsonTreeReader;


# direct methods
.method constructor <init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/internal/JsonTreeReader;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/serialization/json/internal/JsonTreeReader$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/h;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlin/b;

    check-cast p2, Lkotlin/v;

    check-cast p3, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->k(Lkotlin/b;Lkotlin/v;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_49

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->b:Ljava/lang/Object;

    check-cast p1, Lkotlin/b;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {v1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$getLexer$p(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->E()B

    move-result v1

    if-ne v1, v2, :cond_31

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {p1, v2}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readValue(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/n;

    move-result-object p1

    goto :goto_56

    :cond_31
    if-nez v1, :cond_3b

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readValue(Lkotlinx/serialization/json/internal/JsonTreeReader;Z)Lkotlinx/serialization/json/n;

    move-result-object p1

    goto :goto_56

    :cond_3b
    const/4 v3, 0x6

    if-ne v1, v3, :cond_4c

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->a:I

    invoke-static {v1, p1, p0}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readObject(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/b;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_49

    return-object v0

    :cond_49
    :goto_49
    check-cast p1, Lkotlinx/serialization/json/d;

    goto :goto_56

    :cond_4c
    const/16 p1, 0x8

    if-ne v1, p1, :cond_57

    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$readArray(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/d;

    move-result-object p1

    :goto_56
    return-object p1

    :cond_57
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-static {p1}, Lkotlinx/serialization/json/internal/JsonTreeReader;->access$getLexer$p(Lkotlinx/serialization/json/internal/JsonTreeReader;)Lkotlinx/serialization/json/internal/AbstractJsonLexer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Can\'t begin reading element, unexpected token"

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p1, Lkotlin/f;

    invoke-direct {p1}, Lkotlin/f;-><init>()V

    throw p1
.end method

.method public final k(Lkotlin/b;Lkotlin/v;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/b<",
            "Lkotlin/v;",
            "Lkotlinx/serialization/json/d;",
            ">;",
            "Lkotlin/v;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlinx/serialization/json/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p2, Lkotlinx/serialization/json/internal/JsonTreeReader$a;

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->c:Lkotlinx/serialization/json/internal/JsonTreeReader;

    invoke-direct {p2, v0, p3}, Lkotlinx/serialization/json/internal/JsonTreeReader$a;-><init>(Lkotlinx/serialization/json/internal/JsonTreeReader;Lkotlin/coroutines/d;)V

    iput-object p1, p2, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->b:Ljava/lang/Object;

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p2, p1}, Lkotlinx/serialization/json/internal/JsonTreeReader$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
