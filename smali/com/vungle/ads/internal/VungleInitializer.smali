###### Class com.vungle.ads.internal.VungleInitializer (com.vungle.ads.internal.VungleInitializer)
.class public final Lcom/vungle/ads/internal/VungleInitializer;
.super Ljava/lang/Object;
.source "VungleInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/VungleInitializer$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0000\u0018\u0000 +2\u00020\u0001:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\r\u0010\u0019\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u001aJ3\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u00140\u001dH\u0002J\u001e\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0018J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020#H\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010&\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u00182\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020\u00142\u0006\u0010\'\u001a\u00020\u0018H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\u0005\u001a\u00020\u00068\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR$\u0010\u000c\u001a\u00020\r8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000e\u0010\u0002\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006,\u00b2\u0006\n\u0010-\u001a\u00020.X\u008a\u0084\u0002\u00b2\u0006\n\u0010/\u001a\u000200X\u008a\u0084\u0002\u00b2\u0006\n\u00101\u001a\u000202X\u008a\u0084\u0002\u00b2\u0006\n\u00101\u001a\u000202X\u008a\u0084\u0002\u00b2\u0006\n\u0010/\u001a\u000200X\u008a\u0084\u0002\u00b2\u0006\n\u00103\u001a\u000204X\u008a\u0084\u0002\u00b2\u0006\n\u00105\u001a\u000206X\u008a\u0084\u0002\u00b2\u0006\n\u00107\u001a\u000208X\u008a\u0084\u0002\u00b2\u0006\n\u00109\u001a\u00020:X\u008a\u0084\u0002\u00b2\u0006\n\u0010;\u001a\u00020<X\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vungle/ads/internal/VungleInitializer;",
        "",
        "()V",
        "initRequestToResponseMetric",
        "Lcom/vungle/ads/TimeIntervalMetric;",
        "isInitialized",
        "",
        "isInitialized$vungle_ads_release$annotations",
        "isInitialized$vungle_ads_release",
        "()Z",
        "setInitialized$vungle_ads_release",
        "(Z)V",
        "isInitializing",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isInitializing$vungle_ads_release$annotations",
        "isInitializing$vungle_ads_release",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "setInitializing$vungle_ads_release",
        "(Ljava/util/concurrent/atomic/AtomicBoolean;)V",
        "configure",
        "",
        "context",
        "Landroid/content/Context;",
        "callback",
        "Lcom/vungle/ads/InitializationListener;",
        "deInit",
        "deInit$vungle_ads_release",
        "downloadJs",
        "downloadListener",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "downloaded",
        "init",
        "appId",
        "",
        "initializationCallback",
        "isAppIdInvalid",
        "onInitError",
        "initCallback",
        "exception",
        "Lcom/vungle/ads/VungleError;",
        "onInitSuccess",
        "Companion",
        "vungle-ads_release",
        "platform",
        "Lcom/vungle/ads/internal/platform/Platform;",
        "sdkExecutors",
        "Lcom/vungle/ads/internal/executor/Executors;",
        "vungleApiClient",
        "Lcom/vungle/ads/internal/network/VungleApiClient;",
        "filePreferences",
        "Lcom/vungle/ads/internal/persistence/FilePreferences;",
        "omInjector",
        "Lcom/vungle/ads/internal/omsdk/OMInjector;",
        "jobRunner",
        "Lcom/vungle/ads/internal/task/JobRunner;",
        "pathProvider",
        "Lcom/vungle/ads/internal/util/PathProvider;",
        "downloader",
        "Lcom/vungle/ads/internal/downloader/Downloader;"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/VungleInitializer$a;

.field private static final TAG:Ljava/lang/String; = "VungleInitializer"


# instance fields
.field private initRequestToResponseMetric:Lcom/vungle/ads/d2;

.field private isInitialized:Z

.field private isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/vungle/ads/internal/VungleInitializer$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/VungleInitializer$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lcom/vungle/ads/internal/VungleInitializer;->Companion:Lcom/vungle/ads/internal/VungleInitializer$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/vungle/ads/d2;

    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;->INIT_REQUEST_TO_RESPONSE_DURATION_MS:Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;

    invoke-direct {v0, v1}, Lcom/vungle/ads/d2;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKMetric$SDKMetricType;)V

    iput-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->initRequestToResponseMetric:Lcom/vungle/ads/d2;

    return-void
.end method

.method public static synthetic a(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError$lambda-11(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public static final synthetic access$onInitError(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public static final synthetic access$onInitSuccess(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitSuccess(Lcom/vungle/ads/c1;)V

    return-void
.end method

.method public static synthetic b(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-4(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V

    return-void
.end method

.method public static synthetic c(Lcom/vungle/ads/c1;Lcom/vungle/ads/internal/VungleInitializer;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitSuccess$lambda-12(Lcom/vungle/ads/c1;Lcom/vungle/ads/internal/VungleInitializer;)V

    return-void
.end method

.method private final configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V
    .registers 14

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->a:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$b;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInitializer$b;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_f
    iget-object v4, p0, Lcom/vungle/ads/internal/VungleInitializer;->initRequestToResponseMetric:Lcom/vungle/ads/d2;

    invoke-virtual {v4}, Lcom/vungle/ads/d2;->markStart()V

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-5(Lkotlin/i;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/ads/internal/network/VungleApiClient;->config()Lcom/vungle/ads/internal/network/e;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_24

    invoke-interface {v4}, Lcom/vungle/ads/internal/network/e;->execute()Lcom/vungle/ads/internal/network/g;

    move-result-object v4

    goto :goto_25

    :cond_24
    move-object v4, v5

    :goto_25
    if-nez v4, :cond_34

    new-instance p1, Lcom/vungle/ads/a2;

    invoke-direct {p1}, Lcom/vungle/ads/a2;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_34
    invoke-virtual {v4}, Lcom/vungle/ads/internal/network/g;->isSuccessful()Z

    move-result v6

    if-nez v6, :cond_47

    new-instance p1, Lcom/vungle/ads/x0;

    invoke-direct {p1}, Lcom/vungle/ads/x0;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_47
    iget-object v6, p0, Lcom/vungle/ads/internal/VungleInitializer;->initRequestToResponseMetric:Lcom/vungle/ads/d2;

    invoke-virtual {v6}, Lcom/vungle/ads/d2;->markEnd()V

    invoke-virtual {v4}, Lcom/vungle/ads/internal/network/g;->body()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/ads/internal/model/ConfigPayload;

    if-eqz v4, :cond_59

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/ConfigPayload;->getEndpoints()Lcom/vungle/ads/internal/model/ConfigPayload$Endpoints;

    move-result-object v6

    goto :goto_5a

    :cond_59
    move-object v6, v5

    :goto_5a
    if-nez v6, :cond_69

    new-instance p1, Lcom/vungle/ads/y0;

    invoke-direct {p1}, Lcom/vungle/ads/y0;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_69
    sget-object v6, Lcom/vungle/ads/internal/g;->INSTANCE:Lcom/vungle/ads/internal/g;

    invoke-virtual {v6, v4}, Lcom/vungle/ads/internal/g;->initWithConfig(Lcom/vungle/ads/internal/model/ConfigPayload;)V

    new-instance v7, Lcom/vungle/ads/internal/VungleInitializer$c;

    invoke-direct {v7, p1}, Lcom/vungle/ads/internal/VungleInitializer$c;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v7}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v7

    sget-object v8, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-5(Lkotlin/i;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object v1

    invoke-static {v7}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-6(Lkotlin/i;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v7

    invoke-interface {v7}, Lcom/vungle/ads/internal/executor/a;->getLoggerExecutor()Lcom/vungle/ads/internal/executor/d;

    move-result-object v7

    invoke-virtual {v6}, Lcom/vungle/ads/internal/g;->getLogLevel()I

    move-result v9

    invoke-virtual {v6}, Lcom/vungle/ads/internal/g;->getMetricsEnabled()Z

    move-result v10

    invoke-virtual {v8, v1, v7, v9, v10}, Lcom/vungle/ads/AnalyticsClient;->init$vungle_ads_release(Lcom/vungle/ads/internal/network/VungleApiClient;Lcom/vungle/ads/internal/executor/d;IZ)V

    invoke-virtual {v6}, Lcom/vungle/ads/internal/g;->validateEndpoints$vungle_ads_release()Z

    move-result v1

    if-nez v1, :cond_9f

    new-instance p1, Lcom/vungle/ads/x0;

    invoke-direct {p1}, Lcom/vungle/ads/x0;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_9f
    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$d;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInitializer$d;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-virtual {v4}, Lcom/vungle/ads/internal/model/ConfigPayload;->getConfigExtension()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b7

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7
    :try_end_b2
    .catchall {:try_start_f .. :try_end_b2} :catchall_12d

    if-nez v7, :cond_b5

    goto :goto_b7

    :cond_b5
    const/4 v7, 0x0

    goto :goto_b8

    :cond_b7
    :goto_b7
    const/4 v7, 0x1

    :goto_b8
    const-string v8, "config_extension"

    if-eqz v7, :cond_c8

    :try_start_bc
    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-7(Lkotlin/i;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/vungle/ads/internal/persistence/FilePreferences;->remove(Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->apply()V

    goto :goto_d3

    :cond_c8
    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-7(Lkotlin/i;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1, v8, v4}, Lcom/vungle/ads/internal/persistence/FilePreferences;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/persistence/FilePreferences;->apply()V

    :goto_d3
    invoke-virtual {v6}, Lcom/vungle/ads/internal/g;->omEnabled()Z

    move-result v1

    if-eqz v1, :cond_e9

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$e;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInitializer$e;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-9(Lkotlin/i;)Lcom/vungle/ads/internal/omsdk/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/ads/internal/omsdk/c;->init()V

    :cond_e9
    invoke-virtual {v6}, Lcom/vungle/ads/internal/g;->placements()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f8

    new-instance p1, Lcom/vungle/ads/x0;

    invoke-direct {p1}, Lcom/vungle/ads/x0;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_f8
    sget-object v1, Lcom/vungle/ads/internal/privacy/a;->INSTANCE:Lcom/vungle/ads/internal/privacy/a;

    invoke-virtual {v6}, Lcom/vungle/ads/internal/g;->shouldDisableAdId()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/vungle/ads/internal/privacy/a;->updateDisableAdId(Z)V

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$f;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInitializer$f;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-10(Lkotlin/i;)Lcom/vungle/ads/internal/task/c;

    move-result-object v1

    sget-object v4, Lcom/vungle/ads/internal/task/CleanupJob;->Companion:Lcom/vungle/ads/internal/task/CleanupJob$Companion;

    invoke-static {v4, v5, v3, v5}, Lcom/vungle/ads/internal/task/CleanupJob$Companion;->makeJobInfo$default(Lcom/vungle/ads/internal/task/CleanupJob$Companion;Ljava/lang/String;ILjava/lang/Object;)Lcom/vungle/ads/internal/task/JobInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/vungle/ads/internal/task/c;->execute(Lcom/vungle/ads/internal/task/JobInfo;)V

    invoke-static {v0}, Lcom/vungle/ads/internal/VungleInitializer;->configure$lambda-10(Lkotlin/i;)Lcom/vungle/ads/internal/task/c;

    move-result-object v0

    sget-object v1, Lcom/vungle/ads/internal/task/f;->Companion:Lcom/vungle/ads/internal/task/f$a;

    invoke-virtual {v1}, Lcom/vungle/ads/internal/task/f$a;->makeJobInfo()Lcom/vungle/ads/internal/task/JobInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/ads/internal/task/c;->execute(Lcom/vungle/ads/internal/task/JobInfo;)V

    new-instance v0, Lcom/vungle/ads/internal/VungleInitializer$g;

    invoke-direct {v0, p0, p2}, Lcom/vungle/ads/internal/VungleInitializer$g;-><init>(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V

    invoke-direct {p0, p1, v0}, Lcom/vungle/ads/internal/VungleInitializer;->downloadJs(Landroid/content/Context;Lkotlin/jvm/b/l;)V
    :try_end_12c
    .catchall {:try_start_bc .. :try_end_12c} :catchall_12d

    goto :goto_165

    :catchall_12d
    move-exception p1

    iput-boolean v2, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Z

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VungleInitializer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_13e

    goto :goto_140

    :cond_13e
    instance-of v3, p1, Ljava/lang/SecurityException;

    :goto_140
    if-eqz v3, :cond_14f

    new-instance p1, Lcom/vungle/ads/o1;

    invoke-direct {p1}, Lcom/vungle/ads/o1;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    goto :goto_165

    :cond_14f
    instance-of v0, p1, Lcom/vungle/ads/VungleError;

    if-eqz v0, :cond_159

    check-cast p1, Lcom/vungle/ads/VungleError;

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    goto :goto_165

    :cond_159
    new-instance p1, Lcom/vungle/ads/f2;

    invoke-direct {p1}, Lcom/vungle/ads/f2;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    :goto_165
    return-void
.end method

.method private static final configure$lambda-10(Lkotlin/i;)Lcom/vungle/ads/internal/task/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "+",
            "Lcom/vungle/ads/internal/task/c;",
            ">;)",
            "Lcom/vungle/ads/internal/task/c;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/task/c;

    return-object p0
.end method

.method private static final configure$lambda-5(Lkotlin/i;)Lcom/vungle/ads/internal/network/VungleApiClient;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/network/VungleApiClient;",
            ">;)",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object p0
.end method

.method private static final configure$lambda-6(Lkotlin/i;)Lcom/vungle/ads/internal/executor/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "+",
            "Lcom/vungle/ads/internal/executor/a;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method

.method private static final configure$lambda-7(Lkotlin/i;)Lcom/vungle/ads/internal/persistence/FilePreferences;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/persistence/FilePreferences;",
            ">;)",
            "Lcom/vungle/ads/internal/persistence/FilePreferences;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/persistence/FilePreferences;

    return-object p0
.end method

.method private static final configure$lambda-9(Lkotlin/i;)Lcom/vungle/ads/internal/omsdk/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/omsdk/c;",
            ">;)",
            "Lcom/vungle/ads/internal/omsdk/c;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/omsdk/c;

    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-3(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V

    return-void
.end method

.method private final downloadJs(Landroid/content/Context;Lkotlin/jvm/b/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->a:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$h;

    invoke-direct {v1, p1}, Lcom/vungle/ads/internal/VungleInitializer$h;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    new-instance v2, Lcom/vungle/ads/internal/VungleInitializer$i;

    invoke-direct {v2, p1}, Lcom/vungle/ads/internal/VungleInitializer$i;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    sget-object v0, Lcom/vungle/ads/internal/load/h;->INSTANCE:Lcom/vungle/ads/internal/load/h;

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->downloadJs$lambda-13(Lkotlin/i;)Lcom/vungle/ads/internal/util/g;

    move-result-object v1

    invoke-static {p1}, Lcom/vungle/ads/internal/VungleInitializer;->downloadJs$lambda-14(Lkotlin/i;)Lcom/vungle/ads/internal/downloader/b;

    move-result-object p1

    new-instance v2, Lcom/vungle/ads/internal/VungleInitializer$j;

    invoke-direct {v2, p2}, Lcom/vungle/ads/internal/VungleInitializer$j;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/vungle/ads/internal/load/h;->downloadJs(Lcom/vungle/ads/internal/util/g;Lcom/vungle/ads/internal/downloader/b;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method private static final downloadJs$lambda-13(Lkotlin/i;)Lcom/vungle/ads/internal/util/g;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/util/g;",
            ">;)",
            "Lcom/vungle/ads/internal/util/g;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/util/g;

    return-object p0
.end method

.method private static final downloadJs$lambda-14(Lkotlin/i;)Lcom/vungle/ads/internal/downloader/b;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "+",
            "Lcom/vungle/ads/internal/downloader/b;",
            ">;)",
            "Lcom/vungle/ads/internal/downloader/b;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/downloader/b;

    return-object p0
.end method

.method private static final init$lambda-0(Lkotlin/i;)Lcom/vungle/ads/internal/j/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "+",
            "Lcom/vungle/ads/internal/j/d;",
            ">;)",
            "Lcom/vungle/ads/internal/j/d;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/j/d;

    return-object p0
.end method

.method private static final init$lambda-1(Lkotlin/i;)Lcom/vungle/ads/internal/executor/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "+",
            "Lcom/vungle/ads/internal/executor/a;",
            ">;)",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/executor/a;

    return-object p0
.end method

.method private static final init$lambda-2(Lkotlin/i;)Lcom/vungle/ads/internal/network/VungleApiClient;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/i<",
            "Lcom/vungle/ads/internal/network/VungleApiClient;",
            ">;)",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    invoke-interface {p0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vungle/ads/internal/network/VungleApiClient;

    return-object p0
.end method

.method private static final init$lambda-3(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V
    .registers 6

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$initializationCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$vungleApiClient$delegate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/privacy/a;->INSTANCE:Lcom/vungle/ads/internal/privacy/a;

    invoke-virtual {v0, p0}, Lcom/vungle/ads/internal/privacy/a;->init(Landroid/content/Context;)V

    invoke-static {p4}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-2(Lkotlin/i;)Lcom/vungle/ads/internal/network/VungleApiClient;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/vungle/ads/internal/network/VungleApiClient;->initialize(Ljava/lang/String;)V

    invoke-direct {p2, p0, p3}, Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V

    return-void
.end method

.method private static final init$lambda-4(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$initializationCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/r1;

    invoke-direct {v0}, Lcom/vungle/ads/r1;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method private final isAppIdInvalid(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p1}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static synthetic isInitialized$vungle_ads_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic isInitializing$vungle_ads_release$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V
    .registers 5

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    new-instance v1, Lcom/vungle/ads/internal/b;

    invoke-direct {v1, p1, p2}, Lcom/vungle/ads/internal/b;-><init>(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception code is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vungle/ads/VungleError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2b
    const-string p2, "VungleInitializer"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final onInitError$lambda-11(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V
    .registers 3

    const-string v0, "$initCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/vungle/ads/c1;->onError(Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method private final onInitSuccess(Lcom/vungle/ads/c1;)V
    .registers 4

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/vungle/ads/internal/util/ThreadUtil;->INSTANCE:Lcom/vungle/ads/internal/util/ThreadUtil;

    new-instance v1, Lcom/vungle/ads/internal/d;

    invoke-direct {v1, p1, p0}, Lcom/vungle/ads/internal/d;-><init>(Lcom/vungle/ads/c1;Lcom/vungle/ads/internal/VungleInitializer;)V

    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/util/ThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onInitSuccess$lambda-12(Lcom/vungle/ads/c1;Lcom/vungle/ads/internal/VungleInitializer;)V
    .registers 11

    const-string v0, "$initCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/vungle/ads/c1;->onSuccess()V

    sget-object v1, Lcom/vungle/ads/AnalyticsClient;->INSTANCE:Lcom/vungle/ads/AnalyticsClient;

    iget-object v2, p1, Lcom/vungle/ads/internal/VungleInitializer;->initRequestToResponseMetric:Lcom/vungle/ads/d2;

    sget-object p0, Lcom/vungle/ads/internal/network/VungleApiClient;->Companion:Lcom/vungle/ads/internal/network/VungleApiClient$Companion;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/network/VungleApiClient$Companion;->getBASE_URL$vungle_ads_release()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/vungle/ads/AnalyticsClient;->logMetric$vungle_ads_release$default(Lcom/vungle/ads/AnalyticsClient;Lcom/vungle/ads/k1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final deInit$vungle_ads_release()V
    .registers 3

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/ServiceLocator$Companion;->deInit()V

    sget-object v0, Lcom/vungle/ads/internal/network/VungleApiClient;->Companion:Lcom/vungle/ads/internal/network/VungleApiClient$Companion;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/network/VungleApiClient$Companion;->reset$vungle_ads_release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Z

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/c1;)V
    .registers 13

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer;->isAppIdInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance p1, Lcom/vungle/ads/i1;

    invoke-direct {p1}, Lcom/vungle/ads/i1;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_22
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->a:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$k;

    invoke-direct {v1, p2}, Lcom/vungle/ads/internal/VungleInitializer$k;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-0(Lkotlin/i;)Lcom/vungle/ads/internal/j/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/vungle/ads/internal/j/d;->isAtLeastMinimumSDK()Z

    move-result v1

    const-string v2, "VungleInitializer"

    if-nez v1, :cond_4d

    const-string p1, "SDK is supported only for API versions 21 and above"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/vungle/ads/b2;

    invoke-direct {p1}, Lcom/vungle/ads/b2;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_4d
    invoke-virtual {p0}, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string p1, "init already complete"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/vungle/ads/y1;

    invoke-direct {p1}, Lcom/vungle/ads/y1;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    invoke-direct {p0, p3}, Lcom/vungle/ads/internal/VungleInitializer;->onInitSuccess(Lcom/vungle/ads/c1;)V

    return-void

    :cond_64
    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_7f

    const-string p1, "init ongoing"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/vungle/ads/z1;

    invoke-direct {p1}, Lcom/vungle/ads/z1;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->logError$vungle_ads_release()Lcom/vungle/ads/VungleError;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void

    :cond_7f
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p2, v1}, Landroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_bd

    const-string v1, "android.permission.INTERNET"

    invoke-static {p2, v1}, Landroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_90

    goto :goto_bd

    :cond_90
    new-instance v1, Lcom/vungle/ads/internal/VungleInitializer$l;

    invoke-direct {v1, p2}, Lcom/vungle/ads/internal/VungleInitializer$l;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v1

    new-instance v2, Lcom/vungle/ads/internal/VungleInitializer$m;

    invoke-direct {v2, p2}, Lcom/vungle/ads/internal/VungleInitializer$m;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v8

    invoke-static {v1}, Lcom/vungle/ads/internal/VungleInitializer;->init$lambda-1(Lkotlin/i;)Lcom/vungle/ads/internal/executor/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/a;->getBackgroundExecutor()Lcom/vungle/ads/internal/executor/d;

    move-result-object v0

    new-instance v1, Lcom/vungle/ads/internal/e;

    move-object v3, v1

    move-object v4, p2

    move-object v5, p1

    move-object v6, p0

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/vungle/ads/internal/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V

    new-instance p1, Lcom/vungle/ads/internal/c;

    invoke-direct {p1, p0, p3}, Lcom/vungle/ads/internal/c;-><init>(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V

    invoke-virtual {v0, v1, p1}, Lcom/vungle/ads/internal/executor/d;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_bd
    :goto_bd
    const-string p1, "Network permissions not granted"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/vungle/ads/n1;

    invoke-direct {p1}, Lcom/vungle/ads/n1;-><init>()V

    invoke-direct {p0, p3, p1}, Lcom/vungle/ads/internal/VungleInitializer;->onInitError(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Z

    return v0
.end method

.method public final isInitialized$vungle_ads_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Z

    return v0
.end method

.method public final isInitializing$vungle_ads_release()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final setInitialized$vungle_ads_release(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitialized:Z

    return-void
.end method

.method public final setInitializing$vungle_ads_release(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer;->isInitializing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

###### Class com.vungle.ads.internal.VungleInitializer.a (com.vungle.ads.internal.VungleInitializer$a)
.class public final Lcom/vungle/ads/internal/VungleInitializer$a;
.super Ljava/lang/Object;
.source "VungleInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/VungleInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vungle/ads/internal/VungleInitializer$Companion;",
        "",
        "()V",
        "TAG",
        "",
        "vungle-ads_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lcom/vungle/ads/internal/VungleInitializer$a;-><init>()V

    return-void
.end method

###### Class com.vungle.ads.internal.VungleInitializer.b (com.vungle.ads.internal.VungleInitializer$b)
.class public final Lcom/vungle/ads/internal/VungleInitializer$b;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/network/VungleApiClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$b;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$b;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.c (com.vungle.ads.internal.VungleInitializer$c)
.class public final Lcom/vungle/ads/internal/VungleInitializer$c;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/executor/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$c;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$c;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.d (com.vungle.ads.internal.VungleInitializer$d)
.class public final Lcom/vungle/ads/internal/VungleInitializer$d;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/persistence/FilePreferences;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$d;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/persistence/FilePreferences;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$d;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/persistence/FilePreferences;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.e (com.vungle.ads.internal.VungleInitializer$e)
.class public final Lcom/vungle/ads/internal/VungleInitializer$e;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/omsdk/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$e;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/omsdk/c;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$e;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/omsdk/c;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.f (com.vungle.ads.internal.VungleInitializer$f)
.class public final Lcom/vungle/ads/internal/VungleInitializer$f;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/task/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$f;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/task/c;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$f;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/task/c;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.g (com.vungle.ads.internal.VungleInitializer$g)
.class final Lcom/vungle/ads/internal/VungleInitializer$g;
.super Lkotlin/jvm/internal/t;
.source "VungleInitializer.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->configure(Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Boolean;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/vungle/ads/c1;

.field final synthetic this$0:Lcom/vungle/ads/internal/VungleInitializer;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V
    .registers 3

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    iput-object p2, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->$callback:Lcom/vungle/ads/c1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer$g;->invoke(Z)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 4

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/VungleInitializer;->setInitialized$vungle_ads_release(Z)V

    iget-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->$callback:Lcom/vungle/ads/c1;

    invoke-static {p1, v0}, Lcom/vungle/ads/internal/VungleInitializer;->access$onInitSuccess(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V

    const-string p1, "VungleInitializer"

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_17
    iget-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vungle/ads/internal/VungleInitializer;->setInitialized$vungle_ads_release(Z)V

    iget-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->this$0:Lcom/vungle/ads/internal/VungleInitializer;

    iget-object v0, p0, Lcom/vungle/ads/internal/VungleInitializer$g;->$callback:Lcom/vungle/ads/c1;

    new-instance v1, Lcom/vungle/ads/x0;

    invoke-direct {v1}, Lcom/vungle/ads/x0;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/vungle/ads/internal/VungleInitializer;->access$onInitError(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    :goto_29
    return-void
.end method

###### Class com.vungle.ads.internal.VungleInitializer.h (com.vungle.ads.internal.VungleInitializer$h)
.class public final Lcom/vungle/ads/internal/VungleInitializer$h;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->downloadJs(Landroid/content/Context;Lkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/util/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$h;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/util/g;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$h;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/util/g;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.i (com.vungle.ads.internal.VungleInitializer$i)
.class public final Lcom/vungle/ads/internal/VungleInitializer$i;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->downloadJs(Landroid/content/Context;Lkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/downloader/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$i;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/downloader/b;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$i;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/downloader/b;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.j (com.vungle.ads.internal.VungleInitializer$j)
.class final Lcom/vungle/ads/internal/VungleInitializer$j;
.super Lkotlin/jvm/internal/t;
.source "VungleInitializer.kt"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->downloadJs(Landroid/content/Context;Lkotlin/jvm/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/l<",
        "Ljava/lang/Integer;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $downloadListener:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/b/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$j;->$downloadListener:Lkotlin/jvm/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/VungleInitializer$j;->invoke(I)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(I)V
    .registers 3

    const/16 v0, 0xb

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$j;->$downloadListener:Lkotlin/jvm/b/l;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_c
    iget-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$j;->$downloadListener:Lkotlin/jvm/b/l;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    return-void
.end method

###### Class com.vungle.ads.internal.VungleInitializer.k (com.vungle.ads.internal.VungleInitializer$k)
.class public final Lcom/vungle/ads/internal/VungleInitializer$k;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/j/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$k;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/j/d;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$k;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/j/d;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.l (com.vungle.ads.internal.VungleInitializer$l)
.class public final Lcom/vungle/ads/internal/VungleInitializer$l;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/executor/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$l;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/executor/a;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$l;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/executor/a;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.VungleInitializer.m (com.vungle.ads.internal.VungleInitializer$m)
.class public final Lcom/vungle/ads/internal/VungleInitializer$m;
.super Lkotlin/jvm/internal/t;
.source "ServiceLocator.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/VungleInitializer;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/ads/c1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lcom/vungle/ads/internal/network/VungleApiClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "invoke",
        "()Ljava/lang/Object;",
        "com/vungle/ads/ServiceLocator$Companion$inject$1"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/vungle/ads/internal/VungleInitializer$m;->$context:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/ads/internal/network/VungleApiClient;"
        }
    .end annotation

    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    iget-object v1, p0, Lcom/vungle/ads/internal/VungleInitializer$m;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;

    move-result-object v0

    const-class v1, Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild$vungle_ads_release(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.ads.internal.b (com.vungle.ads.internal.b)
.class public final synthetic Lcom/vungle/ads/internal/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/c1;

.field public final synthetic b:Lcom/vungle/ads/VungleError;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/b;->a:Lcom/vungle/ads/c1;

    iput-object p2, p0, Lcom/vungle/ads/internal/b;->b:Lcom/vungle/ads/VungleError;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/b;->a:Lcom/vungle/ads/c1;

    iget-object v1, p0, Lcom/vungle/ads/internal/b;->b:Lcom/vungle/ads/VungleError;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/VungleInitializer;->a(Lcom/vungle/ads/c1;Lcom/vungle/ads/VungleError;)V

    return-void
.end method

###### Class com.vungle.ads.internal.c (com.vungle.ads.internal.c)
.class public final synthetic Lcom/vungle/ads/internal/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/internal/VungleInitializer;

.field public final synthetic b:Lcom/vungle/ads/c1;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/c;->a:Lcom/vungle/ads/internal/VungleInitializer;

    iput-object p2, p0, Lcom/vungle/ads/internal/c;->b:Lcom/vungle/ads/c1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/c;->a:Lcom/vungle/ads/internal/VungleInitializer;

    iget-object v1, p0, Lcom/vungle/ads/internal/c;->b:Lcom/vungle/ads/c1;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/VungleInitializer;->b(Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;)V

    return-void
.end method

###### Class com.vungle.ads.internal.d (com.vungle.ads.internal.d)
.class public final synthetic Lcom/vungle/ads/internal/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/vungle/ads/c1;

.field public final synthetic b:Lcom/vungle/ads/internal/VungleInitializer;


# direct methods
.method public synthetic constructor <init>(Lcom/vungle/ads/c1;Lcom/vungle/ads/internal/VungleInitializer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/d;->a:Lcom/vungle/ads/c1;

    iput-object p2, p0, Lcom/vungle/ads/internal/d;->b:Lcom/vungle/ads/internal/VungleInitializer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/vungle/ads/internal/d;->a:Lcom/vungle/ads/c1;

    iget-object v1, p0, Lcom/vungle/ads/internal/d;->b:Lcom/vungle/ads/internal/VungleInitializer;

    invoke-static {v0, v1}, Lcom/vungle/ads/internal/VungleInitializer;->c(Lcom/vungle/ads/c1;Lcom/vungle/ads/internal/VungleInitializer;)V

    return-void
.end method

###### Class com.vungle.ads.internal.e (com.vungle.ads.internal.e)
.class public final synthetic Lcom/vungle/ads/internal/e;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vungle/ads/internal/VungleInitializer;

.field public final synthetic d:Lcom/vungle/ads/c1;

.field public final synthetic e:Lkotlin/i;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/ads/internal/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vungle/ads/internal/e;->c:Lcom/vungle/ads/internal/VungleInitializer;

    iput-object p4, p0, Lcom/vungle/ads/internal/e;->d:Lcom/vungle/ads/c1;

    iput-object p5, p0, Lcom/vungle/ads/internal/e;->e:Lkotlin/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/vungle/ads/internal/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/ads/internal/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/ads/internal/e;->c:Lcom/vungle/ads/internal/VungleInitializer;

    iget-object v3, p0, Lcom/vungle/ads/internal/e;->d:Lcom/vungle/ads/c1;

    iget-object v4, p0, Lcom/vungle/ads/internal/e;->e:Lkotlin/i;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/vungle/ads/internal/VungleInitializer;->d(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/internal/VungleInitializer;Lcom/vungle/ads/c1;Lkotlin/i;)V

    return-void
.end method
