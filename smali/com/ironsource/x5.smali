###### Class com.json.x5 (com.ironsource.x5)
.class public Lcom/ironsource/x5;
.super Lcom/ironsource/v1;
.source "SourceFile"


# static fields
.field private static final b:Lcom/ironsource/x5;


# instance fields
.field private c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

.field private d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

.field private e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ironsource/x5;

    invoke-direct {v0}, Lcom/ironsource/x5;-><init>()V

    sput-object v0, Lcom/ironsource/x5;->b:Lcom/ironsource/x5;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/ironsource/v1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-void
.end method

.method static synthetic A(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a()Lcom/ironsource/x5;
    .registers 2

    const-class v0, Lcom/ironsource/x5;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/x5;->b:Lcom/ironsource/x5;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/ironsource/x5;)Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    return-object p0
.end method

.method static synthetic d(Lcom/ironsource/x5;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/x5;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic f(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/x5;)Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    return-object p0
.end method

.method static synthetic h(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/ironsource/x5;)Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    return-object p0
.end method

.method static synthetic j(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic q(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/v1;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$p;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$p;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$q;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$q;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$r;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$r;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$g;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/x5$g;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$h;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$h;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$i;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/x5$i;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

.method public declared-synchronized a(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$j;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$j;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$l;

    invoke-direct {v1, p0}, Lcom/ironsource/x5$l;-><init>(Lcom/ironsource/x5;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$m;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$m;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

.method public declared-synchronized b(Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$a;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$b;

    invoke-direct {v1, p0}, Lcom/ironsource/x5$b;-><init>(Lcom/ironsource/x5;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$c;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$c;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

.method public d(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$s;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$s;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$t;

    invoke-direct {v1, p0}, Lcom/ironsource/x5$t;-><init>(Lcom/ironsource/x5;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$u;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$u;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

.method public e(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$k;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$k;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$n;

    invoke-direct {v1, p0}, Lcom/ironsource/x5$n;-><init>(Lcom/ironsource/x5;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$o;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$o;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method

.method public f(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/x5;->e:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$d;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$d;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/ironsource/x5;->c:Lcom/ironsource/mediationsdk/sdk/InterstitialListener;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$e;

    invoke-direct {v1, p0}, Lcom/ironsource/x5$e;-><init>(Lcom/ironsource/x5;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_1d
    iget-object v0, p0, Lcom/ironsource/x5;->d:Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/x5$f;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/x5$f;-><init>(Lcom/ironsource/x5;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask(Ljava/lang/Runnable;)V

    :cond_2b
    return-void
.end method
