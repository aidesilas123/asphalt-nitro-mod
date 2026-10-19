###### Class com.nearme.game.sdk.d.e (com.nearme.game.sdk.d$e)
.class final Lcom/nearme/game/sdk/d$e;
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
.field final synthetic a:Lcom/nearme/game/sdk/c/b/a;

.field final synthetic b:Lcom/nearme/game/sdk/b/a;

.field final synthetic c:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/c/b/a;Lcom/nearme/game/sdk/b/a;)V
    .registers 4

    iput-object p1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    iput-object p2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iput-object p3, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "begin send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v2, v2, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_4d

    :try_start_1f
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_26} :catch_49

    :try_start_26
    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    iget-object v2, v1, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->g(Lcom/nearme/game/sdk/d;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->l(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_44
    monitor-exit v0

    goto :goto_4d

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_49} :catch_49

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3f2

    if-eqz v0, :cond_151

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-static {}, Lcom/nearme/game/sdk/d;->r()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v3, v3, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    :try_start_72
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_79} :catch_9c

    :try_start_79
    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    iget-object v4, v3, Lcom/nearme/game/sdk/d;->i:Landroid/os/Handler;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->s(Lcom/nearme/game/sdk/d;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    :cond_97
    monitor-exit v0

    goto :goto_a0

    :catchall_99
    move-exception v3

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_79 .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v3
    :try_end_9c
    .catch Ljava/lang/InterruptedException; {:try_start_9b .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a0
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v0

    if-nez v0, :cond_d0

    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "failed send request "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v3, v3, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for init not accomplished."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_cf

    iget-object v1, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const-string v3, "failed for init not accomplished."

    invoke-static {v1, v0, v3, v2}, Lcom/nearme/game/sdk/d;->c(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/b/a;Ljava/lang/String;I)V

    :cond_cf
    return-void

    :cond_d0
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/nearme/game/sdk/c/b/a;->c:J

    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget-wide v3, v3, Lcom/nearme/game/sdk/c/b/a;->c:J

    iget-object v5, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    invoke-virtual {v0, v3, v4, v5}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->j(JLjava/lang/Object;)V

    :cond_f1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "requst"

    iget-object v5, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->e(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_10b
    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v3}, Lcom/nearme/game/sdk/d;->b(Lcom/nearme/game/sdk/d;)Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_114
    .catch Landroid/os/RemoteException; {:try_start_10b .. :try_end_114} :catch_116

    const/4 v1, 0x1

    goto :goto_178

    :catch_116
    move-exception v0

    const-string v3, "GCInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send PRC request error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_144

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const-string v4, "failed for RemoteException."

    invoke-static {v3, v0, v4, v2}, Lcom/nearme/game/sdk/d;->c(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/b/a;Ljava/lang/String;I)V

    invoke-static {}, Lcom/nearme/game/sdk/d;->f()Lcom/nearme/game/sdk/common/util/LongSparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget-wide v2, v2, Lcom/nearme/game/sdk/c/b/a;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/nearme/game/sdk/common/util/LongSparseArray;->k(J)V

    :cond_144
    :try_start_144
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->h(Lcom/nearme/game/sdk/d;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_149} :catch_14a

    goto :goto_178

    :catch_14a
    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    goto :goto_178

    :cond_151
    const-string v0, "GCInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed send request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v4, v4, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for service is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/d$e;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_178

    iget-object v3, p0, Lcom/nearme/game/sdk/d$e;->c:Lcom/nearme/game/sdk/d;

    const-string v4, "failed for service is null."

    invoke-static {v3, v0, v4, v2}, Lcom/nearme/game/sdk/d;->c(Lcom/nearme/game/sdk/d;Lcom/nearme/game/sdk/b/a;Ljava/lang/String;I)V

    :cond_178
    :goto_178
    if-eqz v1, :cond_191

    const-string v0, "GCInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish send request "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$e;->a:Lcom/nearme/game/sdk/c/b/a;

    iget v2, v2, Lcom/nearme/game/sdk/c/b/a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_191
    return-void
.end method
