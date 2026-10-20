###### Class com.hyprmx.android.sdk.analytics.k (com.hyprmx.android.sdk.analytics.k)
.class public final Lcom/hyprmx/android/sdk/analytics/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/analytics/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/hyprmx/android/sdk/core/js/a;

.field public final c:Lcom/hyprmx/android/sdk/model/a;

.field public final d:Lcom/hyprmx/android/sdk/powersavemode/a;

.field public final e:Lcom/hyprmx/android/sdk/utility/q;

.field public final f:Lcom/hyprmx/android/sdk/utility/o;

.field public volatile g:Ljava/lang/String;

.field public volatile h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/powersavemode/a;Lcom/hyprmx/android/sdk/utility/q;Lcom/hyprmx/android/sdk/utility/o;Lkotlinx/coroutines/s;)V
    .registers 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadedVastCache"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerSaveModeListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionInfo"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gaidController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/analytics/k;->b:Lcom/hyprmx/android/sdk/core/js/a;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/analytics/k;->c:Lcom/hyprmx/android/sdk/model/a;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/analytics/k;->d:Lcom/hyprmx/android/sdk/powersavemode/a;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/analytics/k;->e:Lcom/hyprmx/android/sdk/utility/q;

    iput-object p6, p0, Lcom/hyprmx/android/sdk/analytics/k;->f:Lcom/hyprmx/android/sdk/utility/o;

    const-string p1, "HYPRRequestParamListener"

    invoke-interface {p2, p1, p0}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/powersavemode/a;Lcom/hyprmx/android/sdk/utility/q;Lkotlinx/coroutines/s;)V
    .registers 15

    sget-object v6, Lcom/hyprmx/android/sdk/utility/n;->a:Lcom/hyprmx/android/sdk/utility/n;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/analytics/k;-><init>(Landroid/content/Context;Lcom/hyprmx/android/sdk/core/js/a;Lcom/hyprmx/android/sdk/model/a;Lcom/hyprmx/android/sdk/powersavemode/a;Lcom/hyprmx/android/sdk/utility/q;Lcom/hyprmx/android/sdk/utility/o;Lkotlinx/coroutines/s;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/hyprmx/android/sdk/analytics/k$a;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/hyprmx/android/sdk/analytics/k$a;

    iget v1, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->g:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/hyprmx/android/sdk/analytics/k$a;

    invoke-direct {v0, p0, p1}, Lcom/hyprmx/android/sdk/analytics/k$a;-><init>(Lcom/hyprmx/android/sdk/analytics/k;Lkotlin/coroutines/d;)V

    :goto_18
    iget-object p1, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_41

    if-eq v2, v4, :cond_35

    if-ne v2, v3, :cond_2d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9e

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object v2, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->d:Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->b:Lcom/hyprmx/android/sdk/core/js/a;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->a:Lcom/hyprmx/android/sdk/analytics/k;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    :cond_41
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/hyprmx/android/sdk/analytics/k;->b:Lcom/hyprmx/android/sdk/core/js/a;

    const-string p1, "HYPRRequestParameterManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new RequestParameterManager("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hyprmx/android/sdk/analytics/k;->c:Lcom/hyprmx/android/sdk/model/a;

    iput-object p0, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->a:Lcom/hyprmx/android/sdk/analytics/k;

    iput-object v5, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->b:Lcom/hyprmx/android/sdk/core/js/a;

    iput-object p1, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->d:Ljava/lang/StringBuilder;

    iput v4, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->g:I

    invoke-interface {v6, v0}, Lcom/hyprmx/android/sdk/model/a;->a(Lcom/hyprmx/android/sdk/analytics/k$a;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_65

    return-object v1

    :cond_65
    move-object v6, p0

    move-object v7, v4

    move-object v4, p1

    move-object p1, v7

    :goto_69
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v4, p1}, Lcom/hyprmx/android/sdk/core/js/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v6, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->a:Lcom/hyprmx/android/sdk/analytics/k;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->b:Lcom/hyprmx/android/sdk/core/js/a;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->c:Ljava/lang/String;

    iput-object v2, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->d:Ljava/lang/StringBuilder;

    iput v3, v0, Lcom/hyprmx/android/sdk/analytics/k$a;->g:I

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/t0;

    move-result-object v3

    new-instance v4, Lcom/hyprmx/android/sdk/analytics/j;

    invoke-direct {v4, v6, p1, v2}, Lcom/hyprmx/android/sdk/analytics/j;-><init>(Lcom/hyprmx/android/sdk/analytics/k;Landroid/content/Context;Lkotlin/coroutines/d;)V

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_99

    goto :goto_9b

    :cond_99
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_9b
    if-ne p1, v1, :cond_9e

    return-object v1

    :cond_9e
    :goto_9e
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public bridge synthetic getATSSettings()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->a(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getAdIdOptedOut()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->h:Z

    return v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, ""

    :cond_10
    return-object v0
.end method

.method public final getBundleID()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.packageName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getBundleVersion()Ljava/lang/String;
    .registers 5

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1d

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_2e

    :cond_1d
    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_2e
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "{\n      if (Build.VERSIO\u2026versionName\n      }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_38

    :catch_36
    const-string v0, "Unknown"

    :goto_38
    return-object v0
.end method

.method public final getCarriers()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_60

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_46

    const-string v3, "networkOperator"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v4

    move-object v4, v3

    goto :goto_47

    :cond_46
    move-object v0, v4

    :goto_47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "carrier_name"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mobile_country_code"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mobile_network_code"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "0"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_60
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carriers.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getClearTextPermitted()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final getConnectionType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->e:Lcom/hyprmx/android/sdk/utility/q;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/utility/q;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDevice()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->b(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceBrand()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->c(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceFingerPrint()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->d(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceHeight()I
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_47

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    const-string v1, "windowManager.currentWindowMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    const-string v2, "windowMetrics.windowInse\u2026Insets.Type.systemBars())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    iget v2, v1, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, v1, Landroid/graphics/Insets;->top:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_55

    :cond_47
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_55
    return v0
.end method

.method public bridge synthetic getDeviceManufacturer()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->e(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceModel()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->f(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceProduct()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->g(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeviceType()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->h(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceWidth()I
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3e

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    const-string v1, "windowManager.currentWindowMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    const-string v2, "windowMetrics.windowInse\u2026Insets.Type.systemBars())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, v1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    goto :goto_4c

    :cond_3e
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_4c
    return v0
.end method

.method public bridge synthetic getDistributorID()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->i(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGAID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getIOSAppOnMac()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->j(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIdentifierForVendor()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->k(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getIsAgeRestrictedUser()Z
    .registers 2

    sget-object v0, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-boolean v0, v0, Lcom/hyprmx/android/sdk/core/q;->f:Z

    return v0
.end method

.method public final getIsLowPowerEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->d:Lcom/hyprmx/android/sdk/powersavemode/a;

    invoke-interface {v0}, Lcom/hyprmx/android/sdk/powersavemode/a;->S()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getMSDKV()I
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->l(Lcom/hyprmx/android/sdk/analytics/f;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMacCatalyst()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->m(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getMaxFrameSize()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/hyprmx/android/sdk/utility/w;->b(ILandroid/content/Context;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    float-to-int v0, v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "width"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "obj.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMediationParams()Ljava/lang/String;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v2, v1, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iget-object v3, v2, Lcom/hyprmx/android/sdk/core/u;->b:Ljava/lang/String;

    if-nez v3, :cond_15

    iget-object v3, v2, Lcom/hyprmx/android/sdk/core/u;->c:Ljava/lang/String;

    if-nez v3, :cond_15

    iget-object v2, v2, Lcom/hyprmx/android/sdk/core/u;->d:Ljava/lang/String;

    if-eqz v2, :cond_40

    :cond_15
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, v1, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iget-object v3, v3, Lcom/hyprmx/android/sdk/core/u;->b:Ljava/lang/String;

    if-eqz v3, :cond_25

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_25
    iget-object v3, v1, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iget-object v3, v3, Lcom/hyprmx/android/sdk/core/u;->c:Ljava/lang/String;

    if-eqz v3, :cond_30

    const-string v4, "sdk_version"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_3b

    const-string v3, "adapter_version"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b
    const-string v1, "mediator"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getMraidSupportsString()Ljava/lang/String;
    .registers 2

    const-string v0, "{\"sms\":true,\"storePicture\":true,\"inlineVideo\":true,\"calendar\":true,\"tel\":true}"

    return-object v0
.end method

.method public bridge synthetic getOSVersion()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->n(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPermissions()Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_31

    const-string v3, "info.requestedPermissions"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    array-length v4, v1

    :goto_27
    if-ge v3, v4, :cond_31

    aget-object v5, v1, v3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_31
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_3f

    :catch_35
    const-string v0, "Unable to get list of permissions from Android Manifest"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_3f
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "try {\n      JSONArray(ge\u2026NArray()\n    }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPersistentID()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPlatform()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->o(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrivacyTrackingStatus()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->p(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getPxRatio()F
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public bridge synthetic getSDKVersion()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->q(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSKAdNetworkItems()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->r(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getScreenSize()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/hyprmx/android/sdk/analytics/k;->getMaxFrameSize()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getScreenTraits()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->s(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSupportedInterfaceSettings()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->t(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSupportsMultipleScenes()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->u(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSupportsMultipleWindow()Z
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->v(Lcom/hyprmx/android/sdk/analytics/f;)Z

    move-result v0

    return v0
.end method

.method public final getTargetSDKVersion()F
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    int-to-float v0, v0

    return v0
.end method

.method public bridge synthetic getUID()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->w(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUnityParams()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lcom/hyprmx/android/sdk/core/t;->a:Lcom/hyprmx/android/sdk/core/q;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/q;->d:Lcom/hyprmx/android/sdk/core/u;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/core/u;->a:Ljava/lang/String;

    if-eqz v1, :cond_12

    const-string v2, "unity_version"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsonObject.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserPermissions()Ljava/lang/String;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x3

    :try_start_6
    invoke-static {v1}, Lcom/hyprmx/android/sdk/analytics/h;->b(I)[I

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_c
    if-ge v2, v3, :cond_32

    aget v4, v1, v2

    iget-object v5, p0, Lcom/hyprmx/android/sdk/analytics/k;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/hyprmx/android/sdk/analytics/i;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1e

    const/4 v5, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x2

    :goto_1f
    invoke-static {v4}, Lcom/hyprmx/android/sdk/analytics/i;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Lcom/hyprmx/android/sdk/analytics/g;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_2a} :catch_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catch_2d
    const-string v1, "Unable to get list of permissions from Android Manifest"

    invoke-static {v1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userPermissions.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getXcodeVersion()Ljava/lang/Void;
    .registers 2

    invoke-static {p0}, Lcom/hyprmx/android/sdk/analytics/m;->x(Lcom/hyprmx/android/sdk/analytics/f;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
