###### Class kotlinx.coroutines.RunnableKt (kotlinx.coroutines.RunnableKt)
.class public final Lkotlinx/coroutines/RunnableKt;
.super Ljava/lang/Object;
.source "Runnable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a\u001d\u0010\u0000\u001a\u00060\u0001j\u0002`\u00022\u000e\u0008\u0004\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0086\u0008*\n\u0010\u0000\"\u00020\u00012\u00020\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "Runnable",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "block",
        "Lkotlin/Function0;",
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


# direct methods
.method public static final Runnable(Lkotlin/jvm/b/a;)Ljava/lang/Runnable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/RunnableKt$a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/RunnableKt$a;-><init>(Lkotlin/jvm/b/a;)V

    return-object v0
.end method
