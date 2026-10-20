###### Class com.moat.analytics.mobile.glft.h.AnonymousClass1 (com.moat.analytics.mobile.glft.h$1)
.class Lcom/moat/analytics/mobile/glft/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/h;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/moat/analytics/mobile/glft/h;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/h;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/h$1;->b:Lcom/moat/analytics/mobile/glft/h;

    iput-object p2, p0, Lcom/moat/analytics/mobile/glft/h$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "UPDATE_METADATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/h$1;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h$1;->b:Lcom/moat/analytics/mobile/glft/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/h;->a(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/h$1;->b:Lcom/moat/analytics/mobile/glft/h;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/h;->b(Lcom/moat/analytics/mobile/glft/h;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :cond_2f
    :goto_2f
    return-void
.end method
