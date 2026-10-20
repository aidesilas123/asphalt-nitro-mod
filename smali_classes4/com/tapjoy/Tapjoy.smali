###### Class com.tapjoy.Tapjoy (com.tapjoy.Tapjoy)
.class public final Lcom/tapjoy/Tapjoy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionComplete(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "actionComplete"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TapjoyConnectCore;->b(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public static activateInstallReferrerClient(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0, p0}, Lcom/tapjoy/o0;->a(Landroid/content/Context;)V
    :try_end_5
    .catch Lcom/tapjoy/i0; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Tapjoy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    return-void
.end method

.method public static addUserTag(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_31

    :cond_c
    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_28

    :cond_1a
    iget-object v1, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    monitor-enter v1

    :try_start_1d
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v3, v3, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_32

    move-object v1, v2

    :goto_28
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/v1;->d(Ljava/util/Set;)V

    :cond_31
    :goto_31
    return-void

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public static awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "awardCurrency"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/tapjoy/o0;->e:Lcom/tapjoy/p;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/p;->b(ILcom/tapjoy/TJAwardCurrencyListener;)V

    goto :goto_19

    :cond_12
    if-eqz p1, :cond_19

    const-string p0, "Tapjoy SDK is not connected"

    invoke-interface {p1, p0}, Lcom/tapjoy/TJAwardCurrencyListener;->onAwardCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static clearUserTags()V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/v1;->d(Ljava/util/Set;)V

    return-void
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/tapjoy/internal/ba;->f:Lcom/tapjoy/internal/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/tapjoy/internal/aa;->f(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z

    move-result p0

    return p0
.end method

.method public static connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    iget-object v0, v0, Lcom/tapjoy/internal/ba;->f:Lcom/tapjoy/internal/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/tapjoy/internal/aa;->f(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/n;",
            ")Z"
        }
    .end annotation

    const-class v0, Lcom/tapjoy/Tapjoy;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    iget-object v1, v1, Lcom/tapjoy/internal/ba;->f:Lcom/tapjoy/internal/aa;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/aa;->f(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z

    move-result p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static endSession()V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "endSession"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/tapjoy/internal/e;->a()V

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/internal/v1;->m:Z

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnectCore;->d()V

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->i()Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_2f

    :cond_20
    iget-object v0, v0, Lcom/tapjoy/internal/v1;->j:Lcom/tapjoy/internal/e9;

    iget-object v1, v0, Lcom/tapjoy/internal/e9;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v0, v0, Lcom/tapjoy/internal/e9;->c:Lcom/tapjoy/internal/t8;

    invoke-virtual {v0}, Lcom/tapjoy/internal/t8;->run()V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public static getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "getCurrencyBalance"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/tapjoy/o0;->e:Lcom/tapjoy/p;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0}, Lcom/tapjoy/p;->c(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    goto :goto_19

    :cond_12
    if-eqz p0, :cond_19

    const-string v0, "Tapjoy SDK is not connected"

    invoke-interface {p0, v0}, Lcom/tapjoy/TJGetCurrencyBalanceListener;->onGetCurrencyBalanceResponseFailure(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static getCustomParameter()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLimitedPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMaxLevel()I
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJUserParameters;->d()I

    move-result v0

    return v0
.end method

.method public static getPlacement(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .registers 6

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tapjoy/TJPlacementManager;->a:Lcom/tapjoy/internal/o8;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_d
    invoke-static {p0, v0, v1, v3}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tapjoy/o;

    move-result-object p0

    new-instance v0, Lcom/tapjoy/TJPlacement;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/TJPlacement;-><init>(Lcom/tapjoy/o;Lcom/tapjoy/TJPlacementListener;)V

    monitor-exit v2

    return-object v0

    :catchall_18
    move-exception p0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static getPrivacyPolicy()Lcom/tapjoy/TJPrivacyPolicy;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportURL()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "getSupportURL"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getSupportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    return-object v1
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "getSupportURL"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getSupportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static getUserSegment()Lcom/tapjoy/TJSegment;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJUserParameters;->e()Lcom/tapjoy/TJSegment;

    move-result-object v0

    return-object v0
.end method

.method public static getUserTags()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_21

    :cond_13
    iget-object v0, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    monitor-enter v0

    :try_start_16
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v2, v2, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    move-object v0, v1

    :goto_21
    return-object v0

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static getUserToken()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "13.3.0"

    return-object v0
.end method

.method public static isConnected()Z
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    iget-boolean v0, v0, Lcom/tapjoy/internal/h9;->b:Z

    return v0
.end method

.method public static isLimitedConnected()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static isPushNotificationDisabled()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Lcom/tapjoy/o0;->b()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized limitedConnect(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/n;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class p0, Lcom/tapjoy/Tapjoy;

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_4
    const-string v0, "The interface is no longer operational."

    invoke-virtual {p2, p1, v0}, Lcom/tapjoy/n;->onConnectFailure(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_c

    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static loadSharedLibrary()V
    .registers 1

    :try_start_0
    const-string v0, "tapjoy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method

.method public static onActivityStart(Landroid/app/Activity;)V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/m8;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/m8;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onActivityStop(Landroid/app/Activity;)V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/w8;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/w8;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static optOutAdvertisingID(Landroid/content/Context;Z)V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->optOutAdvertisingID(Landroid/content/Context;Z)V

    return-void
.end method

.method public static removeUserTag(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_31

    :cond_c
    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_28

    :cond_1a
    iget-object v1, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    monitor-enter v1

    :try_start_1d
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v3, v3, Lcom/tapjoy/internal/s5;->v:Lcom/tapjoy/internal/j6;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_32

    move-object v1, v2

    :goto_28
    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/v1;->d(Ljava/util/Set;)V

    :cond_31
    :goto_31
    return-void

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_d

    sget-object v0, Lcom/tapjoy/internal/t;->c:Lcom/tapjoy/internal/c8;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/c8;->a(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_d
    new-instance p0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "Cannot set activity to NULL"

    invoke-direct {p0, v0, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    :goto_1b
    return-void
.end method

.method public static setCustomParameter(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->setCustomParameter(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebugEnabled(Z)V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    return-void
.end method

.method public static setDeviceToken(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, v0, Lcom/tapjoy/internal/v1;->l:Z

    if-eqz v1, :cond_1c

    if-nez p0, :cond_13

    iget-object v1, v0, Lcom/tapjoy/internal/v1;->n:Ljava/lang/String;

    if-eqz v1, :cond_13

    move-object p0, v1

    :cond_13
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/internal/v1;->n:Ljava/lang/String;

    if-eqz p0, :cond_20

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/v1;->c(Ljava/lang/String;)V

    goto :goto_20

    :cond_1c
    if-eqz p0, :cond_20

    iput-object p0, v0, Lcom/tapjoy/internal/v1;->n:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_22

    :cond_20
    :goto_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    iget-object v1, v0, Lcom/tapjoy/o0;->e:Lcom/tapjoy/p;

    if-eqz v1, :cond_13

    const-string v1, "setEarnedCurrencyListener"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, v0, Lcom/tapjoy/o0;->e:Lcom/tapjoy/p;

    invoke-virtual {v0, p0}, Lcom/tapjoy/p;->f(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    :cond_13
    return-void
.end method

.method public static setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    invoke-static {p0}, Lcom/tapjoy/internal/h;->a(Landroid/opengl/GLSurfaceView;)V

    :goto_15
    return-void
.end method

.method public static setInstallReferrer(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v1, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    if-nez v1, :cond_e

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    :cond_e
    iget-object p0, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    if-eqz p1, :cond_46

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iget-object p0, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    monitor-enter p0

    :try_start_18
    iget-object v1, p0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v1, v1, Lcom/tapjoy/internal/h2;->d:Lcom/tapjoy/internal/o3;

    invoke-virtual {v1}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_43

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_46

    iget-object p0, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/d3;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_46

    iget-object p0, v0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/tapjoy/internal/r1;->a:Lcom/tapjoy/internal/r1;

    const-string v0, "referrer"

    invoke-virtual {p0, p1, v0}, Lcom/tapjoy/internal/i5;->a(Lcom/tapjoy/internal/r1;Ljava/lang/String;)Lcom/tapjoy/internal/d4;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/i5;->b(Lcom/tapjoy/internal/d4;)V

    goto :goto_46

    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1

    :cond_46
    :goto_46
    return-void
.end method

.method public static setMaxLevel(I)V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJUserParameters;->g(I)V

    return-void
.end method

.method public static setPushNotificationDisabled(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5e

    :cond_e
    iget-object v1, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {v1, p0}, Lcom/tapjoy/internal/d3;->h(Z)Z

    move-result p0

    if-eqz p0, :cond_5e

    iget-boolean p0, v0, Lcom/tapjoy/internal/v1;->l:Z

    if-eqz p0, :cond_5e

    const/4 p0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, v0, Lcom/tapjoy/internal/v1;->n:Ljava/lang/String;

    if-eqz v1, :cond_26

    goto :goto_57

    :cond_26
    iget-object p0, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    const-class v1, Lcom/tapjoy/internal/j2;

    monitor-enter v1

    :try_start_2b
    sget-object v2, Lcom/tapjoy/internal/j2;->c:Lcom/tapjoy/internal/j2;

    if-nez v2, :cond_36

    new-instance v2, Lcom/tapjoy/internal/j2;

    invoke-direct {v2, p0}, Lcom/tapjoy/internal/j2;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/tapjoy/internal/j2;->c:Lcom/tapjoy/internal/j2;

    :cond_36
    sget-object p0, Lcom/tapjoy/internal/j2;->c:Lcom/tapjoy/internal/j2;
    :try_end_38
    .catchall {:try_start_2b .. :try_end_38} :catchall_5b

    monitor-exit v1

    iget-object v1, p0, Lcom/tapjoy/internal/q1;->b:Lcom/tapjoy/internal/e2;

    iget-object p0, p0, Lcom/tapjoy/internal/q1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "fiverocks"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "gcm.regId"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/internal/r9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_57
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/v1;->h(Ljava/lang/String;)V

    goto :goto_5e

    :catchall_5b
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_5e
    :goto_5e
    return-void
.end method

.method public static setReceiveRemoteNotification(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v1, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    if-nez v1, :cond_e

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    :cond_e
    iget-object p0, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    const-class v1, Lcom/tapjoy/internal/j2;

    monitor-enter v1

    :try_start_13
    sget-object v2, Lcom/tapjoy/internal/j2;->c:Lcom/tapjoy/internal/j2;

    if-nez v2, :cond_1e

    new-instance v2, Lcom/tapjoy/internal/j2;

    invoke-direct {v2, p0}, Lcom/tapjoy/internal/j2;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/tapjoy/internal/j2;->c:Lcom/tapjoy/internal/j2;

    :cond_1e
    sget-object p0, Lcom/tapjoy/internal/j2;->c:Lcom/tapjoy/internal/j2;
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_2a

    monitor-exit v1

    iget-object v0, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/tapjoy/internal/j2;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static setUserCohortVariable(ILjava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setUserFriendCount(I)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static setUserID(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tapjoy/Tapjoy;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "setUserID"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-static {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    sget-object p1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {p1}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_39

    :cond_16
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_2b

    :cond_1f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2c

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    :cond_2c
    iget-object p1, p1, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {p1, p0}, Lcom/tapjoy/internal/d3;->j(Ljava/lang/String;)V

    goto :goto_39

    :cond_32
    if-eqz p1, :cond_39

    iget-object p0, v0, Lcom/tapjoy/o0;->d:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public static setUserLevel(I)V
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1c

    :cond_e
    iget-object v0, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    const/4 v1, -0x1

    if-le p0, v1, :cond_18

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/d3;->e(Ljava/lang/Integer;)V

    :goto_1c
    return-void
.end method

.method public static setUserSegment(Lcom/tapjoy/TJSegment;)V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tapjoy/TJUserParameters;->h(Lcom/tapjoy/TJSegment;)V

    return-void
.end method

.method public static setUserTags(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/v1;->d(Ljava/util/Set;)V

    return-void
.end method

.method public static setVideoListener(Lcom/tapjoy/TJVideoListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "setVideoListener"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sput-object p0, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJVideoListener;

    :cond_c
    return-void
.end method

.method public static spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "spendCurrency"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/tapjoy/o0;->e:Lcom/tapjoy/p;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/p;->g(ILcom/tapjoy/TJSpendCurrencyListener;)V

    goto :goto_19

    :cond_12
    if-eqz p1, :cond_19

    const-string p0, "Tapjoy SDK is not connected"

    invoke-interface {p1, p0}, Lcom/tapjoy/TJSpendCurrencyListener;->onSpendCurrencyResponseFailure(Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public static startSession()V
    .registers 2

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    const-string v1, "startSession"

    invoke-virtual {v0, v1}, Lcom/tapjoy/o0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/tapjoy/internal/e;->a()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->h()V

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->i()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_27

    :cond_1d
    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->k()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/internal/q;->a(Landroid/app/Activity;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;J)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/tapjoy/internal/t1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .registers 16

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->i()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5c

    :cond_e
    const/4 v1, 0x0

    if-nez p0, :cond_12

    goto :goto_23

    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_19

    goto :goto_23

    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_25

    :goto_23
    move-object v4, v1

    goto :goto_26

    :cond_25
    move-object v4, p0

    :goto_26
    if-nez v4, :cond_29

    goto :goto_5c

    :cond_29
    if-nez p1, :cond_2c

    goto :goto_3f

    :cond_2c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_33

    goto :goto_3f

    :cond_33
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v1, p0

    :goto_3f
    if-nez v1, :cond_42

    goto :goto_5c

    :cond_42
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_4a

    goto :goto_5c

    :cond_4a
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p4}, Lcom/tapjoy/internal/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lcom/tapjoy/internal/v1;->i:Lcom/tapjoy/internal/i5;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v6, p2

    invoke-virtual/range {v3 .. v10}, Lcom/tapjoy/internal/i5;->c(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

.method public static trackPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/tapjoy/internal/h9;->a:Lcom/tapjoy/internal/ba;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lcom/tapjoy/internal/t1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
