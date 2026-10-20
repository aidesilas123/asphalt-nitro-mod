###### Class com.hyprmx.android.sdk.om.b (com.hyprmx.android.sdk.om.b)
.class public final Lcom/hyprmx/android/sdk/om/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/s;
.implements Lcom/hyprmx/android/sdk/om/g;


# instance fields
.field public final a:Lcom/iab/omid/library/jungroup/adsession/j;

.field public final b:Lcom/hyprmx/android/sdk/network/k;

.field public final c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

.field public final d:Ljava/lang/String;

.field public final e:Landroid/content/Context;

.field public final f:Lkotlinx/coroutines/s;

.field public final g:Lkotlinx/coroutines/r;

.field public h:Lcom/hyprmx/android/sdk/om/f;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/jungroup/adsession/j;Lcom/hyprmx/android/sdk/network/k;Lcom/hyprmx/android/sdk/assert/ThreadAssert;Ljava/lang/String;Landroid/content/Context;Lkotlinx/coroutines/s;Lkotlinx/coroutines/r;)V
    .registers 9

    const-string v0, "omPartner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assert"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "omSdkUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScope"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/om/b;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/om/b;->b:Lcom/hyprmx/android/sdk/network/k;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/om/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/om/b;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/om/b;->f:Lkotlinx/coroutines/s;

    iput-object p7, p0, Lcom/hyprmx/android/sdk/om/b;->g:Lkotlinx/coroutines/r;

    return-void
.end method


# virtual methods
.method public final a(F)Lcom/hyprmx/android/sdk/tracking/a;
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/om/f;->a(F)Lcom/hyprmx/android/sdk/tracking/a;

    move-result-object p1

    if-nez p1, :cond_f

    :cond_a
    new-instance p1, Lcom/hyprmx/android/sdk/om/b$a;

    invoke-direct {p1}, Lcom/hyprmx/android/sdk/om/b$a;-><init>()V

    :cond_f
    return-object p1
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/om/f;->a()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 4

    const-string v0, "friendlyObstruction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    :try_start_a
    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    if-eqz v0, :cond_28

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/om/f;->a(Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_28

    :catch_12
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error removing registered obstruction with error msg - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public final a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;Ljava/lang/String;)V
    .registers 4

    const-string p3, "friendlyObstruction"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "purpose"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {p3}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    :try_start_f
    iget-object p3, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    if-eqz p3, :cond_2d

    invoke-interface {p3, p1, p2}, Lcom/hyprmx/android/sdk/om/f;->a(Landroid/view/View;Lcom/iab/omid/library/jungroup/adsession/g;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_16} :catch_17

    goto :goto_2d

    :catch_17
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error registering obstruction with error msg - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const-string v0, "sessionData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    if-eqz v0, :cond_19

    const-string p1, "Existing Ad Session already exists."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return-void

    :cond_19
    :try_start_19
    new-instance v0, Lcom/hyprmx/android/sdk/om/h;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/om/b;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    invoke-direct {v0, v1, p2}, Lcom/hyprmx/android/sdk/om/h;-><init>(Lcom/iab/omid/library/jungroup/adsession/j;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/om/f;->b(Landroid/view/View;)V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_25} :catch_26

    goto :goto_3c

    :catch_26
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error starting js om ad session - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public final a(Landroid/widget/VideoView;Lcom/hyprmx/android/sdk/model/vast/a;Ljava/lang/String;)Z
    .registers 13

    const-string v0, "adView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vastAd"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    const-string p1, "Existing Ad Session already exists."

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return v1

    :cond_1f
    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->i:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    :goto_2e
    if-eqz v0, :cond_36

    const-string p1, "OM JS does not exist or is empty"

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return v1

    :cond_36
    :try_start_36
    new-instance v0, Lcom/hyprmx/android/sdk/om/j;

    iget-object v4, p0, Lcom/hyprmx/android/sdk/om/b;->a:Lcom/iab/omid/library/jungroup/adsession/j;

    iget-object v5, p0, Lcom/hyprmx/android/sdk/om/b;->i:Ljava/lang/String;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    move-object v3, v0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/hyprmx/android/sdk/om/j;-><init>(Lcom/iab/omid/library/jungroup/adsession/j;Ljava/lang/String;Lcom/hyprmx/android/sdk/model/vast/a;Ljava/lang/String;Lcom/hyprmx/android/sdk/assert/ThreadAssert;)V

    iput-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    invoke-virtual {v0, p1}, Lcom/hyprmx/android/sdk/om/j;->b(Landroid/view/View;)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_4c} :catch_4d

    return v2

    :catch_4d
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error starting native om ad session - "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return v1
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->c:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/assert/ThreadAssert;->runningOnMainThread()V

    :try_start_5
    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->h:Lcom/hyprmx/android/sdk/om/f;

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/om/f;->b()V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_23

    :catch_d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error removing all friendly obstruction with error msg - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/om/b;->f:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
