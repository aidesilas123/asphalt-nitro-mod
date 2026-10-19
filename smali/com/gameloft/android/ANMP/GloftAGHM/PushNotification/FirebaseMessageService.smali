###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.FirebaseMessageService (com.gameloft.android.ANMP.GloftAGHM.PushNotification.FirebaseMessageService)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/FirebaseMessageService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FirebaseMessageService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public q(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 13

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_12d

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, p0

    :goto_16
    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/Prefs;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12d

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :try_start_39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_48} :catch_49

    goto :goto_2d

    :catch_49
    nop

    goto :goto_2d

    :cond_4b
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12d

    const-string v1, "subject"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "reply_to"

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "body"

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "url"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_85

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_83

    goto :goto_85

    :cond_83
    :goto_83
    move-object v3, v1

    goto :goto_96

    :cond_85
    :goto_85
    if-eqz v3, :cond_8e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8e

    goto :goto_96

    :cond_8e
    const v1, 0x7f120136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    :goto_96
    if-eqz v4, :cond_9e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a1

    :cond_9e
    const-string v1, "info"

    move-object v4, v1

    :cond_a1
    if-eqz v5, :cond_12d

    invoke-static {v4}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isTypeBlock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    return-void

    :cond_aa
    const-string v1, "play"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    if-eqz v2, :cond_b9

    const-string v1, "friend_id"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    const-string v1, "customIcon"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v2, :cond_cd

    sput-boolean v8, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->d:Z

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->g:Ljava/lang/String;

    goto :goto_d1

    :cond_cd
    sput-boolean v10, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->d:Z

    sput-object v9, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->g:Ljava/lang/String;

    :goto_d1
    const-string v1, "image"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f7

    sput-boolean v8, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->f:Z

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetLocalAsset(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_fb

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->loadMap(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->checkAndRemoveExpiredResouce(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->checkAndRemoveIfReachLimitedResourceAmount(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/PNImageHelper;->saveMap(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetRemoteAsset(Landroid/content/Context;)Z

    goto :goto_fb

    :cond_f7
    sput-boolean v10, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->f:Z

    sput-object v9, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    :cond_fb
    :goto_fb
    const-string v1, "sound"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10c

    sput-boolean v8, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->e:Z

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    goto :goto_110

    :cond_10c
    sput-boolean v10, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->e:Z

    sput-object v9, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    :goto_110
    invoke-static {v0, v5, v4, v7, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    move-object v1, v0

    move-object v2, v5

    move-object v5, v7

    invoke-static/range {v1 .. v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V

    :try_start_11a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.gameloft.android.ANMP.GloftAGHM_pushbroadcast"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "get_broadcast_push"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_12d} :catch_12d

    :catch_12d
    :cond_12d
    return-void
.end method
