###### Class com.nearme.game.sdk.d.i (com.nearme.game.sdk.d$i)
.class final Lcom/nearme/game/sdk/d$i;
.super Ljava/lang/Object;
.source "GCInternal.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/game/sdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/nearme/game/sdk/d;


# direct methods
.method constructor <init>(Lcom/nearme/game/sdk/d;)V
    .registers 2

    iput-object p1, p0, Lcom/nearme/game/sdk/d$i;->b:Lcom/nearme/game/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nearme/game/sdk/d$i;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    iput-wide v0, p0, Lcom/nearme/game/sdk/d$i;->a:J

    return-void

    :cond_11
    const-string v2, "GCInternal"

    const-string v3, "::ChildProcessStatusListener:binderDied"

    invoke-static {v2, v3}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$i;->b:Lcom/nearme/game/sdk/d;

    iget-object v3, v2, Lcom/nearme/game/sdk/d;->e:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/nearme/game/sdk/d;->a(Lcom/nearme/game/sdk/d;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nearme/game/sdk/d$i;->b:Lcom/nearme/game/sdk/d;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nearme/game/sdk/d;->d(Lcom/nearme/game/sdk/d;Landroid/os/Messenger;)Landroid/os/Messenger;

    iput-wide v0, p0, Lcom/nearme/game/sdk/d$i;->a:J

    return-void
.end method
