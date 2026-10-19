###### Class kotlinx.coroutines.ThreadPoolDispatcherKt (kotlinx.coroutines.ThreadPoolDispatcherKt)
.class public final Lkotlinx/coroutines/ThreadPoolDispatcherKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "kotlinx/coroutines/ThreadPoolDispatcherKt__MultithreadedDispatchers_commonKt",
        "kotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/e0;
    .registers 2

    invoke-static {p0, p1}, Lkotlinx/coroutines/ThreadPoolDispatcherKt__ThreadPoolDispatcherKt;->newFixedThreadPoolContext(ILjava/lang/String;)Lkotlinx/coroutines/e0;

    move-result-object p0

    return-object p0
.end method

.method public static final newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/e0;
    .registers 1

    invoke-static {p0}, Lkotlinx/coroutines/ThreadPoolDispatcherKt__MultithreadedDispatchers_commonKt;->newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/e0;

    move-result-object p0

    return-object p0
.end method
