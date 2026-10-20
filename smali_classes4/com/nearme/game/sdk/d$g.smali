###### Class com.nearme.game.sdk.d.g (com.nearme.game.sdk.d$g)
.class final Lcom/nearme/game/sdk/d$g;
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

    iput-object p1, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v0}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->j(Lcom/nearme/game/sdk/d;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "GCInternal"

    const-string v2, "do init timeout release lock."

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/game/sdk/d$g;->a:Lcom/nearme/game/sdk/d;

    invoke-static {v1}, Lcom/nearme/game/sdk/d;->o(Lcom/nearme/game/sdk/d;)[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
