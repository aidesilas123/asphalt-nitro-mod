###### Class com.vungle.ads.internal.ConfigManager (com.vungle.ads.internal.g)
.class public final Lcom/vungle/ads/internal/g;
.super Ljava/lang/Object;
.source "ConfigManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000c\u001a\u00020\rJ\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0004J\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u001a\u001a\u00020\rJ\u0006\u0010\u001b\u001a\u00020\u0010J\u0006\u0010\u001c\u001a\u00020\rJ\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0004J\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0004J\u0006\u0010\u001f\u001a\u00020\u0004J\u0010\u0010 \u001a\u0004\u0018\u00010\u000b2\u0006\u0010!\u001a\u00020\u0004J\u0008\u0010\"\u001a\u0004\u0018\u00010\u0004J\u0006\u0010#\u001a\u00020\u0010J\u0006\u0010$\u001a\u00020\rJ\u000e\u0010%\u001a\u00020&2\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\'\u001a\u00020\rJ\u0006\u0010(\u001a\u00020\rJ\u0006\u0010)\u001a\u00020\rJ\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nJ\u0006\u0010*\u001a\u00020\rJ\r\u0010+\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008,R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/vungle/ads/internal/ConfigManager;",
        "",
        "()V",
        "TAG",
        "",
        "config",
        "Lcom/vungle/ads/internal/model/ConfigPayload;",
        "endpoints",
        "Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;",
        "placements",
        "",
        "Lcom/vungle/ads/internal/model/Placement;",
        "adLoadOptimizationEnabled",
        "",
        "getAdsEndpoint",
        "getCleverCacheDiskPercentage",
        "",
        "getCleverCacheDiskSize",
        "",
        "getConfigExtension",
        "getErrorLoggingEndpoint",
        "getGDPRButtonAccept",
        "getGDPRButtonDeny",
        "getGDPRConsentMessage",
        "getGDPRConsentMessageVersion",
        "getGDPRConsentTitle",
        "getGDPRIsCountryDataProtected",
        "getLogLevel",
        "getMetricsEnabled",
        "getMetricsEndpoint",
        "getMraidEndpoint",
        "getMraidJsVersion",
        "getPlacement",
        "id",
        "getRiEndpoint",
        "getSessionTimeoutInSecond",
        "heartbeatEnabled",
        "initWithConfig",
        "",
        "isCleverCacheEnabled",
        "isReportIncentivizedEnabled",
        "omEnabled",
        "shouldDisableAdId",
        "validateEndpoints",
        "validateEndpoints$vungle_ads_release",
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
.field public static final INSTANCE:Lcom/vungle/ads/internal/g;

.field public static final TAG:Ljava/lang/String; = "ConfigManager"

.field private static config:Lcom/vungle/ads/internal/model/ConfigPayload;

.field private static endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

.field private static placements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/Placement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/ads/internal/g;

    invoke-direct {v0}, Lcom/vungle/ads/internal/g;-><init>()V

    sput-object v0, Lcom/vungle/ads/internal/g;->INSTANCE:Lcom/vungle/ads/internal/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adLoadOptimizationEnabled()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->isAdDownloadOptEnabled()Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$LoadOptimizationSettings;->getEnabled()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final getAdsEndpoint()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getAdsEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getCleverCacheDiskPercentage()I
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/CleverCache;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/CleverCache;->getDiskPercentage()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x3

    :goto_16
    return v0
.end method

.method public final getCleverCacheDiskSize()J
    .registers 5

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/CleverCache;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/CleverCache;->getDiskSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 v2, 0x400

    int-to-long v2, v2

    mul-long v0, v0, v2

    mul-long v0, v0, v2

    return-wide v0

    :cond_1c
    const-wide/32 v0, 0x3e800000

    return-wide v0
.end method

.method public final getConfigExtension()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigExtension()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const-string v0, ""

    :cond_c
    return-object v0
.end method

.method public final getErrorLoggingEndpoint()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getErrorLogsEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getGDPRButtonAccept()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;->getButtonAccept()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public final getGDPRButtonDeny()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;->getButtonDeny()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public final getGDPRConsentMessage()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;->getConsentMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public final getGDPRConsentMessageVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;->getConsentMessageVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const-string v0, ""

    :cond_12
    return-object v0
.end method

.method public final getGDPRConsentTitle()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;->getConsentTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public final getGDPRIsCountryDataProtected()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getGdpr()Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$GDPRSettings;->isCountryDataProtected()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final getLogLevel()I
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getLogMetricsSettings()Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;->getErrorLogLevel()I

    move-result v0

    goto :goto_15

    :cond_f
    sget-object v0, Lcom/vungle/ads/AnalyticsClient$LogLevel;->ERROR_LOG_LEVEL_ERROR:Lcom/vungle/ads/AnalyticsClient$LogLevel;

    invoke-virtual {v0}, Lcom/vungle/ads/AnalyticsClient$LogLevel;->getLevel()I

    move-result v0

    :goto_15
    return v0
.end method

.method public final getMetricsEnabled()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getLogMetricsSettings()Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$LogMetricsSettings;->getMetricsEnabled()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final getMetricsEndpoint()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getMetricsEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getMraidEndpoint()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getMraidEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getMraidJsVersion()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/vungle/ads/internal/g;->getMraidEndpoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    :cond_21
    const-string v0, "mraid_1"

    :cond_23
    return-object v0
.end method

.method public final getPlacement(Ljava/lang/String;)Lcom/vungle/ads/internal/model/Placement;
    .registers 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/g;->placements:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vungle/ads/internal/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v1, v2

    :cond_26
    check-cast v1, Lcom/vungle/ads/internal/model/Placement;

    :cond_28
    return-object v1
.end method

.method public final getRiEndpoint()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getRiEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getSessionTimeoutInSecond()I
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getSession()Lcom/vungle/ads/internal/model/ConfigPayload$Session;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Session;->getTimeout()I

    move-result v0

    goto :goto_11

    :cond_f
    const/16 v0, 0x384

    :goto_11
    return v0
.end method

.method public final heartbeatEnabled()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getTemplate()Lcom/vungle/ads/internal/model/ConfigPayload$Template;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Template;->getHeartbeatEnabled()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final initWithConfig(Lcom/vungle/ads/internal/model/ConfigPayload;)V
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    move-result-object v0

    sput-object v0, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/ConfigPayload;->getPlacements()Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/vungle/ads/internal/g;->placements:Ljava/util/List;

    return-void
.end method

.method public final isCleverCacheEnabled()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getCleverCache()Lcom/vungle/ads/internal/model/CleverCache;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/CleverCache;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public final isReportIncentivizedEnabled()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->isReportIncentivizedEnabled()Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$ReportIncentivizedSettings;->getEnabled()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final omEnabled()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getViewability()Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$ViewabilitySettings;->getOm()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public final placements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/ads/internal/model/Placement;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/internal/g;->placements:Ljava/util/List;

    return-object v0
.end method

.method public final shouldDisableAdId()Z
    .registers 2

    sget-object v0, Lcom/vungle/ads/internal/g;->config:Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload;->getDisableAdId()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public final validateEndpoints$vungle_ads_release()Z
    .registers 14

    sget-object v0, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getAdsEndpoint()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    if-eqz v0, :cond_2c

    sget-object v4, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v5, 0x7a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const-string v6, "The ads endpoint was not provided in the config."

    invoke-static/range {v4 .. v11}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    sget-object v4, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getRiEndpoint()Ljava/lang/String;

    move-result-object v4

    goto :goto_37

    :cond_36
    move-object v4, v1

    :goto_37
    if-eqz v4, :cond_42

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_40

    goto :goto_42

    :cond_40
    const/4 v4, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v4, 0x1

    :goto_43
    if-eqz v4, :cond_54

    sget-object v5, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v6, 0x7b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const-string v7, "The ri endpoint was not provided in the config."

    invoke-static/range {v5 .. v12}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_54
    sget-object v4, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getMraidEndpoint()Ljava/lang/String;

    move-result-object v4

    goto :goto_5e

    :cond_5d
    move-object v4, v1

    :goto_5e
    if-eqz v4, :cond_69

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_67

    goto :goto_69

    :cond_67
    const/4 v4, 0x0

    goto :goto_6a

    :cond_69
    :goto_69
    const/4 v4, 0x1

    :goto_6a
    if-eqz v4, :cond_7c

    sget-object v5, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v6, 0x82

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const-string v7, "The mraid endpoint was not provided in the config."

    invoke-static/range {v5 .. v12}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :cond_7c
    sget-object v4, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v4, :cond_85

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getMetricsEndpoint()Ljava/lang/String;

    move-result-object v4

    goto :goto_86

    :cond_85
    move-object v4, v1

    :goto_86
    if-eqz v4, :cond_91

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_8f

    goto :goto_91

    :cond_8f
    const/4 v4, 0x0

    goto :goto_92

    :cond_91
    :goto_91
    const/4 v4, 0x1

    :goto_92
    if-eqz v4, :cond_a3

    sget-object v5, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    const/16 v6, 0x7d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1c

    const/4 v12, 0x0

    const-string v7, "The metrics endpoint was not provided in the config."

    invoke-static/range {v5 .. v12}, Lcom/vungle/ads/AnalyticsClient;->logError$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_a3
    sget-object v4, Lcom/vungle/ads/internal/g;->endpoints:Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    if-eqz v4, :cond_ab

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;->getErrorLogsEndpoint()Ljava/lang/String;

    move-result-object v1

    :cond_ab
    if-eqz v1, :cond_b5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b4

    goto :goto_b5

    :cond_b4
    const/4 v2, 0x0

    :cond_b5
    :goto_b5
    if-eqz v2, :cond_be

    const-string v1, "ConfigManager"

    const-string v2, "The error logging endpoint was not provided in the config."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    return v0
.end method
