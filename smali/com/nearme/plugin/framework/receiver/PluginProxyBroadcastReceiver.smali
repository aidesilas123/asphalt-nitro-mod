###### Class com.nearme.plugin.framework.receiver.PluginProxyBroadcastReceiver (com.nearme.plugin.framework.receiver.PluginProxyBroadcastReceiver)
.class public Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PluginProxyBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Lcom/nearme/plugin/framework/receiver/a;
    .registers 13

    const-string v0, "PLUGIN_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LAUNCH_COMPONENT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v7, 0x0

    :try_start_d
    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_11} :catch_13

    move-object v8, v1

    goto :goto_18

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v7

    :goto_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-static {p1, v8}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    :try_start_33
    invoke-static {p1, v1, v8}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreateClassLoaderByPath(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nearme/plugin/framework/receiver/a;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_41} :catch_4d

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v8

    move-object v4, p0

    :try_start_46
    invoke-interface/range {v1 .. v6}, Lcom/nearme/plugin/framework/receiver/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/ClassLoader;Z)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_5b

    :catch_4a
    move-exception v1

    move-object v7, p1

    goto :goto_4e

    :catch_4d
    move-exception v1

    :goto_4e
    invoke-static {v1}, Lcom/nearme/plugin/framework/LogUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_58

    :cond_53
    const-string p1, "plugin file not exsist!"

    goto :goto_58

    :cond_56
    const-string p1, "Param error!"

    :goto_58
    move-object v9, v7

    move-object v7, p1

    move-object p1, v9

    :goto_5b
    if-eqz v7, :cond_94

    sget-object v1, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginProxyBroadcastReceiver.startPlugin errInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attach info : pluginApk = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", launchReceiver = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", pluginApkFilePath = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9b

    :cond_94
    sget-object p2, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    const-string v0, "PluginProxyBroadcastReceiver start successfully!"

    invoke-static {p2, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9b
    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    sget-boolean v0, Lcom/nearme/plugin/framework/LogUtils;->b:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginProxyBroadcastReceiver.onReceive intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-direct {p0, p1, p2}, Lcom/nearme/plugin/framework/receiver/PluginProxyBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Lcom/nearme/plugin/framework/receiver/a;

    move-result-object v0

    sget-boolean v1, Lcom/nearme/plugin/framework/LogUtils;->b:Z

    if-eqz v1, :cond_32

    sget-object v1, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginProxyBroadcastReceiver.onReceive receiver = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    if-eqz v0, :cond_37

    invoke-interface {v0, p1, p2}, Lcom/nearme/plugin/framework/receiver/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_37
    return-void
.end method
