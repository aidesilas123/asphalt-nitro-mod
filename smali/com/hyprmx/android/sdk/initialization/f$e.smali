###### Class com.hyprmx.android.sdk.initialization.f.e (com.hyprmx.android.sdk.initialization.f$e)
.class public final Lcom/hyprmx/android/sdk/initialization/f$e;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/initialization/f;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/consent/ConsentStatus;JLkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lcom/hyprmx/android/sdk/initialization/h;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.initialization.UpdateController$updateJavascript$2"
    f = "UpdateController.kt"
    i = {}
    l = {
        0x49,
        0x4c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/initialization/f;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Lcom/hyprmx/android/sdk/core/j;

.field public final synthetic f:Lcom/hyprmx/android/sdk/consent/ConsentStatus;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/initialization/f;Ljava/lang/String;JLcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/initialization/f;",
            "Ljava/lang/String;",
            "J",
            "Lcom/hyprmx/android/sdk/core/j;",
            "Lcom/hyprmx/android/sdk/consent/ConsentStatus;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/initialization/f$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->b:Lcom/hyprmx/android/sdk/initialization/f;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->c:Ljava/lang/String;

    iput-wide p3, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->d:J

    iput-object p5, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->e:Lcom/hyprmx/android/sdk/core/j;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->f:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

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

    new-instance p1, Lcom/hyprmx/android/sdk/initialization/f$e;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->b:Lcom/hyprmx/android/sdk/initialization/f;

    iget-object v2, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->d:J

    iget-object v5, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->e:Lcom/hyprmx/android/sdk/core/j;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->f:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/initialization/f$e;-><init>(Lcom/hyprmx/android/sdk/initialization/f;Ljava/lang/String;JLcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/initialization/f$e;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/initialization/f$e;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/initialization/f$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->b:Lcom/hyprmx/android/sdk/initialization/f;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->d:J

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iput v3, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->a:I

    invoke-virtual {p1, v1, v4, v5, p0}, Lcom/hyprmx/android/sdk/initialization/f;->a(Ljava/lang/String;JLkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    :cond_34
    :goto_34
    check-cast p1, Lcom/hyprmx/android/sdk/initialization/e;

    instance-of v1, p1, Lcom/hyprmx/android/sdk/initialization/e$b;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->b:Lcom/hyprmx/android/sdk/initialization/f;

    check-cast p1, Lcom/hyprmx/android/sdk/initialization/e$b;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/initialization/e$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->e:Lcom/hyprmx/android/sdk/core/j;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->f:Lcom/hyprmx/android/sdk/consent/ConsentStatus;

    iput v2, p0, Lcom/hyprmx/android/sdk/initialization/f$e;->a:I

    invoke-virtual {v1, p1, v3, v4, p0}, Lcom/hyprmx/android/sdk/initialization/f;->a(Ljava/lang/String;Lcom/hyprmx/android/sdk/core/j;Lcom/hyprmx/android/sdk/consent/ConsentStatus;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4d

    return-object v0

    :cond_4d
    :goto_4d
    check-cast p1, Lcom/hyprmx/android/sdk/initialization/h;

    instance-of v0, p1, Lcom/hyprmx/android/sdk/initialization/h$c;

    if-eqz v0, :cond_54

    return-object p1

    :cond_54
    sget-object p1, Lcom/hyprmx/android/sdk/initialization/h$a;->a:Lcom/hyprmx/android/sdk/initialization/h$a;

    return-object p1
.end method
