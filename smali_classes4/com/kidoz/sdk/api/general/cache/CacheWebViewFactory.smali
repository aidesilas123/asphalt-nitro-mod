###### Class com.kidoz.sdk.api.general.cache.CacheWebViewFactory (com.kidoz.sdk.api.general.cache.CacheWebViewFactory)
.class public Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;
.super Ljava/lang/Object;
.source "CacheWebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;,
        Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static single_instance:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;


# instance fields
.field private concurrentHashMapObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kidoz/sdk/api/general/cache/WebViewData;",
            ">;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private playersUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->concurrentHashMapObject:Ljava/util/Map;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->playersUrl:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->concurrentHashMapObject:Ljava/util/Map;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->single_instance:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    if-nez v1, :cond_e

    new-instance v1, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    invoke-direct {v1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;-><init>()V

    sput-object v1, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->single_instance:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;

    :cond_e
    sget-object v1, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->single_instance:Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addCache(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->hasCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_20
    new-instance v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;-><init>(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2a
    :try_start_2a
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v0, 0x1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, p2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_34} :catch_35

    return p1

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public addCacheAsync(Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;)V
    .registers 5

    new-instance v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$1;-><init>(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->execute(Ljava/lang/Object;)V

    return-void
.end method

.method public getCache(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/cache/WebViewData;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->hasCache(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->concurrentHashMapObject:Ljava/util/Map;

    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->concurrentHashMapObject:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/cache/WebViewData;

    monitor-exit v0

    return-object p1

    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCache(Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->concurrentHashMapObject:Ljava/util/Map;

    if-eqz v1, :cond_29

    if-eqz p1, :cond_29

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->concurrentHashMapObject:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->concurrentHashMapObject:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/cache/WebViewData;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/cache/WebViewData;->hasData()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_29
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public start()Z
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->playersUrl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3a
    new-instance v2, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p0, v3, v1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryRunnable;-><init>(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_51
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :try_start_56
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_60} :catch_61

    goto :goto_66

    :catch_61
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_66
    return v0
.end method

.method public startAsync(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;)V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$2;

    invoke-direct {v0, p0, p1}, Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$2;-><init>(Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory;Lcom/kidoz/sdk/api/general/cache/CacheWebViewFactory$CacheWebViewFactoryCallBack;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/cache/CustomAsyncExecutor;->execute(Ljava/lang/Object;)V

    return-void
.end method
