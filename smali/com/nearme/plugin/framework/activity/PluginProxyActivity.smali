###### Class com.nearme.plugin.framework.activity.PluginProxyActivity (com.nearme.plugin.framework.activity.PluginProxyActivity)
.class public abstract Lcom/nearme/plugin/framework/activity/PluginProxyActivity;
.super Landroid/app/Activity;
.source "PluginProxyActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/nearme/plugin/framework/activity/a;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_23

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/MotionEvent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "dispatchTouchEvent"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_23
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/nearme/plugin/framework/activity/a;->c()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_42

    :try_start_7
    sget-object v0, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_10

    if-eqz p3, :cond_10

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_10
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Landroid/content/Intent;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    aput-object p3, v3, v8

    invoke-static {v0, v1, v2, v4, v3}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    return-void
.end method

.method public onBackPressed()V
    .registers 6

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_21

    :try_start_a
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "onBackPressed"

    new-array v4, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v4, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "noteStateNotSaved"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_36} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_36} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_36} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_36} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_37

    goto :goto_4f

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f

    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_4f

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4f

    :catch_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4f

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_4f
    :try_start_4f
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_52
    .catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PluginProxyActivity onCreate intent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    move-object v0, p1

    goto :goto_2b

    :cond_1c
    if-eqz v0, :cond_2a

    sget-object v2, Lcom/nearme/plugin/framework/PluginStatic;->a:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_25

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    :cond_25
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    :goto_2b
    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    const-string v3, "PLUGIN_NAME"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    const-string v3, "LAUNCH_COMPONENT"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    const-string v3, "USE_HOST_RESOURCES"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PluginProxyActivity onCreate activity name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    :try_start_5b
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    nop

    :goto_65
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11a

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto/16 :goto_11a

    :cond_77
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_117

    const/4 v0, 0x1

    :try_start_85
    iget-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreatePkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a5

    iget-object v3, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_a2

    array-length v4, v3

    if-nez v4, :cond_9b

    goto :goto_a2

    :cond_9b
    aget-object v3, v3, v2

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    goto :goto_a5

    :cond_a2
    :goto_a2
    const-string v3, "Activity Not Found!"

    goto :goto_ea

    :cond_a5
    :goto_a5
    iget-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-static {p0, v8, v3}, Lcom/nearme/plugin/framework/PluginStatic;->getOrCreateClassLoaderByPath(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/nearme/plugin/framework/activity/a;

    iput-object v4, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    iget-object v5, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    iget v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    if-ne v3, v0, :cond_c9

    const/4 v9, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v9, 0x0

    :goto_ca
    move-object v6, p0

    invoke-interface/range {v4 .. v9}, Lcom/nearme/plugin/framework/activity/a;->b(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;Z)V

    iget-object v3, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    const-class v4, Landroid/app/Activity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setIntent"

    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Landroid/content/Intent;

    aput-object v7, v6, v2

    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_ea
    if-nez v3, :cond_11c

    iget-object v4, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    invoke-interface {v4}, Lcom/nearme/plugin/framework/activity/a;->a()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_f4} :catch_111

    :try_start_f4
    iget-object v4, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    const-class v5, Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onCreate"

    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Landroid/os/Bundle;

    aput-object v8, v7, v2

    new-array v8, v0, [Ljava/lang/Object;

    aput-object p1, v8, v2

    invoke-static {v4, v5, v6, v7, v8}, Lcom/nearme/plugin/framework/o_b;->o_a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_10b} :catch_10d

    const/4 v2, 0x1

    goto :goto_11c

    :catch_10d
    move-exception v2

    move-object v0, v2

    const/4 v2, 0x1

    goto :goto_112

    :catch_111
    move-exception v0

    :goto_112
    invoke-static {v0}, Lcom/nearme/plugin/framework/LogUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    goto :goto_11c

    :cond_117
    const-string v3, "plugin file not exsist!"

    goto :goto_11c

    :cond_11a
    :goto_11a
    const-string v3, "Param error!"

    :cond_11c
    :goto_11c
    if-nez v2, :cond_125

    :try_start_11e
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    :try_end_121
    .catch Landroid/app/Fragment$InstantiationException; {:try_start_11e .. :try_end_121} :catch_122

    goto :goto_125

    :catch_122
    invoke-super {p0, v1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :cond_125
    :goto_125
    if-eqz v3, :cond_167

    sget-object p1, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginProxyActivity.onCreate startPlugin errInfo = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attach info : mPluginName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPluginActivityName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPluginApkFilePath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_167
    sget-object p1, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    const-string v0, "PluginProxyActivity start successfully!"

    invoke-static {p1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_23

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/Menu;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "onCreateOptionsMenu"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_1f

    :try_start_7
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4, v3}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    :cond_1f
    sget-object v0, Lcom/nearme/plugin/framework/LogUtils;->a:Ljava/lang/String;

    const-string v1, "PluginProxyActivity onDestroy"

    invoke-static {v0, v1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    aput-object p2, v3, v6

    const-string v1, "onKeyDown"

    invoke-static {v0, v2, v1, v4, v3}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2d
    if-nez v1, :cond_33

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_33
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne v0, p1, :cond_9

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 10

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_26

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/view/MenuItem;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    aput-object p2, v2, v6

    const-string v4, "onMenuItemSelected"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_28

    const-string v0, "CLEAR_TOP"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    const-class v2, Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string p1, "onNewIntent"

    invoke-static {v0, v2, p1, v4, v3}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_23

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/MenuItem;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "onOptionsItemSelected"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_23
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_17

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "onPause"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_23

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/Menu;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "onPrepareOptionsMenu"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_23
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestPermissionsResult requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginProxyActivity"

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_41

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, [Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, [I

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    const-string p1, "onRequestPermissionsResult"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_41
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_1e

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string v4, "onRestoreInstanceState"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    const-string v0, "PLUGIN_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    const-string v0, "LAUNCH_COMPONENT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    const-string v0, "USE_HOST_RESOURCES"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    return-void
.end method

.method protected onResume()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_17

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "onResume"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_1b

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string v4, "onSaveInstanceState"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->d:Ljava/lang/String;

    const-string v1, "PLUGIN_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->e:Ljava/lang/String;

    const-string v1, "LAUNCH_COMPONENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->b:I

    const-string v1, "USE_HOST_RESOURCES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_17

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "onStart"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method protected onStop()V
    .registers 6

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_17

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "onStop"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_23

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/MotionEvent;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const-string p1, "dispatchTouchEvent"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_23
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onUserInteraction()V
    .registers 6

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_15

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "onUserInteraction"

    invoke-static {v0, v1, v4, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a:Lcom/nearme/plugin/framework/activity/a;

    if-eqz v0, :cond_22

    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    const-string p1, "onWindowFocusChanged"

    invoke-static {v0, v1, p1, v3, v2}, Lcom/nearme/plugin/framework/o_b;->o_b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 6

    const-string v0, "PARAM_START_PLUGIN_INTERNAL_ACTIVITIE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/nearme/plugin/framework/activity/PluginProxyActivity;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PLUGIN_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
