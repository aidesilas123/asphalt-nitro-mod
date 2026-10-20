###### Class com.nearme.game.sdk.common.z.y (com.nearme.game.sdk.common.z.y)
.class public final Lcom/nearme/game/sdk/common/z/y;
.super Landroid/app/Instrumentation;
.source "ProxyInstrumentationImp.java"


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Z

.field private static d:Z


# instance fields
.field private final e:Lcom/nearme/game/sdk/c/a/a;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Landroid/app/Instrumentation;

.field private j:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nearme/game/sdk/common/z/y;->a:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nearme/game/sdk/common/z/y;->c:Z

    sput-boolean v0, Lcom/nearme/game/sdk/common/z/y;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Instrumentation;Lcom/nearme/game/sdk/c/a/a;)V
    .registers 8

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    iput-object p1, p0, Lcom/nearme/game/sdk/common/z/y;->h:Landroid/content/Context;

    iput-object p2, p0, Lcom/nearme/game/sdk/common/z/y;->i:Landroid/app/Instrumentation;

    :try_start_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "super_key_debug"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    sput-boolean v1, Lcom/nearme/game/sdk/common/z/y;->c:Z

    :cond_33
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "temp_key_file"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_54

    sput-boolean v1, Lcom/nearme/game/sdk/common/z/y;->d:Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_54} :catch_54

    :catch_54
    :cond_54
    iput-object p3, p0, Lcom/nearme/game/sdk/common/z/y;->e:Lcom/nearme/game/sdk/c/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/nearme/game/sdk/common/z/y;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->g:Ljava/lang/String;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_2d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_2d

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nearme/game/sdk/common/z/y;->g:Ljava/lang/String;

    :cond_2d
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->j:Landroid/content/ComponentName;

    const/4 v1, 0x0

    const-string v2, "ProxyInstrumentationImpl"

    if-nez v0, :cond_30

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    move-object p1, v1

    :goto_1b
    iput-object p1, p0, Lcom/nearme/game/sdk/common/z/y;->j:Landroid/content/ComponentName;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "obtainStartInfo cnMain = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->j:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "obtainStartInfo intent.getComponent() = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nearme/game/sdk/common/z/y;->j:Landroid/content/ComponentName;

    if-eqz p1, :cond_9f

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9f

    :try_start_53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string p1, "key_launch_from_ogc"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/nearme/game/sdk/common/z/y;->b:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "obtainStartInfo startFromOgc = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->b:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_73} :catch_74

    goto :goto_8a

    :catch_74
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "obtainStartInfo exception = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8a
    if-eqz v1, :cond_9f

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result p1

    if-nez p1, :cond_9f

    :cond_9c
    invoke-virtual {p2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_9f
    return-void
.end method

.method private c(Landroid/app/Activity;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private static d(Landroid/app/Activity;Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Landroid/app/Activity;Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/nearme/game/sdk/common/z/y;->d(Landroid/app/Activity;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static finishGameActivities()V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/nearme/game/sdk/common/z/y;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/nearme/game/sdk/common/z/y;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v2, "GameCenterSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ProxyInstrumentationImp::finishGameActivities, activity = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_39

    goto :goto_6

    :cond_38
    return-void

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static startFromOgc()Z
    .registers 1

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->b:Z

    return v0
.end method


# virtual methods
.method public final callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/nearme/game/sdk/common/z/y;->d(Landroid/app/Activity;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3b

    sget-object p2, Lcom/nearme/game/sdk/common/z/y;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/nearme/game/sdk/common/z/y;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/nearme/game/sdk/common/z/y;->c(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_3b

    iget-object p2, p0, Lcom/nearme/game/sdk/common/z/y;->e:Lcom/nearme/game/sdk/c/a/a;

    invoke-interface {p2, p1}, Lcom/nearme/game/sdk/c/a/a;->f(Landroid/app/Activity;)V

    sget-boolean p2, Lcom/nearme/game/sdk/common/z/y;->c:Z

    if-eqz p2, :cond_3b

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ProxyInstrumentationImp::callActivityOnCreate, activity = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GameCenterSDK"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public final callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    sget-object v0, Lcom/nearme/game/sdk/common/z/y;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/common/z/y;->d(Landroid/app/Activity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nearme/game/sdk/common/z/y;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/nearme/game/sdk/common/z/y;->c(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->e:Lcom/nearme/game/sdk/c/a/a;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/c/a/a;->d(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->c:Z

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyInstrumentationImp::callActivityOnDestroy, activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameCenterSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public final callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callActivityOnNewIntent intent = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyInstrumentationImpl"

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/nearme/game/sdk/common/z/y;->b(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->i:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public final callActivityOnPause(Landroid/app/Activity;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->d:Z

    const-string v1, "GameCenterSDK"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ProxyInstrumentationImp::callActivityOnPause, activity pkg= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", application pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/common/z/y;->e(Landroid/app/Activity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->e:Lcom/nearme/game/sdk/c/a/a;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/c/a/a;->e(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->c:Z

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ProxyInstrumentationImp::callActivityOnPause, activity = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method public final callActivityOnResume(Landroid/app/Activity;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->d:Z

    const-string v1, "GameCenterSDK"

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ProxyInstrumentationImp::callActivityOnResume, activity pkg= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", application pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/common/z/y;->e(Landroid/app/Activity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->e:Lcom/nearme/game/sdk/c/a/a;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/c/a/a;->c(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->c:Z

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ProxyInstrumentationImp::callActivityOnResume, activity = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method public final callActivityOnStart(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/common/z/y;->e(Landroid/app/Activity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->e:Lcom/nearme/game/sdk/c/a/a;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/c/a/a;->a(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->c:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyInstrumentationImp::callActivityOnStart, activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameCenterSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public final callActivityOnStop(Landroid/app/Activity;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->f:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nearme/game/sdk/common/z/y;->e(Landroid/app/Activity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->e:Lcom/nearme/game/sdk/c/a/a;

    invoke-interface {v0, p1}, Lcom/nearme/game/sdk/c/a/a;->b(Landroid/app/Activity;)V

    sget-boolean v0, Lcom/nearme/game/sdk/common/z/y;->c:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProxyInstrumentationImp::callActivityOnStop, activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameCenterSDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method

.method public final newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newActivity intent = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProxyInstrumentationImpl"

    invoke-static {v1, v0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->h:Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Lcom/nearme/game/sdk/common/z/y;->b(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nearme/game/sdk/common/z/y;->i:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method
