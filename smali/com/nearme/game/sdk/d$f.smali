###### Class com.nearme.game.sdk.d.f (com.nearme.game.sdk.d$f)
.class final Lcom/nearme/game/sdk/d$f;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->m(Lcom/nearme/game/sdk/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "GCInternal"

    const-string v2, "retry bind service."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    iget-object v2, v1, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/nearme/game/sdk/d;->a(Lcom/nearme/game/sdk/d;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    iget-object v1, v1, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4e

    :cond_35
    const-string v1, "GCInternal"

    const-string v2, "waitService time out after retry release lock."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$f;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->m(Lcom/nearme/game/sdk/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw v1
.end method
