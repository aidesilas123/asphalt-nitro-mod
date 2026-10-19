###### Class com.nearme.game.sdk.component.proxy.ProxyActivity (com.nearme.game.sdk.component.proxy.ProxyActivity)
.class public Lcom/nearme/game/sdk/component/proxy/ProxyActivity;
.super Lcom/nearme/plugin/framework/activity/PluginProxyActivity;
.source "ProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    const-string v0, "oppo_game_service.so"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "ProxyActivity"

    const-string v1, "onCreate:pre"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate:post"

    invoke-static {v0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method
