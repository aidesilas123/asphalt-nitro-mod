###### Class kotlinx.coroutines.InvokeOnCompletion (kotlinx.coroutines.m0)
.class final Lkotlinx/coroutines/m0;
.super Lkotlinx/coroutines/q0;
.source "JobSupport.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/InvokeOnCompletion;",
        "Lkotlinx/coroutines/JobNode;",
        "handler",
        "Lkotlinx/coroutines/InternalCompletionHandler;",
        "(Lkotlinx/coroutines/InternalCompletionHandler;)V",
        "invoke",
        "",
        "cause",
        "",
        "kotlinx-coroutines-core"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final e:Lkotlinx/coroutines/k0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/k0;)V
    .registers 2

    invoke-direct {p0}, Lkotlinx/coroutines/q0;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/m0;->e:Lkotlinx/coroutines/k0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/m0;->e:Lkotlinx/coroutines/k0;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/k0;->a(Ljava/lang/Throwable;)V

    return-void
.end method
