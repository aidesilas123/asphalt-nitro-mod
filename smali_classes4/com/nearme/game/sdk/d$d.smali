###### Class com.nearme.game.sdk.d.C0441d (com.nearme.game.sdk.d$d)
.class final Lcom/nearme/game/sdk/d$d;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Lcom/nearme/game/sdk/b/a;


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

    iput-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object p2, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p2}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object p2

    monitor-enter p2

    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2c

    iget-object p2, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    iget-object p2, p2, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init failed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 4

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nearme/game/sdk/d;->k(Lcom/nearme/game/sdk/d;Z)Z

    iget-object v0, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_37

    const-string p1, "GCInternal"

    const-string v0, "init success."

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->p(Lcom/nearme/game/sdk/d;)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq v0, p1, :cond_36

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1}, Lcom/nearme/game/sdk/d;->p(Lcom/nearme/game/sdk/d;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nearme/game/sdk/d;->u(I)V

    iget-object p1, p0, Lcom/nearme/game/sdk/d$d;->a:Lcom/nearme/game/sdk/d;

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/d;->q(Lcom/nearme/game/sdk/d;I)I

    :cond_36
    return-void

    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0
.end method
