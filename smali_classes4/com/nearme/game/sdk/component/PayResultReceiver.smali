###### Class com.nearme.game.sdk.component.PayResultReceiver (com.nearme.game.sdk.component.PayResultReceiver)
.class public Lcom/nearme/game/sdk/component/PayResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PayResultReceiver.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nearme/game/sdk/b/a;

.field private c:Lcom/nearme/game/sdk/b/a;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PayResultReceiver"

    invoke-static {v2, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "response"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/nearme/platform/opensdk/pay/PayResponse;->parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;

    move-result-object p2

    const/16 v1, 0x3f2

    const-string v3, "pay_result"

    if-eqz p2, :cond_dd

    iget-object v4, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    const-string v4, "nearme.pay.response"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    iget v0, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->a:I

    const/16 v4, 0x3e9

    if-ne v4, v0, :cond_59

    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_48

    iget-object v1, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nearme/game/sdk/b/a;->onSuccess(Ljava/lang/String;)V

    :cond_48
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/b;

    iget-object v5, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    const-string v6, ""

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/nearme/game/sdk/common/model/biz/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->a(Lcom/nearme/game/sdk/common/model/biz/b;)V

    goto :goto_c6

    :cond_59
    const/16 v4, 0x3ec

    if-ne v4, v0, :cond_77

    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_66

    const-string v1, "cancel"

    invoke-interface {v0, v1, v4}, Lcom/nearme/game/sdk/b/a;->a(Ljava/lang/String;I)V

    :cond_66
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/nearme/game/sdk/common/model/biz/b;

    iget-object v5, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    iget-object v6, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v4, v6}, Lcom/nearme/game/sdk/common/model/biz/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->a(Lcom/nearme/game/sdk/common/model/biz/b;)V

    goto :goto_c6

    :cond_77
    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->b:Lcom/nearme/game/sdk/b/a;

    if-eqz v0, :cond_80

    iget-object v4, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Lcom/nearme/game/sdk/b/a;->a(Ljava/lang/String;I)V

    :cond_80
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v4, Lcom/nearme/game/sdk/common/model/biz/b;

    iget-object v5, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "payBroadcast->"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v1, v6}, Lcom/nearme/game/sdk/common/model/biz/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/nearme/game/sdk/GameCenterSDK;->a(Lcom/nearme/game/sdk/common/model/biz/b;)V

    goto :goto_c6

    :cond_a4
    const-string v1, "nearme.plugin.aciton.notify.cp_sms_pay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    const-string v0, "SMS pay"

    iget-object v1, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->c:Lcom/nearme/game/sdk/b/a;

    const v4, 0xa03bba

    if-eqz v1, :cond_b8

    invoke-interface {v1, v0, v4}, Lcom/nearme/game/sdk/b/a;->a(Ljava/lang/String;I)V

    :cond_b8
    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v1

    new-instance v5, Lcom/nearme/game/sdk/common/model/biz/b;

    iget-object v6, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    invoke-direct {v5, v3, v6, v4, v0}, Lcom/nearme/game/sdk/common/model/biz/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/nearme/game/sdk/GameCenterSDK;->a(Lcom/nearme/game/sdk/common/model/biz/b;)V

    :cond_c6
    :goto_c6
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceive payResponse not null order = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/nearme/platform/opensdk/pay/PayResponse;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_dd
    const-string p2, "onReceive payResponse is null."

    invoke-static {v2, p2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v0, "failed"

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object p1

    new-instance p2, Lcom/nearme/game/sdk/common/model/biz/b;

    iget-object v0, p0, Lcom/nearme/game/sdk/component/PayResultReceiver;->a:Ljava/lang/String;

    const-string v2, "payResponse is null."

    invoke-direct {p2, v3, v0, v1, v2}, Lcom/nearme/game/sdk/common/model/biz/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/nearme/game/sdk/GameCenterSDK;->a(Lcom/nearme/game/sdk/common/model/biz/b;)V

    :cond_fc
    return-void
.end method
