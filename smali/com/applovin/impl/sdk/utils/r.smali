###### Class com.applovin.impl.sdk.utils.r (com.applovin.impl.sdk.utils.r)
.class public Lcom/applovin/impl/sdk/utils/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aWf:Ljava/util/Timer;

.field private aWg:J

.field private aWh:J

.field private final amY:Ljava/lang/Object;

.field private final sdk:Lcom/applovin/impl/sdk/n;

.field private startTimeMillis:J

.field private final v:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/r;->amY:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/r;->v:Ljava/lang/Runnable;

    return-void
.end method

.method private Lt()Ljava/util/TimerTask;
    .registers 2

    new-instance v0, Lcom/applovin/impl/sdk/utils/r$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/utils/r$1;-><init>(Lcom/applovin/impl/sdk/utils/r;)V

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/r;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/r;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/utils/r;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/utils/r;)Lcom/applovin/impl/sdk/n;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    return-object p0
.end method

.method public static b(JLcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/r;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_42

    if-eqz p3, :cond_3a

    new-instance v0, Lcom/applovin/impl/sdk/utils/r;

    invoke-direct {v0, p2, p3}, Lcom/applovin/impl/sdk/utils/r;-><init>(Lcom/applovin/impl/sdk/n;Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/sdk/utils/r;->startTimeMillis:J

    iput-wide p0, v0, Lcom/applovin/impl/sdk/utils/r;->aWg:J

    :try_start_15
    new-instance p3, Ljava/util/Timer;

    invoke-direct {p3}, Ljava/util/Timer;-><init>()V

    iput-object p3, v0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/r;->Lt()Ljava/util/TimerTask;

    move-result-object v1

    invoke-virtual {p3, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_15 .. :try_end_23} :catch_24

    goto :goto_39

    :catch_24
    move-exception p0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    if-eqz p1, :cond_39

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    const-string p2, "Timer"

    const-string p3, "Failed to create timer due to OOM error"

    invoke-virtual {p1, p2, p3, p0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    return-object v0

    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a scheduled timer. Runnable is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot create a scheduled timer. Invalid fire time passed in: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/utils/r;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/utils/r;->amY:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public AH()J
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    if-eqz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/r;->startTimeMillis:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/r;->aWg:J

    sub-long/2addr v2, v0

    return-wide v2

    :cond_f
    iget-wide v0, p0, Lcom/applovin/impl/sdk/utils/r;->aWg:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/utils/r;->aWh:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public pause()V
    .registers 10

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/r;->amY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4a

    if-eqz v1, :cond_48

    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const-wide/16 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/applovin/impl/sdk/utils/r;->startTimeMillis:J

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/impl/sdk/utils/r;->aWh:J
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1d

    :cond_1a
    :goto_1a
    :try_start_1a
    iput-object v2, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_4a

    goto :goto_48

    :catchall_1d
    move-exception v1

    :try_start_1e
    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v3

    const-string v4, "Timer"

    const-string v5, "Encountered error while pausing timer"

    invoke-virtual {v3, v4, v5, v1}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_44

    goto :goto_1a

    :catchall_44
    move-exception v1

    :try_start_45
    iput-object v2, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    throw v1

    :cond_48
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public resume()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/r;->amY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/applovin/impl/sdk/utils/r;->aWh:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_5c

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5a

    :try_start_b
    iget-wide v5, p0, Lcom/applovin/impl/sdk/utils/r;->aWg:J

    sub-long/2addr v5, v1

    iput-wide v5, p0, Lcom/applovin/impl/sdk/utils/r;->aWg:J

    cmp-long v1, v5, v3

    if-gez v1, :cond_16

    iput-wide v3, p0, Lcom/applovin/impl/sdk/utils/r;->aWg:J

    :cond_16
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/r;->Lt()Ljava/util/TimerTask;

    move-result-object v2

    iget-wide v5, p0, Lcom/applovin/impl/sdk/utils/r;->aWg:J

    invoke-virtual {v1, v2, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/impl/sdk/utils/r;->startTimeMillis:J
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_2f

    :cond_2c
    :goto_2c
    :try_start_2c
    iput-wide v3, p0, Lcom/applovin/impl/sdk/utils/r;->aWh:J
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_5c

    goto :goto_5a

    :catchall_2f
    move-exception v1

    :try_start_30
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    const-string v5, "Timer"

    const-string v6, "Encountered error while resuming timer"

    invoke-virtual {v2, v5, v6, v1}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_30 .. :try_end_55} :catchall_56

    goto :goto_2c

    :catchall_56
    move-exception v1

    :try_start_57
    iput-wide v3, p0, Lcom/applovin/impl/sdk/utils/r;->aWh:J

    throw v1

    :cond_5a
    :goto_5a
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5c

    throw v1
.end method

.method public tT()V
    .registers 9

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/r;->amY:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_43

    if-eqz v1, :cond_41

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :try_start_a
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    :try_start_d
    iput-object v4, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    :goto_f
    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/r;->aWh:J
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_43

    goto :goto_41

    :catchall_12
    move-exception v1

    :try_start_13
    iget-object v5, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/applovin/impl/sdk/utils/r;->sdk:Lcom/applovin/impl/sdk/n;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v5

    const-string v6, "Timer"

    const-string v7, "Encountered error while cancelling timer"

    invoke-virtual {v5, v6, v7, v1}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_3b

    :cond_38
    :try_start_38
    iput-object v4, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    goto :goto_f

    :catchall_3b
    move-exception v1

    iput-object v4, p0, Lcom/applovin/impl/sdk/utils/r;->aWf:Ljava/util/Timer;

    iput-wide v2, p0, Lcom/applovin/impl/sdk/utils/r;->aWh:J

    throw v1

    :cond_41
    :goto_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    throw v1
.end method

###### Class com.applovin.impl.sdk.utils.r.AnonymousClass1 (com.applovin.impl.sdk.utils.r$1)
.class Lcom/applovin/impl/sdk/utils/r$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/r;->Lt()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aWi:Lcom/applovin/impl/sdk/utils/r;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/utils/r;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/utils/r;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1b

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->c(Lcom/applovin/impl/sdk/utils/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_11
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/utils/r;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v1

    goto :goto_62

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v0

    :catchall_1b
    move-exception v1

    :try_start_1c
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/r;->b(Lcom/applovin/impl/sdk/utils/r;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/r;->b(Lcom/applovin/impl/sdk/utils/r;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/r;->b(Lcom/applovin/impl/sdk/utils/r;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while executing timed task"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_44
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/r;->b(Lcom/applovin/impl/sdk/utils/r;)Lcom/applovin/impl/sdk/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "executingTimedTask"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_1c .. :try_end_55} :catchall_66

    :cond_55
    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->c(Lcom/applovin/impl/sdk/utils/r;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5c
    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/utils/r;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v1

    :goto_62
    return-void

    :catchall_63
    move-exception v0

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5c .. :try_end_65} :catchall_63

    throw v0

    :catchall_66
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/r;->c(Lcom/applovin/impl/sdk/utils/r;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_6e
    iget-object v3, p0, Lcom/applovin/impl/sdk/utils/r$1;->aWi:Lcom/applovin/impl/sdk/utils/r;

    invoke-static {v3, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/utils/r;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6e .. :try_end_74} :catchall_75

    throw v1

    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0
.end method
