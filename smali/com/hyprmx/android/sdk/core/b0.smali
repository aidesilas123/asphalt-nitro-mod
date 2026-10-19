###### Class com.hyprmx.android.sdk.core.b0 (com.hyprmx.android.sdk.core.b0)
.class public final Lcom/hyprmx/android/sdk/core/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/core/i0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/r;

.field public c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/r;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/hyprmx/android/sdk/core/b0;-><init>(Landroid/content/Context;Lkotlinx/coroutines/r;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/r;)V
    .registers 4

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/b0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hyprmx/android/sdk/core/j$d;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    new-instance v1, Lcom/hyprmx/android/sdk/core/e0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/core/e0;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/hyprmx/android/sdk/core/j$d;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    new-instance v1, Lcom/hyprmx/android/sdk/core/g0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/hyprmx/android/sdk/core/g0;-><init>(Lcom/hyprmx/android/sdk/core/b0;Ljava/lang/String;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    new-instance v1, Lcom/hyprmx/android/sdk/core/b0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/core/b0$a;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/hyprmx/android/sdk/core/j$d;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    new-instance v1, Lcom/hyprmx/android/sdk/core/c0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/hyprmx/android/sdk/core/c0;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_13

    return-object p1

    :cond_13
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/core/b0$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/core/b0$b;

    iget v1, v0, Lcom/hyprmx/android/sdk/core/b0$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/core/b0$b;->d:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/core/b0$b;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/core/b0$b;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/core/b0$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/core/b0$b;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3b

    if-eq v2, v5, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_72

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lcom/hyprmx/android/sdk/core/b0$b;->a:Lcom/hyprmx/android/sdk/core/b0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_51

    :cond_3b
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput-object p0, v0, Lcom/hyprmx/android/sdk/core/b0$b;->a:Lcom/hyprmx/android/sdk/core/b0;

    iput v5, v0, Lcom/hyprmx/android/sdk/core/b0$b;->d:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    new-instance v2, Lcom/hyprmx/android/sdk/core/d0;

    invoke-direct {v2, p0, v4}, Lcom/hyprmx/android/sdk/core/d0;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_50

    return-object v1

    :cond_50
    move-object v2, p0

    :goto_51
    check-cast p1, Ljava/lang/String;

    iput-object v4, v0, Lcom/hyprmx/android/sdk/core/b0$b;->a:Lcom/hyprmx/android/sdk/core/b0;

    iput v3, v0, Lcom/hyprmx/android/sdk/core/b0$b;->d:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6a

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_6f

    :cond_6a
    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_6f
    if-ne p1, v1, :cond_72

    return-object v1

    :cond_72
    :goto_72
    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.b0.a (com.hyprmx.android.sdk.core.b0$a)
.class public final Lcom/hyprmx/android/sdk/core/b0$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/b0;->a(Lkotlin/coroutines/d;)Ljava/lang/Object;
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
    c = "com.hyprmx.android.sdk.core.StorageHelper$deleteCoreJSFile$2"
    f = "StorageHelper.kt"
    i = {}
    l = {
        0x7f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/hyprmx/android/sdk/core/b0;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/b0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/b0$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/b0$a;->b:Lcom/hyprmx/android/sdk/core/b0;

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

    new-instance p1, Lcom/hyprmx/android/sdk/core/b0$a;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/core/b0$a;->b:Lcom/hyprmx/android/sdk/core/b0;

    invoke-direct {p1, v0, p2}, Lcom/hyprmx/android/sdk/core/b0$a;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lcom/hyprmx/android/sdk/core/b0$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lcom/hyprmx/android/sdk/core/b0$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcom/hyprmx/android/sdk/core/b0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/hyprmx/android/sdk/core/b0$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/b0$a;->b:Lcom/hyprmx/android/sdk/core/b0;

    iput v2, p0, Lcom/hyprmx/android/sdk/core/b0$a;->a:I

    iget-object v1, p1, Lcom/hyprmx/android/sdk/core/b0;->b:Lkotlinx/coroutines/r;

    new-instance v2, Lcom/hyprmx/android/sdk/core/d0;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/hyprmx/android/sdk/core/d0;-><init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_38} :catch_39

    goto :goto_40

    :catch_39
    move-exception p1

    const-string v0, "Failed to delete core JS file"

    invoke-static {v0, p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_40
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class com.hyprmx.android.sdk.core.b0.b (com.hyprmx.android.sdk.core.b0$b)
.class public final Lcom/hyprmx/android/sdk/core/b0$b;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/core/b0;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "com.hyprmx.android.sdk.core.StorageHelper"
    f = "StorageHelper.kt"
    i = {}
    l = {
        0x56,
        0x56
    }
    m = "isCoreJSFileExist"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:Lcom/hyprmx/android/sdk/core/b0;

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/hyprmx/android/sdk/core/b0;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/b0;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hyprmx/android/sdk/core/b0;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/hyprmx/android/sdk/core/b0$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/b0$b;->c:Lcom/hyprmx/android/sdk/core/b0;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/hyprmx/android/sdk/core/b0$b;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/hyprmx/android/sdk/core/b0$b;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hyprmx/android/sdk/core/b0$b;->d:I

    iget-object p1, p0, Lcom/hyprmx/android/sdk/core/b0$b;->c:Lcom/hyprmx/android/sdk/core/b0;

    invoke-virtual {p1, p0}, Lcom/hyprmx/android/sdk/core/b0;->b(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
