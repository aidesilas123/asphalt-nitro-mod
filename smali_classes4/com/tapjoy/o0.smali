###### Class com.tapjoy.o0 (com.tapjoy.o0)
.class public abstract Lcom/tapjoy/o0;
.super Lcom/tapjoy/internal/h9;
.source "SourceFile"


# instance fields
.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Lcom/tapjoy/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/tapjoy/internal/h9;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/o0;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/o0;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/o0;->e:Lcom/tapjoy/p;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-object v1, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    if-nez v1, :cond_9

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    :cond_9
    :try_start_9
    iget-object v0, v0, Lcom/tapjoy/internal/v1;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.android.installreferrer.api.InstallReferrerStateListener"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_9 .. :try_end_14} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_14} :catch_16

    const/4 v0, 0x1

    goto :goto_17

    :catch_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_22

    new-instance v0, Lcom/tapjoy/s;

    invoke-direct {v0}, Lcom/tapjoy/s;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tapjoy/s;->c(Landroid/content/Context;)V

    return-void

    :cond_22
    new-instance p1, Lcom/tapjoy/i0;

    const-string v0, "InstallReferrerClient APIs aren\'t available in your project. To use activateInstallReferrerClient() API,`com.android.installreferrer:installreferrer` dependency is required to your project level build.gradle file"

    invoke-direct {p1, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Z
    .registers 3

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Lcom/tapjoy/internal/v1;->e()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    goto :goto_1d

    :cond_a
    iget-object v0, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    iget-object v0, v0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iget-object v0, v0, Lcom/tapjoy/internal/s5;->w:Ljava/lang/Boolean;

    sget-object v1, Lcom/tapjoy/internal/p6;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    goto :goto_19

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1d
    return v0
.end method

.method public declared-synchronized c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_21

    const-string p1, "TapjoyAPI"

    const-string p2, "Device OS version not supported"

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1f

    const/4 p1, 0x2

    const-string p2, "Device OS version not supported"

    move-object p3, p4

    check-cast p3, Lcom/tapjoy/internal/b1;

    iget-object p3, p3, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-virtual {p3, p1, p2}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V

    invoke-virtual {p4}, Lcom/tapjoy/n;->onConnectFailure()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_115

    :cond_1f
    monitor-exit p0

    return v2

    :cond_21
    if-eqz p3, :cond_38

    :try_start_23
    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    :cond_38
    const-string v0, "event"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p1, :cond_5f

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string p3, "The application context is NULL"

    invoke-direct {p1, p2, p3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p2, "TapjoyAPI"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_5d

    const-string p1, "The application context is NULL"

    move-object p2, p4

    check-cast p2, Lcom/tapjoy/internal/b1;

    iget-object p2, p2, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-virtual {p2, v0, p1}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V

    invoke-virtual {p4}, Lcom/tapjoy/n;->onConnectFailure()V
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_115

    :cond_5d
    monitor-exit p0

    return v2

    :cond_5f
    :try_start_5f
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_84

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string p3, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy"

    invoke-direct {p1, p2, p3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p2, "TapjoyAPI"

    invoke-static {p2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_82

    const-string p1, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy"

    move-object p2, p4

    check-cast p2, Lcom/tapjoy/internal/b1;

    iget-object p2, p2, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-virtual {p2, v0, p1}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V

    invoke-virtual {p4}, Lcom/tapjoy/n;->onConnectFailure()V
    :try_end_82
    .catchall {:try_start_5f .. :try_end_82} :catchall_115

    :cond_82
    monitor-exit p0

    return v2

    :cond_84
    :try_start_84
    sget-object v1, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/o8;

    sget-object v1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    iget-boolean v3, v1, Lcom/tapjoy/internal/v1;->f:Z

    if-eq v3, v0, :cond_8e

    iput-boolean v0, v1, Lcom/tapjoy/internal/v1;->f:Z

    :cond_8e
    new-instance v3, Lcom/tapjoy/internal/k9;

    invoke-direct {v3}, Lcom/tapjoy/internal/k9;-><init>()V

    invoke-static {v3}, Lcom/tapjoy/internal/g2;->a(Lcom/tapjoy/internal/k9;)Lcom/tapjoy/internal/g2;

    move-result-object v3

    iput-object v3, v1, Lcom/tapjoy/internal/v1;->o:Lcom/tapjoy/internal/g2;
    :try_end_99
    .catchall {:try_start_84 .. :try_end_99} :catchall_115

    :try_start_99
    invoke-static {p1}, Lcom/tapjoy/TapjoyAppSettings;->init(Landroid/content/Context;)V

    new-instance v1, Lcom/tapjoy/internal/t9;

    move-object v3, p4

    check-cast v3, Lcom/tapjoy/internal/b1;

    invoke-direct {v1, p0, p1, v3}, Lcom/tapjoy/internal/t9;-><init>(Lcom/tapjoy/o0;Landroid/content/Context;Lcom/tapjoy/internal/b1;)V

    invoke-static {p1, p2, p3, v1}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)V
    :try_end_a7
    .catch Lcom/tapjoy/i0; {:try_start_99 .. :try_end_a7} :catch_f1
    .catch Lcom/tapjoy/f0; {:try_start_99 .. :try_end_a7} :catch_cd
    .catchall {:try_start_99 .. :try_end_a7} :catchall_115

    :try_start_a7
    iput-boolean v0, p0, Lcom/tapjoy/o0;->c:Z

    if-eqz p3, :cond_be

    const-string p2, "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING"

    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "true"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_be

    const/4 v2, 0x1

    :cond_be
    if-nez v2, :cond_c4

    invoke-static {p1}, Lcom/tapjoy/internal/e;->a(Landroid/content/Context;)V

    goto :goto_cb

    :cond_c4
    const-string p1, "TapjoyAPI"

    const-string p2, "Automatic session tracking is disabled."

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_a7 .. :try_end_cb} :catchall_115

    :goto_cb
    monitor-exit p0

    return v0

    :catch_cd
    move-exception p1

    :try_start_ce
    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p3, "TapjoyAPI"

    invoke-static {p3, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_ef

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    move-object p2, p4

    check-cast p2, Lcom/tapjoy/internal/b1;

    iget-object p2, p2, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-virtual {p2, v0, p1}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V

    invoke-virtual {p4}, Lcom/tapjoy/n;->onConnectFailure()V
    :try_end_ef
    .catchall {:try_start_ce .. :try_end_ef} :catchall_115

    :cond_ef
    monitor-exit p0

    return v2

    :catch_f1
    move-exception p1

    :try_start_f2
    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p3, "TapjoyAPI"

    invoke-static {p3, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_113

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    move-object p2, p4

    check-cast p2, Lcom/tapjoy/internal/b1;

    iget-object p2, p2, Lcom/tapjoy/internal/b1;->a:Lcom/tapjoy/internal/aa;

    invoke-virtual {p2, v0, p1}, Lcom/tapjoy/internal/aa;->d(ILjava/lang/String;)V

    invoke-virtual {p4}, Lcom/tapjoy/n;->onConnectFailure()V
    :try_end_113
    .catchall {:try_start_f2 .. :try_end_113} :catchall_115

    :cond_113
    monitor-exit p0

    return v2

    :catchall_115
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Ljava/lang/String;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/tapjoy/internal/h9;->b:Z

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because Tapjoy SDK has not successfully connected."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1e
    const/4 p1, 0x1

    return p1
.end method

.method public final e(Ljava/lang/String;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/tapjoy/o0;->c:Z

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " because Tapjoy SDK is not initialized."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/o0;->d:Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-direct {v0, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string p1, "TapjoyAPI"

    invoke-static {p1, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const/4 p1, 0x0

    return p1

    :cond_27
    const/4 p1, 0x1

    return p1
.end method
