###### Class com.hyprmx.android.sdk.p002assert.a (com.hyprmx.android.sdk.assert.a)
.class public final synthetic Lcom/hyprmx/android/sdk/assert/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hyprmx/android/sdk/assert/ThreadAssert;)V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->getClientErrorController()Lcom/hyprmx/android/sdk/analytics/b;

    move-result-object v0

    if-eqz v0, :cond_20

    sget-object v1, Lcom/hyprmx/android/sdk/utility/s;->e:Lcom/hyprmx/android/sdk/utility/s;

    const-string v2, "Background Thread"

    invoke-static {p0, v2}, Lcom/hyprmx/android/sdk/assert/a;->d(Lcom/hyprmx/android/sdk/assert/ThreadAssert;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    :cond_20
    return-void
.end method

.method public static b(Lcom/hyprmx/android/sdk/assert/ThreadAssert;)V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->getClientErrorController()Lcom/hyprmx/android/sdk/analytics/b;

    move-result-object v0

    if-eqz v0, :cond_20

    sget-object v1, Lcom/hyprmx/android/sdk/utility/s;->e:Lcom/hyprmx/android/sdk/utility/s;

    const-string v2, "Main"

    invoke-static {p0, v2}, Lcom/hyprmx/android/sdk/assert/a;->d(Lcom/hyprmx/android/sdk/assert/ThreadAssert;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v0, v1, v2, v3}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    :cond_20
    return-void
.end method

.method public static c(Lcom/hyprmx/android/sdk/assert/ThreadAssert;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->getClientErrorController()Lcom/hyprmx/android/sdk/analytics/b;

    move-result-object v0

    if-eqz v0, :cond_1d

    sget-object v1, Lcom/hyprmx/android/sdk/utility/s;->g:Lcom/hyprmx/android/sdk/utility/s;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "THIS SHOULD NEVER BE CALLED! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    invoke-interface {v0, v1, p1, v2}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    :cond_1d
    return-void
.end method

.method public static d(Lcom/hyprmx/android/sdk/assert/ThreadAssert;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v1, v3, :cond_1c

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    goto :goto_1e

    :cond_1c
    const/4 v0, -0x1

    move-object v1, v2

    :goto_1e
    sget-object v4, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object p1, v5, v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v5, v2

    const/4 p1, 0x3

    aput-object v1, v5, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Method %s must called on the %s Thread. But was calling on the %s thread. Class: %s, line: %d"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
