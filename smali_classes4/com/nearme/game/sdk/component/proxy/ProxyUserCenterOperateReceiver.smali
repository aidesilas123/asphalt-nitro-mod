###### Class com.nearme.game.sdk.component.proxy.ProxyUserCenterOperateReceiver (com.nearme.game.sdk.component.proxy.ProxyUserCenterOperateReceiver)
.class public Lcom/nearme/game/sdk/component/proxy/ProxyUserCenterOperateReceiver;
.super Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;
.source "ProxyUserCenterOperateReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive action = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyUserCenterOperateReceiver"

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLUGIN_NAME"

    const-string v1, "oppo_game_service.so"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "LAUNCH_COMPONENT"

    const-string v1, "com.oppo.usercenter.sdk.helper.UserCenterOperateReceiver"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-super {p0, p1, p2}, Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
