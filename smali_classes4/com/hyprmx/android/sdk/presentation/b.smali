###### Class com.hyprmx.android.sdk.presentation.b (com.hyprmx.android.sdk.presentation.b)
.class public final Lcom/hyprmx/android/sdk/presentation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/presentation/f;
.implements Lcom/hyprmx/android/sdk/presentation/f$a;
.implements Lcom/hyprmx/android/sdk/presentation/a;
.implements Lkotlinx/coroutines/s;


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/core/b;

.field public final b:Lcom/hyprmx/android/sdk/analytics/b;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/hyprmx/android/sdk/core/js/a;

.field public final e:Lcom/hyprmx/android/sdk/presentation/g;

.field public final f:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

.field public final synthetic g:Lkotlinx/coroutines/s;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/core/b;Ljava/lang/String;Lcom/hyprmx/android/sdk/analytics/b;Landroid/content/Context;Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/presentation/g;Lcom/hyprmx/android/sdk/powersavemode/a;Lcom/hyprmx/android/sdk/assert/ThreadAssert;Lkotlinx/coroutines/s;)V
    .registers 11

    const-string v0, "applicationModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "clientErrorController"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "jsEngine"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "presentationDelegator"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "powerSaveModeListener"

    invoke-static {p7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "assert"

    invoke-static {p8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scope"

    invoke-static {p9, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/presentation/b;->a:Lcom/hyprmx/android/sdk/core/b;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/presentation/b;->b:Lcom/hyprmx/android/sdk/analytics/b;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/presentation/b;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/presentation/b;->d:Lcom/hyprmx/android/sdk/core/js/a;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/presentation/b;->e:Lcom/hyprmx/android/sdk/presentation/g;

    iput-object p8, p0, Lcom/hyprmx/android/sdk/presentation/b;->f:Lcom/hyprmx/android/sdk/assert/ThreadAssert;

    new-instance p1, Lkotlinx/coroutines/CoroutineName;

    const-string p2, "DefaultPresentationController"

    invoke-direct {p1, p2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    invoke-static {p9, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->plus(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object p1

    iput-object p1, p0, Lcom/hyprmx/android/sdk/presentation/b;->g:Lkotlinx/coroutines/s;

    const-string p1, "HYPRPresentationListener"

    invoke-interface {p5, p1, p0}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/v;
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b;->d:Lcom/hyprmx/android/sdk/core/js/a;

    const-string v1, "HYPRPresentationController.requiredInfoPresentationCancelled();"

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final a(Lcom/hyprmx/android/sdk/placement/c;)Lkotlin/v;
    .registers 5

    iget-object p1, p1, Lcom/hyprmx/android/sdk/placement/c;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b;->d:Lcom/hyprmx/android/sdk/core/js/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HYPRPresentationController.showFullscreenAd(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\');"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lkotlin/v;
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b;->d:Lcom/hyprmx/android/sdk/core/js/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HYPRPresentationController.requiredInfoPresentationCompletedWithParams("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final a(Z)Lkotlin/v;
    .registers 5

    const/4 v0, 0x0

    sput-object v0, Lcom/hyprmx/android/sdk/activity/a;->a:Lcom/hyprmx/android/sdk/activity/b;

    sput-object v0, Lcom/hyprmx/android/sdk/activity/a;->b:Lcom/hyprmx/android/sdk/activity/g0;

    sput-object v0, Lcom/hyprmx/android/sdk/activity/a;->c:Lcom/hyprmx/android/sdk/activity/f0;

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b;->d:Lcom/hyprmx/android/sdk/core/js/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HYPRPresentationController.adDismissed("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public adCanceled(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/presentation/b$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/hyprmx/android/sdk/presentation/b$a;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public adDisplayError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/presentation/b$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/hyprmx/android/sdk/presentation/b$b;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public adFinished(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/presentation/b$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/hyprmx/android/sdk/presentation/b$c;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public adRewarded(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/hyprmx/android/sdk/presentation/b$d;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/hyprmx/android/sdk/presentation/b$d;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public adStarted(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "placementName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/presentation/b$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/hyprmx/android/sdk/presentation/b$e;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b()Lkotlin/v;
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b;->d:Lcom/hyprmx/android/sdk/core/js/a;

    const-string v1, "HYPRPresentationController.adRewarded();"

    invoke-interface {v0, v1}, Lcom/hyprmx/android/sdk/core/js/a;->c(Ljava/lang/String;)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/presentation/b;->g:Lkotlinx/coroutines/s;

    invoke-interface {v0}, Lkotlinx/coroutines/s;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final onDisplayAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    const-string v2, "type"

    const-string v3, "id"

    const-string v4, "Exception was thrown parsing Ad: "

    const-string v5, "viewModelId"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "viewType"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "offerJson"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v7, Lcom/hyprmx/android/sdk/presentation/b;->b:Lcom/hyprmx/android/sdk/analytics/b;

    const-string v6, "jsonString"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "clientErrorController"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2b
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "title"

    invoke-static {v0, v10}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    const-string v0, "description"

    invoke-static {v0, v10}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "catalog_frame_url"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;->INSTANCE:Lcom/hyprmx/android/sdk/utility/HyprMXProperties;

    invoke-virtual {v13}, Lcom/hyprmx/android/sdk/utility/HyprMXProperties;->getBaseUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/embedded_offers/player"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v0, v11, v5}, Lcom/hyprmx/android/sdk/utility/w0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/analytics/b;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "reward_token"

    invoke-static {v0, v10}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    const-string v0, "show_close_button"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v0, "offer_initiation_timeout_in_seconds"

    const/16 v11, 0x8

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v0, "allowed_orientation"

    const-string v11, ""

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "json.optString(FIELD_ALLOWED_ORIENTATION, \"\")"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "key"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v11, Lcom/hyprmx/android/sdk/api/data/m;->a:Lcom/hyprmx/android/sdk/api/data/m;

    const-string v6, "portrait"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    move-object v6, v11

    goto :goto_9d

    :cond_8f
    sget-object v6, Lcom/hyprmx/android/sdk/api/data/m;->b:Lcom/hyprmx/android/sdk/api/data/m;

    const-string v11, "landscape"

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    goto :goto_9d

    :cond_9a
    sget-object v0, Lcom/hyprmx/android/sdk/api/data/m;->c:Lcom/hyprmx/android/sdk/api/data/m;

    move-object v6, v0

    :goto_9d
    const-string v0, "webview_timeout"

    const/16 v11, 0x4b0

    invoke-virtual {v10, v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    const-string v0, "cancellation_dialog"

    invoke-static {v0, v10}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_b3

    goto :goto_b5

    :cond_b3
    const/4 v11, 0x0

    goto :goto_b6

    :cond_b5
    :goto_b5
    const/4 v11, 0x1

    :goto_b6
    if-eqz v11, :cond_c2

    new-instance v0, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v11, "String is null or empty"

    invoke-direct {v0, v11, v9, v8}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_bf
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_bf} :catch_198
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_bf} :catch_17e

    move/from16 p3, v13

    goto :goto_104

    :cond_c2
    :try_start_c2
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "message"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "exit"

    invoke-virtual {v11, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "continue"

    invoke-virtual {v11, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lcom/hyprmx/android/sdk/utility/m0$b;
    :try_end_db
    .catch Lorg/json/JSONException; {:try_start_c2 .. :try_end_db} :catch_f8
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_db} :catch_198

    move/from16 p3, v13

    :try_start_dd
    new-instance v13, Lcom/hyprmx/android/sdk/api/data/g;

    const-string v1, "messageText"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "exitText"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "continueText"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v13, v0, v8, v9}, Lcom/hyprmx/android/sdk/api/data/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v11, v13}, Lcom/hyprmx/android/sdk/utility/m0$b;-><init>(Ljava/lang/Object;)V
    :try_end_f4
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_f4} :catch_f6
    .catch Ljava/lang/RuntimeException; {:try_start_dd .. :try_end_f4} :catch_198

    move-object v0, v11

    goto :goto_104

    :catch_f6
    move-exception v0

    goto :goto_fb

    :catch_f8
    move-exception v0

    move/from16 p3, v13

    :goto_fb
    :try_start_fb
    new-instance v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v8, "Exception parsing cancellation dialog"

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9, v0}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    move-object v0, v1

    :goto_104
    nop

    instance-of v1, v0, Lcom/hyprmx/android/sdk/utility/m0$b;

    if-eqz v1, :cond_10f

    check-cast v0, Lcom/hyprmx/android/sdk/utility/m0$b;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/m0$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hyprmx/android/sdk/api/data/g;

    :cond_10f
    const-string v0, "user_agent"

    invoke-static {v0, v10}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v16

    new-instance v0, Lcom/hyprmx/android/sdk/api/data/i;

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    move/from16 v1, p3

    move-object v13, v15

    move-object v2, v15

    move-object v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/hyprmx/android/sdk/api/data/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/api/data/m;Ljava/lang/String;)V

    const-string v3, "web_traffic"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15d

    const-string v1, "skip_proscenium"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v1, "skip_thank_you_screen"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v1, "web_traffic_header"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/hyprmx/android/sdk/header/a$a;->a(Lorg/json/JSONObject;)Lcom/hyprmx/android/sdk/header/a;

    move-result-object v1

    sget-object v2, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    const-string v2, "footer"

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/hyprmx/android/sdk/footer/a$a;->a(Lorg/json/JSONObject;)Lcom/hyprmx/android/sdk/footer/a;

    move-result-object v2

    iget-boolean v3, v2, Lcom/hyprmx/android/sdk/footer/a;->f:Z

    if-eqz v3, :cond_156

    iget-object v3, v1, Lcom/hyprmx/android/sdk/header/a;->a:Ljava/lang/String;

    iput-object v3, v2, Lcom/hyprmx/android/sdk/footer/a;->b:Ljava/lang/String;

    :cond_156
    new-instance v3, Lcom/hyprmx/android/sdk/api/data/u;

    invoke-direct {v3, v0, v1, v2}, Lcom/hyprmx/android/sdk/api/data/u;-><init>(Lcom/hyprmx/android/sdk/api/data/i;Lcom/hyprmx/android/sdk/header/a;Lcom/hyprmx/android/sdk/footer/a;)V

    move-object v0, v3

    goto :goto_178

    :cond_15d
    const-string v3, "mraid"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_178

    const-string v2, "preload_player_url"

    const-string v3, "about:blank"

    invoke-static {v10, v2, v3, v5}, Lcom/hyprmx/android/sdk/utility/w0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/analytics/b;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preloaded_mraid_page_ready_timeout"

    invoke-virtual {v10, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    new-instance v1, Lcom/hyprmx/android/sdk/api/data/j;

    invoke-direct {v1, v0, v2}, Lcom/hyprmx/android/sdk/api/data/j;-><init>(Lcom/hyprmx/android/sdk/api/data/i;Ljava/lang/String;)V

    move-object v0, v1

    :cond_178
    :goto_178
    new-instance v1, Lcom/hyprmx/android/sdk/utility/m0$b;

    invoke-direct {v1, v0}, Lcom/hyprmx/android/sdk/utility/m0$b;-><init>(Ljava/lang/Object;)V
    :try_end_17d
    .catch Ljava/lang/RuntimeException; {:try_start_fb .. :try_end_17d} :catch_198
    .catch Lorg/json/JSONException; {:try_start_fb .. :try_end_17d} :catch_17e

    goto :goto_1b1

    :catch_17e
    move-exception v0

    invoke-static {v4, v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/hyprmx/android/sdk/utility/s;->f:Lcom/hyprmx/android/sdk/utility/s;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-interface {v5, v1, v2, v3}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    new-instance v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v2, "JSON Exception thrown while parsing ad"

    const/4 v6, 0x0

    invoke-direct {v1, v2, v6, v0}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_1b1

    :catch_198
    move-exception v0

    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/hyprmx/android/sdk/utility/s;->f:Lcom/hyprmx/android/sdk/utility/s;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v5, v1, v2, v3}, Lcom/hyprmx/android/sdk/analytics/b;->a(Lcom/hyprmx/android/sdk/utility/s;Ljava/lang/String;I)V

    new-instance v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v2, "Runtime exception thrown while parsing ad"

    invoke-direct {v1, v2, v6, v0}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    :goto_1b1
    instance-of v0, v1, Lcom/hyprmx/android/sdk/utility/m0$b;

    if-eqz v0, :cond_1f4

    new-instance v0, Landroid/content/Intent;

    iget-object v2, v7, Lcom/hyprmx/android/sdk/presentation/b;->c:Landroid/content/Context;

    const-class v3, Lcom/hyprmx/android/sdk/activity/HyprMXOfferViewerActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, v7, Lcom/hyprmx/android/sdk/presentation/b;->d:Lcom/hyprmx/android/sdk/core/js/a;

    const-string v3, "jsEngine"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "viewModelIdentifier"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/hyprmx/android/sdk/presentation/e;

    const/4 v3, 0x0

    invoke-direct {v5, v2, v4, v3}, Lcom/hyprmx/android/sdk/presentation/e;-><init>(Lcom/hyprmx/android/sdk/core/js/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/hyprmx/android/sdk/presentation/b;->a:Lcom/hyprmx/android/sdk/core/b;

    check-cast v1, Lcom/hyprmx/android/sdk/utility/m0$b;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/utility/m0$b;->a:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/hyprmx/android/sdk/api/data/a;

    new-instance v6, Lcom/hyprmx/android/sdk/fullscreen/d;

    invoke-direct {v6, v5}, Lcom/hyprmx/android/sdk/fullscreen/d;-><init>(Lcom/hyprmx/android/sdk/presentation/e;)V

    move-object v1, v2

    move-object/from16 v4, p0

    invoke-interface/range {v1 .. v6}, Lcom/hyprmx/android/sdk/core/b;->a(Lcom/hyprmx/android/sdk/core/b;Lcom/hyprmx/android/sdk/api/data/a;Lcom/hyprmx/android/sdk/presentation/a;Lcom/hyprmx/android/sdk/presentation/e;Lcom/hyprmx/android/sdk/fullscreen/d;)Lcom/hyprmx/android/sdk/activity/b;

    move-result-object v1

    sput-object v1, Lcom/hyprmx/android/sdk/activity/a;->a:Lcom/hyprmx/android/sdk/activity/b;

    iget-object v1, v7, Lcom/hyprmx/android/sdk/presentation/b;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_207

    :cond_1f4
    instance-of v0, v1, Lcom/hyprmx/android/sdk/utility/m0$a;

    if-eqz v0, :cond_207

    new-instance v4, Lcom/hyprmx/android/sdk/presentation/c;

    const/4 v1, 0x0

    invoke-direct {v4, v7, v1}, Lcom/hyprmx/android/sdk/presentation/c;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_207
    :goto_207
    return-void
.end method

.method public showNoAd(Ljava/lang/String;)V
    .registers 9
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "uiComponentsString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/presentation/b$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/hyprmx/android/sdk/presentation/b$f;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public showRequiredInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation runtime Lcom/hyprmx/android/sdk/annotation/RetainMethodSignature;
    .end annotation

    const-string v0, "requiredInfoString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiComponentsString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/hyprmx/android/sdk/presentation/b$g;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/hyprmx/android/sdk/presentation/b$g;-><init>(Lcom/hyprmx/android/sdk/presentation/b;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
