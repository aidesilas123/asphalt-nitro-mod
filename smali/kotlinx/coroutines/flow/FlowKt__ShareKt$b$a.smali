###### Class kotlinx.coroutines.flow.FlowKt__ShareKt.b.a (kotlinx.coroutines.flow.FlowKt__ShareKt$b$a)
.class final Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;
.super Ljava/lang/Object;
.source "Share.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__ShareKt$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/j;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/l0<",
            "Lkotlinx/coroutines/flow/l<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlinx/coroutines/s;

.field final synthetic c:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlinx/coroutines/flow/u<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/l0;Lkotlinx/coroutines/s;Lkotlinx/coroutines/CompletableDeferred;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/l0<",
            "Lkotlinx/coroutines/flow/l<",
            "TT;>;>;",
            "Lkotlinx/coroutines/s;",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlinx/coroutines/flow/u<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;->a:Lkotlin/jvm/internal/l0;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;->b:Lkotlinx/coroutines/s;

    iput-object p3, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;->c:Lkotlinx/coroutines/CompletableDeferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;->a:Lkotlin/jvm/internal/l0;

    iget-object p2, p2, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/flow/l;

    if-eqz p2, :cond_e

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/l;->setValue(Ljava/lang/Object;)V

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    if-nez p2, :cond_2d

    iget-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;->b:Lkotlinx/coroutines/s;

    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;->a:Lkotlin/jvm/internal/l0;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__ShareKt$b$a;->c:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/l;

    move-result-object p1

    new-instance v2, Lkotlinx/coroutines/flow/n;

    invoke-interface {p2}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/JobKt;->getJob(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Lkotlinx/coroutines/flow/n;-><init>(Lkotlinx/coroutines/flow/u;Lkotlinx/coroutines/Job;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/CompletableDeferred;->v(Ljava/lang/Object;)Z

    iput-object p1, v0, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    :cond_2d
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
