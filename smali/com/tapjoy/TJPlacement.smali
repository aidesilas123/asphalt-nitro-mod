###### Class com.tapjoy.TJPlacement (com.tapjoy.TJPlacement)
.class public Lcom/tapjoy/TJPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/tapjoy/o;

.field public b:Lcom/tapjoy/TJPlacementListener;

.field public c:Lcom/tapjoy/TJPlacementListener;

.field public d:Lcom/tapjoy/TJPlacementVideoListener;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/tapjoy/TJEntryPoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->g:Lcom/tapjoy/TJEntryPoint;

    invoke-static {p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;)Lcom/tapjoy/o;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    const-string v1, ""

    invoke-static {p2, v1, v1, v0}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/tapjoy/o;

    move-result-object v0

    :cond_13
    invoke-virtual {v0, p1}, Lcom/tapjoy/o;->n(Landroid/content/Context;)V

    invoke-virtual {p0, v0, p3}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/o;Lcom/tapjoy/TJPlacementListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/o;Lcom/tapjoy/TJPlacementListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJPlacement;->g:Lcom/tapjoy/TJEntryPoint;

    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/TJPlacement;->a(Lcom/tapjoy/o;Lcom/tapjoy/TJPlacementListener;)V

    return-void
.end method

.method public static dismissContent()V
    .registers 2

    const-string v0, "TJC_OPTION_DISMISS_CONTENT_ALL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJPlacementManager;->dismissContentShowing(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/o;Lcom/tapjoy/TJPlacementListener;)V
    .registers 7

    const-class v0, Lcom/tapjoy/TJPlacementListener;

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementListener;

    if-eqz p2, :cond_30

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lcom/tapjoy/internal/v2;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p2, v2, v3}, Lcom/tapjoy/internal/v2;-><init>(Ljava/lang/Object;Ljava/lang/Thread;Landroid/os/Looper;)V

    invoke-static {p1, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacementListener;

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    :goto_31
    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->c:Lcom/tapjoy/TJPlacementListener;

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/tapjoy/FiveRocksIntegration;->addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    return-void
.end method

.method public b()Lcom/tapjoy/TJEntryPoint;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->g:Lcom/tapjoy/TJEntryPoint;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/tapjoy/TJPlacementListener;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->b:Lcom/tapjoy/TJPlacementListener;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-virtual {v0}, Lcom/tapjoy/o;->k()Lcom/tapjoy/w;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-virtual {v0}, Lcom/tapjoy/o;->k()Lcom/tapjoy/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_13
    const-string v0, ""

    :goto_15
    return-object v0
.end method

.method public f()Lcom/tapjoy/TJPlacementVideoListener;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    return-object v0
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-virtual {v0}, Lcom/tapjoy/o;->m()Z

    move-result v0

    return v0
.end method

.method public h()V
    .registers 8

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestContent() called for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJPlacement"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TJPrivacyPolicy;->e()Lcom/tapjoy/TJStatus;

    move-result-object v1

    sget-object v2, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    if-ne v1, v2, :cond_30

    const-string v1, "TJPlacement"

    const-string v2, "[INFO] Your application calls requestContent without having previously called setUserConsent. You can review Tapjoy supported consent API here - https://dev.tapjoy.com/sdk-integration/#sdk11122_gdpr_release."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_46

    new-instance v0, Lcom/tapjoy/r;

    const-string v1, "SDK not connected -- connect must be called first with a successful callback"

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1, p0, v2, v0}, Lcom/tapjoy/o;->d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V

    return-void

    :cond_46
    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-virtual {v1}, Lcom/tapjoy/o;->i()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_5d

    new-instance v0, Lcom/tapjoy/r;

    const-string v1, "Context is null -- TJPlacement requires a valid Context."

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1, p0, v2, v0}, Lcom/tapjoy/o;->d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V

    return-void

    :cond_5d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    new-instance v0, Lcom/tapjoy/r;

    const-string v1, "Invalid placement name -- TJPlacement requires a valid placement name."

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {v1, p0, v2, v0}, Lcom/tapjoy/o;->d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V

    return-void

    :cond_72
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    iget-object v0, v0, Lcom/tapjoy/o;->h:Lcom/tapjoy/TJAdUnit;

    invoke-virtual {v0}, Lcom/tapjoy/TJAdUnit;->x()V

    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    const-string v1, "REQUEST"

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/o;->e(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    iget-wide v3, v0, Lcom/tapjoy/o;->g:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_b9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Content has not expired yet for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v3}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TJCorePlacement"

    invoke-static {v3, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/tapjoy/o;->p:Z

    if-eqz v1, :cond_b4

    iput-boolean v2, v0, Lcom/tapjoy/o;->o:Z

    invoke-virtual {v0, p0}, Lcom/tapjoy/o;->c(Lcom/tapjoy/TJPlacement;)V

    invoke-virtual {v0}, Lcom/tapjoy/o;->b()V

    goto/16 :goto_17c

    :cond_b4
    invoke-virtual {v0, p0}, Lcom/tapjoy/o;->c(Lcom/tapjoy/TJPlacement;)V

    goto/16 :goto_17c

    :cond_b9
    iget-object v1, v0, Lcom/tapjoy/o;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_127

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v0, Lcom/tapjoy/o;->t:Ljava/lang/String;

    const-string v5, "mediation_agent"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/tapjoy/o;->u:Ljava/lang/String;

    const-string v5, "mediation_id"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/tapjoy/o;->v:Ljava/util/HashMap;

    if-eqz v4, :cond_e1

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e1

    const/4 v2, 0x1

    :cond_e1
    if-eqz v2, :cond_11d

    iget-object v2, v0, Lcom/tapjoy/o;->v:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ed
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "auction_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/tapjoy/o;->v:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ed

    :cond_113
    iget-object v2, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/o;->f(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_17c

    :cond_11d
    iget-object v2, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/tapjoy/o;->f(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_17c

    :cond_127
    monitor-enter v0

    :try_start_128
    iget-object v1, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v1}, Lcom/tapjoy/w;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_156

    invoke-virtual {v0}, Lcom/tapjoy/o;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_151

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v3, Lcom/tapjoy/r;

    const-string v4, "TJPlacement is missing APP_ID"

    invoke-direct {v3, v2, v4}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    const-string v2, "REQUEST"

    invoke-virtual {v0, v2}, Lcom/tapjoy/o;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v3}, Lcom/tapjoy/o;->d(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Lcom/tapjoy/r;)V

    goto :goto_17b

    :cond_151
    iget-object v2, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2, v1}, Lcom/tapjoy/w;->E(Ljava/lang/String;)V

    :cond_156
    const-string v2, "TJCorePlacement"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendContentRequest -- URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v4}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/o;->f(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_17b
    .catchall {:try_start_128 .. :try_end_17b} :catchall_17d

    :goto_17b
    monitor-exit v0

    :goto_17c
    return-void

    :catchall_17d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public i(Lcom/tapjoy/TJPlacementVideoListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/tapjoy/TJPlacement;->d:Lcom/tapjoy/TJPlacementVideoListener;

    return-void
.end method

.method public j()V
    .registers 7

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showContent() called for placement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TJPlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tapjoy/internal/i8;->c:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/tapjoy/TJPlacement;->g()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentReady"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-virtual {v1}, Lcom/tapjoy/o;->h()Lcom/tapjoy/TJAdUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TJAdUnit;->i()Lcom/tapjoy/internal/i8;

    move-result-object v1

    const-string v2, "show"

    invoke-virtual {v1, v2, v0}, Lcom/tapjoy/internal/i8;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_3c
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-virtual {v0}, Lcom/tapjoy/o;->l()Z

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "No placement content available. Can not show content for non-200 placement."

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v1, "TJPlacement"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void

    :cond_53
    iget-object v0, p0, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/o;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v1

    if-eqz v1, :cond_67

    const-string v0, "TJCorePlacement"

    const-string v1, "Only one view can be presented at a time."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_107

    :cond_67
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isViewOpen()Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "TJCorePlacement"

    const-string v2, "Will close N2E content."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tapjoy/internal/n4;

    invoke-direct {v1}, Lcom/tapjoy/internal/n4;-><init>()V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_7c
    const-string v1, "SHOW"

    invoke-virtual {v0, v1, p0}, Lcom/tapjoy/o;->e(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tapjoy/o;->l:Lcom/tapjoy/internal/x0;

    const/4 v3, 0x0

    if-eqz v2, :cond_ca

    iput-object v1, v2, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    instance-of v4, v2, Lcom/tapjoy/internal/p8;

    if-eqz v4, :cond_96

    const/4 v2, 0x3

    goto :goto_9d

    :cond_96
    instance-of v2, v2, Lcom/tapjoy/internal/i6;

    if-eqz v2, :cond_9c

    const/4 v2, 0x2

    goto :goto_9d

    :cond_9c
    const/4 v2, 0x0

    :goto_9d
    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyConnectCore;->viewWillOpen(Ljava/lang/String;I)V

    new-instance v2, Lcom/tapjoy/internal/z4;

    invoke-direct {v2, v0, v1}, Lcom/tapjoy/internal/z4;-><init>(Lcom/tapjoy/o;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tapjoy/o;->l:Lcom/tapjoy/internal/x0;

    iput-object v2, v1, Lcom/tapjoy/internal/x0;->b:Lcom/tapjoy/internal/z4;

    new-instance v1, Lcom/tapjoy/internal/p5;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/p5;-><init>(Lcom/tapjoy/o;)V

    const-class v2, Lcom/tapjoy/internal/v1;

    monitor-enter v2

    :try_start_b1
    sget-object v4, Lcom/tapjoy/internal/v1;->b:Landroid/os/Handler;

    if-nez v4, :cond_c0

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v4, Lcom/tapjoy/internal/v1;->b:Landroid/os/Handler;

    :cond_c0
    sget-object v4, Lcom/tapjoy/internal/v1;->b:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c5
    .catchall {:try_start_b1 .. :try_end_c5} :catchall_c7

    monitor-exit v2

    goto :goto_ff

    :catchall_c7
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_ca
    iget-object v2, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2, v1}, Lcom/tapjoy/w;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJMemoryDataStorage;->getInstance()Lcom/tapjoy/TJMemoryDataStorage;

    move-result-object v1

    iget-object v2, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v1, v2, v4}, Lcom/tapjoy/TJMemoryDataStorage;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, v0, Lcom/tapjoy/o;->b:Landroid/content/Context;

    const-class v4, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v2}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object v2

    const-string v4, "placement_name"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Lcom/tapjoy/internal/c6;

    invoke-direct {v2, v0, v1}, Lcom/tapjoy/internal/c6;-><init>(Lcom/tapjoy/o;Landroid/content/Intent;)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_ff
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/tapjoy/o;->g:J

    iput-boolean v3, v0, Lcom/tapjoy/o;->p:Z

    iput-boolean v3, v0, Lcom/tapjoy/o;->q:Z

    :goto_107
    return-void
.end method
