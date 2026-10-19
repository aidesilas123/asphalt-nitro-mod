###### Class io.didomi.drawable.AbstractC1846o (io.didomi.sdk.o)
.class public abstract Lio/didomi/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008&\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u0000*\u0004\u0008\u0001\u0010\u00022\u00020\u0003B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010\u0008\u001a\u00028\u0000H\u0086B\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ!\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00010\t2\u0006\u0010\u000c\u001a\u00028\u0000H\u00a4@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000e\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/didomi/sdk/o;",
        "Param",
        "Type",
        "",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "parameters",
        "Lio/didomi/sdk/y;",
        "b",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "param",
        "a",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/coroutines/r;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/r;)V
    .registers 3

    const-string v0, "coroutineDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/o;->a:Lkotlinx/coroutines/r;

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/y<",
            "+TType;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParam;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/y<",
            "+TType;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/didomi/sdk/o$a;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lio/didomi/sdk/o$a;

    iget v1, v0, Lio/didomi/sdk/o$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lio/didomi/sdk/o$a;->c:I

    goto :goto_18

    :cond_13
    new-instance v0, Lio/didomi/sdk/o$a;

    invoke-direct {v0, p0, p2}, Lio/didomi/sdk/o$a;-><init>(Lio/didomi/sdk/o;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p2, v0, Lio/didomi/sdk/o$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lio/didomi/sdk/o$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_31

    if-ne v2, v3, :cond_29

    :try_start_25
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_48

    goto :goto_45

    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_31
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :try_start_34
    iget-object p2, p0, Lio/didomi/sdk/o;->a:Lkotlinx/coroutines/r;

    new-instance v2, Lio/didomi/sdk/o$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lio/didomi/sdk/o$b;-><init>(Lio/didomi/sdk/o;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    iput v3, v0, Lio/didomi/sdk/o$a;->c:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_45

    return-object v1

    :cond_45
    :goto_45
    check-cast p2, Lio/didomi/sdk/y;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_47} :catch_48

    goto :goto_4f

    :catch_48
    move-exception p1

    sget-object p2, Lio/didomi/sdk/y;->c:Lio/didomi/sdk/y$a;

    invoke-virtual {p2, p1}, Lio/didomi/sdk/y$a;->a(Ljava/lang/Throwable;)Lio/didomi/sdk/y;

    move-result-object p2

    :goto_4f
    return-object p2
.end method

###### Class io.didomi.drawable.AbstractC1846o.a (io.didomi.sdk.o$a)
.class final Lio/didomi/sdk/o$a;
.super Lkotlin/coroutines/jvm/internal/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/o;->b(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "io.didomi.sdk.core.base.BaseUseCase"
    f = "BaseUseCase.kt"
    i = {}
    l = {
        0x16
    }
    m = "invoke"
    n = {}
    s = {}
.end annotation


# instance fields
.field synthetic a:Ljava/lang/Object;

.field final synthetic b:Lio/didomi/sdk/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/didomi/sdk/o<",
            "TParam;TType;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lio/didomi/sdk/o;Lkotlin/coroutines/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/o<",
            "-TParam;TType;>;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/o$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/o$a;->b:Lio/didomi/sdk/o;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/c;-><init>(Lkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lio/didomi/sdk/o$a;->a:Ljava/lang/Object;

    iget p1, p0, Lio/didomi/sdk/o$a;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/didomi/sdk/o$a;->c:I

    iget-object p1, p0, Lio/didomi/sdk/o$a;->b:Lio/didomi/sdk/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/didomi/sdk/o;->b(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class io.didomi.drawable.AbstractC1846o.b (io.didomi.sdk.o$b)
.class final Lio/didomi/sdk/o$b;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/o;->b(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
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
        "Lio/didomi/sdk/y<",
        "+TType;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003\"\u0006\u0008\u0000\u0010\u0000 \u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Param",
        "Type",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lio/didomi/sdk/y;",
        "<anonymous>",
        "(Lkotlinx/coroutines/CoroutineScope;)Lio/didomi/sdk/y;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "io.didomi.sdk.core.base.BaseUseCase$invoke$2"
    f = "BaseUseCase.kt"
    i = {}
    l = {
        0x17
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/didomi/sdk/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/didomi/sdk/o<",
            "TParam;TType;>;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParam;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/didomi/sdk/o;Ljava/lang/Object;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/o<",
            "-TParam;TType;>;TParam;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/o$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/o$b;->b:Lio/didomi/sdk/o;

    iput-object p2, p0, Lio/didomi/sdk/o$b;->c:Ljava/lang/Object;

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
            "Lio/didomi/sdk/y<",
            "+TType;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/o$b;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/o$b;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/o$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance p1, Lio/didomi/sdk/o$b;

    iget-object v0, p0, Lio/didomi/sdk/o$b;->b:Lio/didomi/sdk/o;

    iget-object v1, p0, Lio/didomi/sdk/o$b;->c:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lio/didomi/sdk/o$b;-><init>(Lio/didomi/sdk/o;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/o$b;->a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lio/didomi/sdk/o$b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_27

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/o$b;->b:Lio/didomi/sdk/o;

    iget-object v1, p0, Lio/didomi/sdk/o$b;->c:Ljava/lang/Object;

    iput v2, p0, Lio/didomi/sdk/o$b;->a:I

    invoke-virtual {p1, v1, p0}, Lio/didomi/sdk/o;->a(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_27

    return-object v0

    :cond_27
    :goto_27
    return-object p1
.end method
