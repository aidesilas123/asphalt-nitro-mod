###### Class com.nearme.plugin.framework.service.PluginProxyService (com.nearme.plugin.framework.service.PluginProxyService)
.class public abstract Lcom/nearme/plugin/framework/service/PluginProxyService;
.super Landroid/app/Service;
.source "PluginProxyService.java"


# instance fields
.field private a:Lcom/nearme/plugin/framework/service/a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Intent;)Z
    .registers 17

    move-object v9, p0

    move-object/from16 v1, p1

    const-string v2, "PluginProxyService"

    const/4 v3, 0x0

    if-nez v1, :cond_e

    const-string v0, "startPlugin::intent is empty"

    invoke-static {v2, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_e
    const-string v0, "LOG_ENABLE"

    const/4 v10, 0x1

    invoke-virtual {v1, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "LOG_TAG"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/nearme/plugin/framework/LogUtils;->logInit(ZLjava/lang/String;)V

    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PluginProxyService.startPlugin intent = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PLUGIN_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "LAUNCH_COMPONENT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    :try_start_3e
    invoke-static {p0, v11}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_42} :catch_44

    move-object v14, v0

    goto :goto_4a

    :catch_44
    move-exception v0

    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v14, v13

    :goto_4a
    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    if-eqz v0, :cond_60

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->e:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    return v10

    :cond_5f
    return v3

    :cond_60
    iput-object v14, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    iput-object v11, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    iput-object v12, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->e:Ljava/lang/String;

    const-string v0, "USE_HOST_RESOURCES"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->b:I

    const-string v0, "PARAM_COMM_ACT_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->f:Ljava/lang/String;

    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7d

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_7d
    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_dc

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_dc

    :cond_8e
    new-instance v0, Ljava/io/File;

    iget-object v1, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9e

    const-string v13, "plugin file not exsist!"

    goto :goto_de

    :cond_9e
    :try_start_9e
    const-string v0, "initPlugin"

    invoke-static {v2, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    invoke-static {p0, v6, v0}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreateClassLoaderByPath(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->e:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/nearme/plugin/framework/service/a;

    iput-object v1, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    iget-object v2, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->c:Ljava/lang/String;

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->d:Ljava/lang/String;

    iget v4, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->b:I

    if-ne v4, v10, :cond_c8

    const/4 v7, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v7, 0x0

    :goto_c9
    iget-object v8, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->f:Ljava/lang/String;

    move-object v3, v0

    move-object v4, p0

    invoke-interface/range {v1 .. v8}, Lcom/nearme/plugin/framework/service/a;->g(Ljava/lang/String;Ljava/lang/String;Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;ZLjava/lang/String;)V

    iget-object v0, v9, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    invoke-interface {v0}, Lcom/nearme/plugin/framework/service/a;->a()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_d5} :catch_d6

    goto :goto_de

    :catch_d6
    move-exception v0

    invoke-static {v0}, Lcom/nearme/plugin/framework/LogUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    goto :goto_de

    :cond_dc
    :goto_dc
    const-string v13, "Param missing!"

    :goto_de
    if-eqz v13, :cond_117

    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PluginProxyService.startPlugin errInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach info : pluginName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", launchService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pluginApkFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11e

    :cond_117
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    const-string v1, "PluginProxyService start successfully!"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11e
    return v10
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-boolean v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    invoke-interface {v0, p1}, Lcom/nearme/plugin/framework/service/a;->d(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1e

    :cond_b
    invoke-direct {p0, p1}, Lcom/nearme/plugin/framework/service/PluginProxyService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    if-eqz v0, :cond_1d

    invoke-interface {v0, p1}, Lcom/nearme/plugin/framework/service/a;->d(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/nearme/plugin/framework/service/a;->c()V

    :cond_7
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/nearme/plugin/framework/service/PluginProxyService;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    if-eqz v0, :cond_10

    invoke-interface {v0, p1, p2}, Lcom/nearme/plugin/framework/service/a;->e(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    :cond_10
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartCommand::startPluginSuccess = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginProxyService"

    invoke-static {v2, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    if-eqz v1, :cond_24

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/nearme/plugin/framework/service/a;->f(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_35

    :cond_24
    invoke-direct {p0, p1}, Lcom/nearme/plugin/framework/service/PluginProxyService;->b(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    if-eqz v1, :cond_35

    invoke-interface {v1, p1, p2, p3}, Lcom/nearme/plugin/framework/service/a;->f(Landroid/content/Intent;II)I

    move-result v0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->g:Z

    :cond_35
    :goto_35
    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Lcom/nearme/plugin/framework/service/PluginProxyService;->a:Lcom/nearme/plugin/framework/service/a;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/nearme/plugin/framework/service/a;->b(Landroid/content/Intent;)Z

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 6

    const-string v0, "PARAM_START_PLUGIN_INTERNAL_ACTIVITIE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startActivity::internal = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginProxyService"

    invoke-static {v2, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getPluginName() = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nearme/plugin/framework/service/PluginProxyService;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nearme/plugin/framework/service/PluginProxyService;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLUGIN_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_43
    invoke-super {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
