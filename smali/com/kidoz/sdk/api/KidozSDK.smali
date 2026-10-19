###### Class com.kidoz.sdk.api.KidozSDK (com.kidoz.sdk.api.KidozSDK)
.class public final Lcom/kidoz/sdk/api/KidozSDK;
.super Ljava/lang/Object;
.source "KidozSDK.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KidozSDK"

.field private static isDeveloperLoggingON:Z = false

.field private static isInitialized:Z = false

.field private static mAppId:Ljava/lang/String; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mMediationType:Ljava/lang/String; = "none"

.field private static mPublisherId:Ljava/lang/String;

.field private static mSecurityKey:Ljava/lang/String;

.field private static sGeneralSDKEventObj:Lcom/kidoz/events/c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    sput-boolean p0, Lcom/kidoz/sdk/api/KidozSDK;->isInitialized:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    sget-boolean v0, Lcom/kidoz/sdk/api/KidozSDK;->isDeveloperLoggingON:Z

    return v0
.end method

.method private static getApiManager(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->mPublisherId:Ljava/lang/String;

    sget-object v1, Lcom/kidoz/sdk/api/KidozSDK;->mSecurityKey:Ljava/lang/String;

    sget-boolean v2, Lcom/kidoz/sdk/api/KidozSDK;->isDeveloperLoggingON:Z

    invoke-static {p0, v0, v1, v2}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->getSdkApiInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    move-result-object p0

    return-object p0
.end method

.method public static getAppId()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAuthToken()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->mSecurityKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getPublisherID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->mPublisherId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "9.0.1"

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sput-object p3, Lcom/kidoz/sdk/api/KidozSDK;->mAppId:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/kidoz/sdk/api/KidozSDK;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-string v1, "last_session_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/kidoz/sdk/api/KidozSDK;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Application;

    invoke-static {v2}, Lcom/kidoz/sdk/api/KidozSDK;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V

    const-string v2, "PUBLISHER_ID"

    invoke-static {v0, v2, v9}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->saveStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/kidoz/sdk/api/KidozSDK;->mPublisherId:Ljava/lang/String;

    sput-object v10, Lcom/kidoz/sdk/api/KidozSDK;->mSecurityKey:Ljava/lang/String;

    sget-object v11, Lcom/kidoz/sdk/api/KidozSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/kidoz/sdk/api/KidozSDK;->isInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static/range {p0 .. p2}, Lcom/kidoz/sdk/api/KidozSDK;->validateParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CT validateParameters time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    long-to-double v3, v3

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v14

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v8, " seconds"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Lcom/kidoz/sdk/api/KidozSDK;->notifyUserUsingDemoPublisherID(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CT notifyUserUsingDemoPublisherID time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    long-to-double v3, v3

    div-double/2addr v3, v14

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CT checkManifestDeclarations time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    long-to-double v3, v3

    div-double/2addr v3, v14

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_9f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CT getGoogleAdvertisingID time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    long-to-double v3, v3

    div-double/2addr v3, v14

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/kidoz/sdk/api/general/utils/Utils;->preInitiate(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CT preInitiate time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    long-to-double v3, v3

    div-double/2addr v3, v14

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "events_shared_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CT SharedPreferences time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v12

    long-to-double v5, v5

    div-double/2addr v5, v14

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "DeveloperID"

    invoke-virtual {v1, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "log_level"

    sget v5, Lcom/kidoz/events/EventManager;->b:I

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "SessionID"

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kidoz/events/EventManager;->e(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v6, "Session"

    const-string v7, "Session Start"

    move-object/from16 v2, p0

    move-object/from16 v16, v8

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/kidoz/sdk/api/KidozSDK;->isInitialized:Z

    if-eqz v1, :cond_15f

    invoke-static/range {p0 .. p0}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v6, "SDK"

    const-string v7, "SDK Already Initiated"

    move-object/from16 v2, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :cond_15f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CT EventManager time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    long-to-double v2, v2

    div-double/2addr v2, v14

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v3, Lcom/kidoz/sdk/api/general/utils/StorageLife;->SESSION:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {v0, v1, v3}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->resetStorage(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V

    sget-boolean v1, Lcom/kidoz/sdk/api/KidozSDK;->isDeveloperLoggingON:Z

    invoke-static {v0, v9, v10, v1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/MemoryManager;->init()V

    invoke-static/range {p0 .. p1}, Lcom/kidoz/sdk/api/KidozSDK;->validateSDK(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CT initialize time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v12

    long-to-double v3, v3

    div-double/2addr v3, v14

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_1ae} :catch_1af

    goto :goto_1ca

    :catch_1af
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/KidozSDK;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to init SDK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1ca
    return-void
.end method

.method public static isInitialised()Z
    .registers 1

    sget-boolean v0, Lcom/kidoz/sdk/api/KidozSDK;->isInitialized:Z

    return v0
.end method

.method private static notifyUserUsingDemoPublisherID(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->TAG:Ljava/lang/String;

    const-string v1, "notifyUserUsingDemoPublisherID"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_52

    :cond_1f
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_2f

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/kidoz/sdk/api/KidozSDK$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/KidozSDK$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_52

    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notice ! You are using Demo PUBLISHER ID ! , Package Name :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object p0

    goto :goto_48

    :cond_44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-void
.end method

.method private static registerActivityLifecycleCallbacks(Landroid/app/Application;)V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/KidozSDK$2;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/KidozSDK$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/kidoz/sdk/api/KidozSDK;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public static setExtension(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "unity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1a

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1a
    sput-object p0, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->EXTENSION_TYPE:Ljava/lang/String;

    sput-object p1, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->EXTENSION_VERSION:Ljava/lang/String;

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .registers 1

    sput-boolean p0, Lcom/kidoz/sdk/api/KidozSDK;->isDeveloperLoggingON:Z

    return-void
.end method

.method public static setSDKListener(Lcom/kidoz/sdk/api/interfaces/SDKEventListener;)V
    .registers 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/KidozSDK;->sGeneralSDKEventObj:Lcom/kidoz/events/c;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->i(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lcom/kidoz/events/c;

    invoke-direct {v0}, Lcom/kidoz/events/c;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/KidozSDK;->sGeneralSDKEventObj:Lcom/kidoz/events/c;

    invoke-virtual {v0, p0}, Lcom/kidoz/events/c;->a(Lcom/kidoz/sdk/api/interfaces/SDKEventListener;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->sGeneralSDKEventObj:Lcom/kidoz/events/c;

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->o(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method private static validateParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->TAG:Ljava/lang/String;

    const-string v1, "validateParameters"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_2f

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0x30

    if-gt p0, p2, :cond_27

    const-string p0, "Invalid publisher id! Please check you publisher id.."

    if-eqz p1, :cond_21

    :try_start_17
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid Security Token! Please recheck you security token.."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Context can\'t be null!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateSDK(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/kidoz/sdk/api/KidozSDK;->TAG:Ljava/lang/String;

    const-string v1, "validateSDK"

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p0, :cond_53

    :try_start_d
    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getSdkStyleVersion()I

    move-result v2

    sput v2, Lcom/kidoz/events/EventManager;->c:I

    :cond_1d
    invoke-static {p0}, Lcom/kidoz/sdk/api/KidozSDK;->getApiManager(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    move-result-object v2

    new-instance v3, Lcom/kidoz/sdk/api/KidozSDK$3;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/kidoz/sdk/api/KidozSDK$3;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v2, p0, v3}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->initSdk(Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_29} :catch_2a

    goto :goto_53

    :catch_2a
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/KidozSDK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when trying to validateSDK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object p1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_VALIDATION_EXCEPTION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_53
    :goto_53
    return-void
.end method

###### Class com.kidoz.sdk.api.KidozSDK.AnonymousClass1 (com.kidoz.sdk.api.KidozSDK$1)
.class Lcom/kidoz/sdk/api/KidozSDK$1;
.super Ljava/lang/Object;
.source "KidozSDK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/KidozSDK;->notifyUserUsingDemoPublisherID(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/KidozSDK$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/KidozSDK$1;->val$context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notice ! You are using Demo PUBLISHER ID ! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_17
    iget-object v2, p0, Lcom/kidoz/sdk/api/KidozSDK$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

###### Class com.kidoz.sdk.api.KidozSDK.AnonymousClass2 (com.kidoz.sdk.api.KidozSDK$2)
.class Lcom/kidoz/sdk/api/KidozSDK$2;
.super Ljava/lang/Object;
.source "KidozSDK.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/KidozSDK;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/MemoryManager;->onActivityDestroyed(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.sdk.api.KidozSDK.AnonymousClass3 (com.kidoz.sdk.api.KidozSDK$3)
.class Lcom/kidoz/sdk/api/KidozSDK$3;
.super Ljava/lang/Object;
.source "KidozSDK.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/KidozSDK;->validateSDK(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
        "Lcom/kidoz/sdk/api/general/utils/PropertiesObj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$publisher_id:Ljava/lang/String;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/kidoz/sdk/api/KidozSDK$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/KidozSDK$3;->val$publisher_id:Ljava/lang/String;

    iput-wide p3, p0, Lcom/kidoz/sdk/api/KidozSDK$3;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_NO_SERVER_RESULT:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public onServerResult(Lcom/kidoz/sdk/api/server_connect/ResultData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getResponseStatus()Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getResponseStatus()Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->getIsSuccessful()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getShouldEnableChromeDebug()Z

    move-result v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->setDGM(Z)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getSdkStyleVersion()I

    move-result v0

    sput v0, Lcom/kidoz/events/EventManager;->c:I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGPSFeedApiDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->updateDomain(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getWaterfallDomain()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->updateWaterfallDomain(Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->insertAppProperties(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/KidozSDK$3;->val$context:Landroid/content/Context;

    new-instance v0, Lcom/kidoz/sdk/api/KidozSDK$3$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/KidozSDK$3$1;-><init>(Lcom/kidoz/sdk/api/KidozSDK$3;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->parseStyleAsync(Landroid/content/Context;Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;)V

    :cond_53
    return-void
.end method

###### Class com.kidoz.sdk.api.KidozSDK.AnonymousClass3.AnonymousClass1 (com.kidoz.sdk.api.KidozSDK$3$1)
.class Lcom/kidoz/sdk/api/KidozSDK$3$1;
.super Ljava/lang/Object;
.source "KidozSDK.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/KidozSDK$3;->onServerResult(Lcom/kidoz/sdk/api/server_connect/ResultData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/KidozSDK$3;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/KidozSDK$3;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/KidozSDK$3$1;->this$0:Lcom/kidoz/sdk/api/KidozSDK$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseFinished(Z)V
    .registers 10

    if-eqz p1, :cond_64

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/kidoz/sdk/api/KidozSDK;->access$002(Z)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/KidozSDK$3$1;->this$0:Lcom/kidoz/sdk/api/KidozSDK$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/KidozSDK$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object p1, p0, Lcom/kidoz/sdk/api/KidozSDK$3$1;->this$0:Lcom/kidoz/sdk/api/KidozSDK$3;

    iget-object v1, p1, Lcom/kidoz/sdk/api/KidozSDK$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/kidoz/events/EventManager;->a:I

    iget-object v7, p1, Lcom/kidoz/sdk/api/KidozSDK$3;->val$publisher_id:Ljava/lang/String;

    const-string v5, "SDK"

    const-string v6, "SDK Init"

    invoke-virtual/range {v0 .. v7}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {p1, v0}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    sget-object p1, Lcom/kidoz/sdk/api/KidozSDK;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CT validateSDK time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/kidoz/sdk/api/KidozSDK$3$1;->this$0:Lcom/kidoz/sdk/api/KidozSDK$3;

    iget-wide v3, v3, Lcom/kidoz/sdk/api/KidozSDK$3;->val$startTime:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->access$100()Z

    move-result p1

    if-eqz p1, :cond_72

    const-string p1, "Kidoz SDK has been successfully Initialized !"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    goto :goto_72

    :cond_64
    new-instance p1, Lcom/kidoz/sdk/api/general/EventMessage;

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->INIT_SDK_FAIL_STYLE_PARSER:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-direct {p1, v0}, Lcom/kidoz/sdk/api/general/EventMessage;-><init>(Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->k(Ljava/lang/Object;)V

    :cond_72
    :goto_72
    return-void
.end method
