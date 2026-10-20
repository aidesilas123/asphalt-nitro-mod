###### Class com.unity3d.services.core.lifecycle.LifecycleCache (com.unity3d.services.core.lifecycle.LifecycleCache)
.class public Lcom/unity3d/services/core/lifecycle/LifecycleCache;
.super Ljava/lang/Object;
.source "LifecycleCache.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private _appActive:Z

.field private final _appActiveListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/services/core/lifecycle/IAppActiveListener;",
            ">;"
        }
    .end annotation
.end field

.field private final _appStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/unity3d/services/core/lifecycle/IAppEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private _currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

.field private _lifecycleAppActive:Z

.field private _newLifecycle:Z

.field private _numStarted:I


# direct methods
.method constructor <init>(Lcom/unity3d/services/core/configuration/ConfigurationReader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->RESUMED:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActive:Z

    iput-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_lifecycleAppActive:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_numStarted:I

    iput-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_newLifecycle:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActiveListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appStateListeners:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/ConfigurationReader;->getCurrentConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/services/core/configuration/Configuration;->getExperiments()Lcom/unity3d/services/core/configuration/IExperiments;

    move-result-object p1

    invoke-interface {p1}, Lcom/unity3d/services/core/configuration/IExperiments;->isJetpackLifecycle()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_newLifecycle:Z

    invoke-direct {p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->startProcessLifecycleObserving()V

    return-void
.end method

.method static synthetic access$000(Lcom/unity3d/services/core/lifecycle/LifecycleCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->registerLifecycleObserver()V

    return-void
.end method

.method private registerLifecycleObserver()V
    .registers 2

    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private startProcessLifecycleObserving()V
    .registers 2

    new-instance v0, Lcom/unity3d/services/core/lifecycle/LifecycleCache$1;

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache$1;-><init>(Lcom/unity3d/services/core/lifecycle/LifecycleCache;)V

    invoke-static {v0}, Lcom/unity3d/scar/adapter/common/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addActiveListener(Lcom/unity3d/services/core/lifecycle/IAppActiveListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActiveListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStateListener(Lcom/unity3d/services/core/lifecycle/IAppEventListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentState()Lcom/unity3d/services/core/lifecycle/LifecycleEvent;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    return-object v0
.end method

.method public isAppActive()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_newLifecycle:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_lifecycleAppActive:Z

    goto :goto_9

    :cond_7
    iget-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActive:Z

    :goto_9
    return v0
.end method

.method public declared-synchronized notifyActiveListeners()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActiveListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/core/lifecycle/IAppActiveListener;

    iget-boolean v2, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActive:Z

    invoke-interface {v1, v2}, Lcom/unity3d/services/core/lifecycle/IAppActiveListener;->onAppStateChanged(Z)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    goto :goto_7

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyStateListeners(Lcom/unity3d/services/core/lifecycle/LifecycleEvent;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/core/lifecycle/IAppEventListener;

    invoke-interface {v1, p1}, Lcom/unity3d/services/core/lifecycle/IAppEventListener;->onLifecycleEvent(Lcom/unity3d/services/core/lifecycle/LifecycleEvent;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    goto :goto_7

    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->CREATED:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->DESTROYED:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->PAUSED:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->notifyStateListeners(Lcom/unity3d/services/core/lifecycle/LifecycleEvent;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->RESUMED:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->notifyStateListeners(Lcom/unity3d/services/core/lifecycle/LifecycleEvent;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->SAVE_INSTANCE_STATE:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->STARTED:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iget p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_numStarted:I

    const/4 v0, 0x1

    if-nez p1, :cond_12

    iput-boolean v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActive:Z

    iget-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_newLifecycle:Z

    if-nez p1, :cond_12

    invoke-virtual {p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->notifyActiveListeners()V

    :cond_12
    iget p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_numStarted:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_numStarted:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleEvent;->STOPPED:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iput-object p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_currentState:Lcom/unity3d/services/core/lifecycle/LifecycleEvent;

    iget p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_numStarted:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_numStarted:I

    if-gtz p1, :cond_18

    const/4 p1, 0x0

    iput p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_numStarted:I

    iput-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActive:Z

    iget-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_newLifecycle:Z

    if-nez p1, :cond_18

    invoke-virtual {p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->notifyActiveListeners()V

    :cond_18
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Lifecycle$Event;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lcom/unity3d/services/core/lifecycle/LifecycleCache$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_f

    goto :goto_23

    :cond_f
    iput-boolean p2, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_lifecycleAppActive:Z

    iget-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_newLifecycle:Z

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->notifyActiveListeners()V

    goto :goto_23

    :cond_19
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_lifecycleAppActive:Z

    iget-boolean p1, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_newLifecycle:Z

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->notifyActiveListeners()V

    :cond_23
    :goto_23
    return-void
.end method

.method public declared-synchronized removeActiveListener(Lcom/unity3d/services/core/lifecycle/IAppActiveListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appActiveListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeStateListener(Lcom/unity3d/services/core/lifecycle/IAppEventListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unity3d/services/core/lifecycle/LifecycleCache;->_appStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
