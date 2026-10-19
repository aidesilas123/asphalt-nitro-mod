###### Class com.moat.analytics.mobile.glft.i.AnonymousClass3 (com.moat.analytics.mobile.glft.i$3)
.class Lcom/moat/analytics/mobile/glft/i$3;
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

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/i$3;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/moat/analytics/mobile/glft/i$3;->a:Lcom/moat/analytics/mobile/glft/i;

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/i;->g(Lcom/moat/analytics/mobile/glft/i;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method
