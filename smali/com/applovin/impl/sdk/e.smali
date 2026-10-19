###### Class com.applovin.impl.sdk.e (com.applovin.impl.sdk.e)
.class public Lcom/applovin/impl/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e$a;
    }
.end annotation


# instance fields
.field private ayU:Lcom/applovin/impl/sdk/utils/r;

.field private final ayX:Ljava/lang/Object;

.field private final ayY:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ayZ:Z

.field private final aza:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/impl/sdk/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private azb:J

.field private final sdk:Lcom/applovin/impl/sdk/n;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/n;Lcom/applovin/impl/sdk/e$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e;->ayY:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e;->aza:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    return-void
.end method

.method private AM()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/r;->pause()V

    goto :goto_29

    :cond_b
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "An ad load is in progress. Will pause refresh once the ad finishes loading."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayY:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private AN()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/r;->resume()V

    goto :goto_11

    :cond_b
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayY:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private AO()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->aJu:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->AM()V

    :cond_13
    return-void
.end method

.method private AP()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->aJu:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/e;->ayZ:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Fullscreen ad dismissed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    monitor-exit v0

    return-void

    :cond_31
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Ce()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the application to enter foreground to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    monitor-exit v0

    return-void

    :cond_57
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/r;->resume()V

    :cond_5e
    monitor-exit v0

    goto :goto_63

    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_13 .. :try_end_62} :catchall_60

    throw v1

    :cond_63
    :goto_63
    return-void
.end method

.method private synthetic AQ()V
    .registers 2

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->Y()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->aza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/e$a;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/applovin/impl/sdk/e$a;->onAdRefresh()V

    :cond_10
    return-void
.end method

.method private Y()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v2, Lcom/applovin/impl/sdk/c/a;->aJv:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->AQ()V

    return-void
.end method


# virtual methods
.method public AB()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->aJt:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->AM()V

    :cond_13
    return-void
.end method

.method public AC()V
    .registers 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v1, Lcom/applovin/impl/sdk/c/a;->aJt:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_13
    iget-boolean v1, p0, Lcom/applovin/impl/sdk/e;->ayZ:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Application resumed but banner ad refresh paused by publisher. Waiting for publisher to resume banner ad refresh."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    monitor-exit v0

    return-void

    :cond_31
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->Cf()Lcom/applovin/impl/sdk/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/u;->Fc()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the full screen ad to be dismissed to resume the timer."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    monitor-exit v0

    return-void

    :cond_57
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    iget-wide v3, p0, Lcom/applovin/impl/sdk/e;->azb:J

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e;->AH()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object v5, Lcom/applovin/impl/sdk/c/a;->aJs:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v5}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_81

    cmp-long v1, v3, v5

    if-lez v1, :cond_81

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e;->AI()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_86

    :cond_81
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/r;->resume()V

    :cond_86
    :goto_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_13 .. :try_end_87} :catchall_97

    if-eqz v2, :cond_9a

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->aza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/e$a;

    if-eqz v0, :cond_9a

    invoke-interface {v0}, Lcom/applovin/impl/sdk/e$a;->onAdRefresh()V

    goto :goto_9a

    :catchall_97
    move-exception v1

    :try_start_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v1

    :cond_9a
    :goto_9a
    return-void
.end method

.method public AG()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public AH()J
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/r;->AH()J

    move-result-wide v1

    goto :goto_e

    :cond_c
    const-wide/16 v1, -0x1

    :goto_e
    monitor-exit v0

    return-wide v1

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public AI()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/r;->tT()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->Y()V

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public AJ()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->AM()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/e;->ayZ:Z

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public AK()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->AN()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/applovin/impl/sdk/e;->ayZ:Z

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public AL()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/e;->ayZ:Z

    return v0
.end method

.method public bK(J)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->ayX:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e;->AI()V

    iput-wide p1, p0, Lcom/applovin/impl/sdk/e;->azb:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    new-instance v2, Lcom/applovin/impl/sdk/q0;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/q0;-><init>(Lcom/applovin/impl/sdk/e;)V

    invoke-static {p1, p2, v1, v2}, Lcom/applovin/impl/sdk/utils/r;->b(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/r;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object p2, Lcom/applovin/impl/sdk/c/a;->aJv:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4d

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.application_paused"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.application_resumed"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.fullscreen_ad_displayed"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.applovin.fullscreen_ad_hidden"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    :cond_4d
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object p2, Lcom/applovin/impl/sdk/c/a;->aJu:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Cf()Lcom/applovin/impl/sdk/u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/u;->Fc()Z

    move-result p1

    if-nez p1, :cond_75

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->Ce()Lcom/applovin/impl/sdk/SessionTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/SessionTracker;->isApplicationPaused()Z

    move-result p1

    if-eqz p1, :cond_7a

    :cond_75
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/r;->pause()V

    :cond_7a
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->ayY:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_b1

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    sget-object p2, Lcom/applovin/impl/sdk/c/a;->aJw:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/n;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b1

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_ac

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    const-string p2, "AdRefreshManager"

    const-string v1, "Pausing refresh for a previous request."

    invoke-virtual {p1, p2, v1}, Lcom/applovin/impl/sdk/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->ayU:Lcom/applovin/impl/sdk/utils/r;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/utils/r;->pause()V

    :cond_b1
    monitor-exit v0

    return-void

    :catchall_b3
    move-exception p1

    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_3 .. :try_end_b5} :catchall_b3

    throw p1
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .registers 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e;->AB()V

    goto :goto_33

    :cond_10
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e;->AC()V

    goto :goto_33

    :cond_1c
    const-string p2, "com.applovin.fullscreen_ad_displayed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->AO()V

    goto :goto_33

    :cond_28
    const-string p2, "com.applovin.fullscreen_ad_hidden"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->AP()V

    :cond_33
    :goto_33
    return-void
.end method
