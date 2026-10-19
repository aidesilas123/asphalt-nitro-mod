###### Class com.nearme.game.sdk.d.c (com.nearme.game.sdk.d$c)
.class final Lcom/nearme/game/sdk/d$c;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "GCInternal"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected service = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->k(Lcom/nearme/game/sdk/d;Z)Z

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object p1

    monitor-enter p1

    :try_start_2a
    const-string v1, "GCInternal"

    const-string v2, "onServiceConnected release lock."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_5a

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->m(Lcom/nearme/game/sdk/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->n(Lcom/nearme/game/sdk/d;)V

    :try_start_4a
    new-instance p1, Lcom/nearme/game/sdk/d$i;

    iget-object v1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p1, v1}, Lcom/nearme/game/sdk/d$i;-><init>(Lcom/nearme/game/sdk/d;)V

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_54} :catch_55

    return-void

    :catch_55
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void

    :catchall_5a
    move-exception p2

    :try_start_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "GCInternal"

    const-string v0, "onServiceDisconnected."

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$c;->a:Lcom/nearme/game/sdk/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    return-void
.end method
