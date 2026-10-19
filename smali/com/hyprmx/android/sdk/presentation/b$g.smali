###### Class com.hyprmx.android.sdk.presentation.b.g (com.hyprmx.android.sdk.presentation.b$g)
.class public final Lcom/hyprmx/android/sdk/presentation/b$g;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/presentation/b;->showRequiredInfo(Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.hyprmx.android.sdk.presentation.DefaultPresentationController$showRequiredInfo$1"
    f = "PresentationController.kt"
    i = {}
    l = {
        0xe9
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/presentation/b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/presentation/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/presentation/b$g;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->b:Lcom/hyprmx/android/sdk/presentation/b;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->d:Ljava/lang/String;

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

    new-instance p1, Lcom/hyprmx/android/sdk/presentation/b$g;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->b:Lcom/hyprmx/android/sdk/presentation/b;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/hyprmx/android/sdk/presentation/b$g;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/presentation/b$g;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/presentation/b$g;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/presentation/b$g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_eb

    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->b:Lcom/hyprmx/android/sdk/presentation/b;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/presentation/b;->c:Landroid/content/Context;

    const-class v3, Lcom/hyprmx/android/sdk/activity/HyprMXRequiredInformationActivity;

    invoke-direct {p1, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->c:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_39

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_37

    goto :goto_39

    :cond_37
    const/4 v4, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 v4, 0x1

    :goto_3a
    if-eqz v4, :cond_45

    new-instance v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    const/4 v4, 0x0

    const-string v5, "No required info to parse."

    invoke-direct {v1, v5, v3, v4}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_97

    :cond_45
    :try_start_45
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_53
    if-ge v3, v5, :cond_88

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/hyprmx/android/sdk/api/data/o$a;->a(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/m0;

    move-result-object v6

    instance-of v7, v6, Lcom/hyprmx/android/sdk/utility/m0$b;

    if-eqz v7, :cond_6d

    check-cast v6, Lcom/hyprmx/android/sdk/utility/m0$b;

    iget-object v6, v6, Lcom/hyprmx/android/sdk/utility/m0$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_85

    :cond_6d
    instance-of v7, v6, Lcom/hyprmx/android/sdk/utility/m0$a;

    if-eqz v7, :cond_85

    new-instance v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    move-object v3, v6

    check-cast v3, Lcom/hyprmx/android/sdk/utility/m0$a;

    iget-object v3, v3, Lcom/hyprmx/android/sdk/utility/m0$a;->a:Ljava/lang/String;

    move-object v4, v6

    check-cast v4, Lcom/hyprmx/android/sdk/utility/m0$a;

    iget v4, v4, Lcom/hyprmx/android/sdk/utility/m0$a;->b:I

    check-cast v6, Lcom/hyprmx/android/sdk/utility/m0$a;

    iget-object v5, v6, Lcom/hyprmx/android/sdk/utility/m0$a;->c:Ljava/lang/Throwable;

    invoke-direct {v1, v3, v4, v5}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_97

    :cond_85
    :goto_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_88
    new-instance v3, Lcom/hyprmx/android/sdk/utility/m0$b;

    invoke-direct {v3, v1}, Lcom/hyprmx/android/sdk/utility/m0$b;-><init>(Ljava/lang/Object;)V
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_8d} :catch_8e

    goto :goto_96

    :catch_8e
    move-exception v1

    new-instance v3, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v4, "Exception parsing required information."

    invoke-direct {v3, v4, v2, v1}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    :goto_96
    move-object v1, v3

    :goto_97
    nop

    instance-of v3, v1, Lcom/hyprmx/android/sdk/utility/m0$b;

    if-eqz v3, :cond_c7

    iget-object v5, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->b:Lcom/hyprmx/android/sdk/presentation/b;

    iget-object v4, v5, Lcom/hyprmx/android/sdk/presentation/b;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v4}, Lcom/hyprmx/android/sdk/core/b;->p()Lcom/hyprmx/android/sdk/utility/f0;

    move-result-object v6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->b:Lcom/hyprmx/android/sdk/presentation/b;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/presentation/b;->a:Lcom/hyprmx/android/sdk/core/b;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/core/b;->r()Lcom/hyprmx/android/sdk/model/a;

    move-result-object v7

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/hyprmx/android/sdk/api/data/r$a;->a(Ljava/lang/String;)Lcom/hyprmx/android/sdk/api/data/r;

    move-result-object v8

    check-cast v1, Lcom/hyprmx/android/sdk/utility/m0$b;

    iget-object v0, v1, Lcom/hyprmx/android/sdk/utility/m0$b;->a:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/util/List;

    invoke-interface/range {v4 .. v9}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/presentation/b;Lcom/hyprmx/android/sdk/utility/f0;Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/api/data/r;Ljava/util/List;)Lcom/hyprmx/android/sdk/activity/g0;

    move-result-object v0

    sput-object v0, Lcom/hyprmx/android/sdk/activity/a;->b:Lcom/hyprmx/android/sdk/activity/g0;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->b:Lcom/hyprmx/android/sdk/presentation/b;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/presentation/b;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_eb

    :cond_c7
    instance-of p1, v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    if-eqz p1, :cond_eb

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling ad because Required Information is Invalid. "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/m0$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->b:Lcom/hyprmx/android/sdk/presentation/b;

    iput v2, p0, Lcom/hyprmx/android/sdk/presentation/b$g;->a:I

    invoke-virtual {p1}, Lcom/hyprmx/android/sdk/presentation/b;->a()Lkotlin/v;

    move-result-object p1

    if-ne p1, v0, :cond_eb

    return-object v0

    :cond_eb
    :goto_eb
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
