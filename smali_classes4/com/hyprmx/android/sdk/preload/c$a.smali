###### Class com.hyprmx.android.sdk.preload.c.a (com.hyprmx.android.sdk.preload.c$a)
.class public final Lcom/hyprmx/android/sdk/preload/c$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/preload/c;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.preload.CacheController$clearCache$2"
    f = "CacheController.kt"
    i = {
        0x4,
        0x5
    }
    l = {
        0x137,
        0x13b,
        0x13c,
        0x13e,
        0x140,
        0x143
    }
    m = "invokeSuspend"
    n = {
        "result",
        "result"
    }
    s = {
        "Z$0",
        "Z$0"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lcom/hyprmx/android/sdk/preload/c;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/preload/c;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/preload/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

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

    new-instance p1, Lcom/hyprmx/android/sdk/preload/c$a;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/preload/c$a;-><init>(Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/preload/c$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/preload/c$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/preload/c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->b:I

    const-string v2, "Error deleting file in internal storage"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_d8

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_14
    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/preload/c$a;->a:Z

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c7

    :pswitch_1b
    iget-boolean v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->a:Z

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a9

    :pswitch_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_8e

    :pswitch_26
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_80

    :pswitch_2a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_74

    :pswitch_2e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_46

    :pswitch_32
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p1, "clearCache"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    const/4 v1, 0x1

    iput v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->b:I

    invoke-virtual {p1, v3}, Lcom/hyprmx/android/sdk/preload/c;->g(Ljava/lang/String;)Lkotlin/v;

    move-result-object p1

    if-ne p1, v0, :cond_46

    return-object v0

    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/c;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/c;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    const/4 v1, 0x2

    iput v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->b:I

    iget-object v1, p1, Lcom/hyprmx/android/sdk/preload/c;->h:Lkotlinx/coroutines/s;

    invoke-interface {v1}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    new-instance v4, Lcom/hyprmx/android/sdk/preload/m;

    invoke-direct {v4, p1, v3}, Lcom/hyprmx/android/sdk/preload/m;-><init>(Lcom/hyprmx/android/sdk/preload/c;Lkotlin/coroutines/d;)V

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_6f

    goto :goto_71

    :cond_6f
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_71
    if-ne p1, v0, :cond_74

    return-object v0

    :cond_74
    :goto_74
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    const/4 v1, 0x3

    iput v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->b:I

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/preload/c;->e(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_80

    return-object v0

    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/c;->c:Lcom/hyprmx/android/sdk/preload/p;

    const/4 v1, 0x4

    iput v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->b:I

    invoke-interface {p1, p0}, Lcom/hyprmx/android/sdk/preload/p;->d(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8e

    return-object v0

    :cond_8e
    :goto_8e
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v3, v1, Lcom/hyprmx/android/sdk/preload/c;->d:Lcom/hyprmx/android/sdk/utility/a;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/preload/c;->b:Landroid/content/Context;

    iput-boolean p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->a:Z

    const/4 v4, 0x5

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/c$a;->b:I

    invoke-interface {v3, v1, p0}, Lcom/hyprmx/android/sdk/utility/a;->a(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_a6

    return-object v0

    :cond_a6
    move-object v5, v1

    move v1, p1

    move-object p1, v5

    :goto_a9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_b4

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_b4
    iget-object p1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->c:Lcom/hyprmx/android/sdk/preload/c;

    iget-object v3, p1, Lcom/hyprmx/android/sdk/preload/c;->e:Lcom/hyprmx/android/sdk/utility/a;

    iget-object p1, p1, Lcom/hyprmx/android/sdk/preload/c;->b:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/hyprmx/android/sdk/preload/c$a;->a:Z

    const/4 v4, 0x6

    iput v4, p0, Lcom/hyprmx/android/sdk/preload/c$a;->b:I

    invoke-interface {v3, p1, p0}, Lcom/hyprmx/android/sdk/utility/a;->a(Landroid/content/Context;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c6

    return-object v0

    :cond_c6
    move v0, v1

    :goto_c7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_d2

    invoke-static {v2}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_d2
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1b
        :pswitch_14
    .end packed-switch
.end method
