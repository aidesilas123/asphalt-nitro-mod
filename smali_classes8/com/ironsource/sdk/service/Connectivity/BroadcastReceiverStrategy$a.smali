###### Class com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy.a (com.ironsource.sdk.service.Connectivity.BroadcastReceiverStrategy$a)
.class Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$a;->a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-static {p1}, Lcom/ironsource/l2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    iget-object p1, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$a;->a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-static {p1}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->a(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)Lcom/ironsource/d5;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/d5;->a()V

    goto :goto_24

    :cond_16
    iget-object p2, p0, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy$a;->a:Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;

    invoke-static {p2}, Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;->a(Lcom/ironsource/sdk/service/Connectivity/BroadcastReceiverStrategy;)Lcom/ironsource/d5;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/ironsource/d5;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_24
    return-void
.end method
