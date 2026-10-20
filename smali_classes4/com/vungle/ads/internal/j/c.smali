###### Class com.vungle.ads.internal.platform.AndroidPlatform (com.vungle.ads.internal.j.c)
.class public final Lcom/vungle/ads/internal/j/c;
.super Ljava/lang/Object;
.source "AndroidPlatform.kt"

# interfaces
.implements Lcom/vungle/ads/internal/j/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/j/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 %2\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001d\u001a\u00020\u0008H\u0016J\n\u0010\u001e\u001a\u0004\u0018\u00010\nH\u0017J\n\u0010\u001f\u001a\u0004\u0018\u00010\nH\u0016J\u0018\u0010 \u001a\u00020!2\u000e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0#H\u0016J\u0008\u0010$\u001a\u00020!H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\rR\u0014\u0010\u000f\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u000cX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\rR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\n8VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0019\u001a\u00020\u001a8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006&"
    }
    d2 = {
        "Lcom/vungle/ads/internal/platform/AndroidPlatform;",
        "Lcom/vungle/ads/internal/platform/Platform;",
        "context",
        "Landroid/content/Context;",
        "uaExecutor",
        "Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;",
        "(Landroid/content/Context;Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;)V",
        "advertisingInfo",
        "Lcom/vungle/ads/internal/model/AdvertisingInfo;",
        "appSetId",
        "",
        "isAtLeastMinimumSDK",
        "",
        "()Z",
        "isBatterySaverEnabled",
        "isSdCardPresent",
        "isSideLoaded",
        "isSoundEnabled",
        "powerManager",
        "Landroid/os/PowerManager;",
        "userAgent",
        "getUserAgent",
        "()Ljava/lang/String;",
        "setUserAgent",
        "(Ljava/lang/String;)V",
        "volumeLevel",
        "",
        "getVolumeLevel",
        "()F",
        "getAdvertisingInfo",
        "getAndroidId",
        "getAppSetId",
        "getUserAgentLazy",
        "",
        "consumer",
        "Landroidx/core/util/Consumer;",
        "updateAppSetID",
        "Companion",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/j/c$a;

.field private static final TAG:Ljava/lang/String; = "AndroidPlatform"


# instance fields
.field private advertisingInfo:Lcom/vungle/ads/internal/model/a;

.field private appSetId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final isSideLoaded:Z

.field private final powerManager:Landroid/os/PowerManager;

.field private final uaExecutor:Lcom/vungle/ads/internal/executor/d;

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/j/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/j/c$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/j/c;->Companion:Lcom/vungle/ads/internal/j/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/executor/d;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uaExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/j/c;->uaExecutor:Lcom/vungle/ads/internal/executor/d;

    invoke-direct {p0}, Lcom/vungle/ads/internal/j/c;->updateAppSetID()V

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/vungle/ads/internal/j/c;->powerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/internal/j/c;Landroidx/core/util/Consumer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/j/c;->getUserAgentLazy$lambda-0(Lcom/vungle/ads/internal/j/c;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/j/c;Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/j/c;->updateAppSetID$lambda-1(Lcom/vungle/ads/internal/j/c;Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method

.method private static final getUserAgentLazy$lambda-0(Lcom/vungle/ads/internal/j/c;Landroidx/core/util/Consumer;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/j/e;

    iget-object p0, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/vungle/ads/internal/j/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/j/e;->getUserAgent(Landroidx/core/util/Consumer;)V

    return-void
.end method

.method private final updateAppSetID()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v0

    const-string v1, "getClient(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v1, "client.appSetIdInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/vungle/ads/internal/j/b;

    invoke-direct {v1, p0}, Lcom/vungle/ads/internal/j/b;-><init>(Lcom/vungle/ads/internal/j/c;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1c
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_38

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required libs to get AppSetID Not available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoClassDefFoundError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AndroidPlatform"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method private static final updateAppSetID$lambda-1(Lcom/vungle/ads/internal/j/c;Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/j/c;->appSetId:Ljava/lang/String;

    :cond_d
    return-void
.end method


# virtual methods
.method public getAdvertisingInfo()Lcom/vungle/ads/internal/model/a;
    .registers 8

    const-string v0, "Play services Not available: "

    const-string v1, "AndroidPlatform"

    iget-object v2, p0, Lcom/vungle/ads/internal/j/c;->advertisingInfo:Lcom/vungle/ads/internal/model/a;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/a;->getAdvertisingId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_19

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_17

    goto :goto_19

    :cond_17
    const/4 v5, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v5, 0x1

    :goto_1a
    if-nez v5, :cond_1d

    return-object v2

    :cond_1d
    new-instance v2, Lcom/vungle/ads/internal/model/a;

    invoke-direct {v2}, Lcom/vungle/ads/internal/model/a;-><init>()V

    :try_start_22
    const-string v5, "Amazon"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2a} :catch_a6

    const-string v6, "advertising_id"

    if-eqz v5, :cond_4f

    :try_start_2e
    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "limit_ad_tracking"

    invoke-static {v0, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_3d

    const/4 v3, 0x1

    :cond_3d
    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/model/a;->setLimitAdTracking(Z)V

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/model/a;->setAdvertisingId(Ljava/lang/String;)V
    :try_end_47
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2e .. :try_end_47} :catch_48
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_47} :catch_a6

    goto :goto_ab

    :catch_48
    move-exception v0

    :try_start_49
    const-string v3, "Error getting Amazon advertising info"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4e} :catch_a6

    goto :goto_ab

    :cond_4f
    :try_start_4f
    iget-object v3, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    const-string v4, "getAdvertisingIdInfo(context)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vungle/ads/internal/model/a;->setAdvertisingId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vungle/ads/internal/model/a;->setLimitAdTracking(Z)V
    :try_end_68
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4f .. :try_end_68} :catch_81
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_4f .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_68} :catch_a6

    goto :goto_ab

    :catch_69
    move-exception v3

    :try_start_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :catch_81
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/NoClassDefFoundError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vungle/ads/internal/model/a;->setAdvertisingId(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a5} :catch_a6

    goto :goto_ab

    :catch_a6
    const-string v0, "Cannot load Advertising ID"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ab
    iput-object v2, p0, Lcom/vungle/ads/internal/j/c;->advertisingInfo:Lcom/vungle/ads/internal/model/a;

    return-object v2
.end method

.method public getAndroidId()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/privacy/a;->INSTANCE:Lcom/vungle/ads/internal/privacy/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/privacy/a;->getPublishAndroidId()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, ""

    :goto_17
    return-object v0
.end method

.method public getAppSetId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0
.end method

.method public getUserAgentLazy(Landroidx/core/util/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "consumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->uaExecutor:Lcom/vungle/ads/internal/executor/d;

    new-instance v1, Lcom/vungle/ads/internal/j/a;

    invoke-direct {v1, p0, p1}, Lcom/vungle/ads/internal/j/a;-><init>(Lcom/vungle/ads/internal/j/c;Landroidx/core/util/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/executor/d;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getVolumeLevel()F
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1c

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_1d

    :catch_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public isAtLeastMinimumSDK()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isBatterySaverEnabled()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lcom/vungle/ads/internal/j/c;->powerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public isSdCardPresent()Z
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "AndroidPlatform"

    const-string v2, "Acquiring external storage state failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public isSideLoaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/j/c;->isSideLoaded:Z

    return v0
.end method

.method public isSoundEnabled()Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/vungle/ads/internal/j/c;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_19

    if-lez v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :catch_19
    :goto_19
    return v0
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/j/c;->userAgent:Ljava/lang/String;

    return-void
.end method
