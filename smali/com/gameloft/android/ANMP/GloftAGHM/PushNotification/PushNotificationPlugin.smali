###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.PushNotificationPlugin (com.gameloft.android.ANMP.GloftAGHM.PushNotification.PushNotificationPlugin)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PushNotificationPlugin;
.super Ljava/lang/Object;
.source "PushNotificationPlugin.java"

# interfaces
.implements Lcom/gameloft/android/ANMP/GloftAGHM/PackageUtils/d/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPluginStart(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-static {p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->Init(Landroid/app/Activity;)V

    return-void
.end method

.method public onPostNativePause()V
    .registers 1

    return-void
.end method

.method public onPostNativeResume()V
    .registers 9

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->a:Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;

    iget-object v0, v0, Lcom/gameloft/android/ANMP/GloftAGHM/MainActivity;->k:Landroid/content/Intent;

    :try_start_4
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "subject"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    const-string v7, "title"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    :cond_30
    sget-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3a
    const-string v7, "pn_launch_game"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_50

    sget-object v2, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->l:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_50
    const-string v7, "id"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    const/4 v3, 0x1

    :cond_59
    const-string v7, "pn_group_ID"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v4, 0x1

    goto :goto_13

    :cond_63
    if-ltz v2, :cond_6a

    if-eqz v3, :cond_6a

    if-nez v4, :cond_6a

    const/4 v6, 0x2

    :cond_6a
    invoke-static {v6, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->nativeSendPNDataToTracking(ILjava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6d} :catch_6d

    :catch_6d
    return-void
.end method

.method public onPreNativePause()V
    .registers 1

    return-void
.end method

.method public onPreNativeResume()V
    .registers 2

    sget-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->a:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->nativeResetPNDataTracking()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->a:Z

    :cond_a
    return-void
.end method
