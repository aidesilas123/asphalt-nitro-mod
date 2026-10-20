###### Class com.applovin.impl.sdk.AppLovinExceptionHandler (com.applovin.impl.sdk.AppLovinExceptionHandler)
.class public Lcom/applovin/impl/sdk/AppLovinExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final azQ:Lcom/applovin/impl/sdk/AppLovinExceptionHandler;


# instance fields
.field private final ams:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final azR:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/n;",
            ">;"
        }
    .end annotation
.end field

.field private azS:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->azQ:Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->azR:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static shared()Lcom/applovin/impl/sdk/AppLovinExceptionHandler;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->azQ:Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    return-object v0
.end method


# virtual methods
.method public addSdk(Lcom/applovin/impl/sdk/n;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->azR:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enable()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->ams:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->azS:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_13
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->azR:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/n;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->Bq()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v1

    const-string v2, "AppLovinExceptionHandler"

    const-string v4, "Detected unhandled exception"

    invoke-virtual {v1, v2, v4}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/r$a;->aEH:Lcom/applovin/impl/sdk/r$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "top_main_method"

    invoke-static {v5, v4}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/applovin/impl/sdk/r;->a(Lcom/applovin/impl/sdk/r$a;Ljava/util/Map;)V

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BF()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v1

    const-string v2, "paused"

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEventSynchronously(Ljava/lang/String;)V

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->aOg:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_8

    :cond_57
    :try_start_57
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5c

    :catch_5b
    nop

    :goto_5c
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->azS:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_64

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_6f

    :cond_64
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :goto_6f
    return-void
.end method
