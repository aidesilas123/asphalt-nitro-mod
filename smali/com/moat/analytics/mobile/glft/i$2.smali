###### Class com.moat.analytics.mobile.glft.i.AnonymousClass2 (com.moat.analytics.mobile.glft.i$2)
.class Lcom/moat/analytics/mobile/glft/i$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/i;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/i;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/i$2;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    :try_start_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$2;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->e(Lcom/moat/analytics/mobile/glft/i;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/i$2;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/i;->f(Lcom/moat/analytics/mobile/glft/i;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-lez v2, :cond_20

    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$2;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->d(Lcom/moat/analytics/mobile/glft/i;)V

    :cond_20
    return-void
.end method
