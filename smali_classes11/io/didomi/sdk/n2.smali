###### Class io.didomi.drawable.N2 (io.didomi.sdk.N2)
.class public final Lio/didomi/sdk/N2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aH\u0010\u000b\u001a\u00020\n\"\u0004\u0008\u0000\u0010\u0000*\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "T",
        "Landroidx/fragment/app/Fragment;",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "stateFlow",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "",
        "collector",
        "Lkotlinx/coroutines/Job;",
        "a",
        "(Landroidx/fragment/app/Fragment;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Landroidx/fragment/app/Fragment;Lkotlinx/coroutines/flow/u;Lkotlin/jvm/b/l;)Lkotlinx/coroutines/Job;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlinx/coroutines/flow/u<",
            "+TT;>;",
            "Lkotlin/jvm/b/l<",
            "-TT;",
            "Lkotlin/v;",
            ">;)",
            "Lkotlinx/coroutines/Job;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateFlow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p0

    new-instance v0, Lio/didomi/sdk/N2$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lio/didomi/sdk/N2$a;-><init>(Lkotlinx/coroutines/flow/u;Lkotlin/jvm/b/l;Lkotlin/coroutines/d;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleCoroutineScope;->launchWhenResumed(Lkotlin/jvm/b/p;)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method
