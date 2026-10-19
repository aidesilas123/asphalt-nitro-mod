###### Class com.gameloft.android.ANMP.GloftAGHM.PushNotification.LocalPushReceiver (com.gameloft.android.ANMP.GloftAGHM.PushNotification.LocalPushReceiver)
.class public Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalPushReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 26

    move-object/from16 v6, p1

    const-string v0, "sound"

    const-string v1, "limit_time"

    const-string v2, "lID"

    const-string v3, "image"

    const-string v4, "url"

    const-string v5, "customIcon"

    const-string v7, "type"

    const-string v8, "subject"

    const-string v9, "body"

    const-string v10, "pn_ddms_flag"

    :try_start_16
    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->Init()V

    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_24f

    const-string v12, "1"

    const-string v13, "pn_alarm_id"

    if-nez v11, :cond_223

    :try_start_29
    const-string v11, "android.intent.action.ACTION_BOOT_COMPLETED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    goto/16 :goto_223

    :cond_37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    if-eqz v10, :cond_24f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".alarm_content"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_222

    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object/from16 v16, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_73
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_db

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v14

    move-object/from16 v14, v21

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8e

    invoke-virtual {v10, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_c4

    :cond_8e
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_99

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto :goto_c4

    :cond_99
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a4

    invoke-virtual {v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c4

    :cond_a4
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_af

    invoke-virtual {v10, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_c4

    :cond_af
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ba

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_c4

    :cond_ba
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c4

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_c4} :catch_24f

    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c8} :catch_d4

    if-eqz v21, :cond_d4

    move-object/from16 v21, v0

    :try_start_cc
    invoke-virtual {v10, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_d3} :catch_d6

    goto :goto_d6

    :catch_d4
    :cond_d4
    move-object/from16 v21, v0

    :catch_d6
    :goto_d6
    move-object/from16 v0, v21

    move-object/from16 v14, v22

    goto :goto_73

    :cond_db
    if-eqz v0, :cond_179

    :try_start_dd
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_179

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v8, 0x9

    if-lt v1, v8, :cond_ff

    if-le v1, v7, :cond_179

    :cond_ff
    if-le v1, v2, :cond_112

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v1, v4

    add-int/2addr v1, v0

    rsub-int v0, v1, 0x7e90

    const v1, 0xa8c0

    add-int/2addr v0, v1

    :goto_110
    int-to-long v0, v0

    goto :goto_11d

    :cond_112
    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v1, v4

    add-int/2addr v1, v0

    rsub-int v0, v1, 0x7e90

    goto :goto_110

    :goto_11d
    const-string v2, "pn_group_ID"

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    if-eqz v2, :cond_131

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_12a} :catch_24f

    if-lez v7, :cond_131

    :try_start_12c
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_130} :catch_131

    goto :goto_132

    :catch_131
    :cond_131
    const/4 v2, -0x1

    :goto_132
    if-eq v2, v4, :cond_143

    if-eqz v3, :cond_141

    :try_start_136
    const-string v4, "launch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    add-int/lit8 v2, v2, -0x65

    goto :goto_143

    :cond_141
    add-int/lit16 v2, v2, -0xc9

    :cond_143
    :goto_143
    if-eqz v5, :cond_164

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_164

    invoke-static {v6, v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->CancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-nez v3, :cond_15c

    new-instance v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-direct {v3, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->c()V

    :cond_15c
    sget-object v3, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {v3, v13, v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->BackupDatabase()V

    :cond_164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, v2}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->SendMessage(Landroid/os/Bundle;Ljava/lang/String;I)I

    return-void

    :cond_179
    if-eqz v3, :cond_24f

    if-eqz v15, :cond_24f

    invoke-static {v3}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->isTypeBlock(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_184

    return-void

    :cond_184
    if-eqz v17, :cond_190

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18d

    goto :goto_190

    :cond_18d
    move-object/from16 v2, v17

    goto :goto_198

    :cond_190
    :goto_190
    const v0, 0x7f120136

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_198
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_1ab

    sput-boolean v4, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->d:Z

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->g:Ljava/lang/String;

    goto :goto_1b0

    :cond_1ab
    sput-boolean v7, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->d:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->g:Ljava/lang/String;

    :goto_1b0
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    sput-boolean v4, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->f:Z

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/RemoteImageManager;->GetLocalAsset(Landroid/content/Context;)Z

    goto :goto_1c9

    :cond_1c4
    sput-boolean v7, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->i:Ljava/lang/String;

    :goto_1c9
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1da

    sput-boolean v4, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->e:Z

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    goto :goto_1df

    :cond_1da
    sput-boolean v7, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->h:Ljava/lang/String;

    :goto_1df
    move-object/from16 v0, v20

    invoke-static {v6, v15, v3, v0, v10}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v15

    move-object v15, v5

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->generateNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V

    if-eqz v15, :cond_20e

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_20e

    invoke-static {v6, v15}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->CancelAlarm(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    if-nez v0, :cond_206

    new-instance v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-direct {v0, v6}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {v0}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->c()V

    :cond_206
    sget-object v0, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->k:Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;

    invoke-virtual {v0, v13, v15}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/SimplifiedAndroidUtils;->BackupDatabase()V

    :cond_20e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.gameloft.android.ANMP.GloftAGHM_pushbroadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "get_broadcast_push"

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_24f

    :cond_222
    return-void

    :cond_223
    :goto_223
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_225} :catch_24f

    :try_start_225
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_24c

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24c

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24c

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->TriggerAlarm(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/lang/Exception; {:try_start_225 .. :try_end_244} :catch_245

    return-void

    :catch_245
    :try_start_245
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24c

    return-void

    :cond_24c
    invoke-static/range {p1 .. p1}, Lcom/gameloft/android/ANMP/GloftAGHM/PushNotification/LocalPushManager;->LoadAlarmInfo(Landroid/content/Context;)V
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_24f} :catch_24f

    :catch_24f
    :cond_24f
    :goto_24f
    return-void
.end method
