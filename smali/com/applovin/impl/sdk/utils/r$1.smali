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
