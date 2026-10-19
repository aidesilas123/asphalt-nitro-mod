###### Class com.kidoz.events.EventManager (com.kidoz.events.EventManager)
.class public Lcom/kidoz/events/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1

.field public static c:I

.field private static d:Lcom/kidoz/events/EventManager;

.field private static e:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;


# instance fields
.field private f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/kidoz/events/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kidoz/events/EventManager;->i:Landroid/util/SparseArray;

    return-void
.end method

.method private b(Lcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    if-eqz p2, :cond_7

    const-string v0, "Category"

    invoke-virtual {p1, v0, p2}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_e

    const-string p2, "Action"

    invoke-virtual {p1, p2, p3}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-eqz p4, :cond_15

    const-string p2, "Label"

    invoke-virtual {p1, p2, p4}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-wide p2, p0, Lcom/kidoz/events/EventManager;->g:J

    const-string p4, "SessionID"

    invoke-virtual {p1, p4, p2, p3}, Lcom/kidoz/events/a;->c(Ljava/lang/String;J)V

    if-eqz p5, :cond_23

    const-string p2, "WidgetType"

    invoke-virtual {p1, p2, p5}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    if-eqz p6, :cond_2a

    const-string p2, "StyleId"

    invoke-virtual {p1, p2, p6}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SdkVersion"

    invoke-virtual {p1, p3, p2}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_141

    :try_start_7
    iget-object v1, p0, Lcom/kidoz/events/EventManager;->h:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_9} :catch_128

    const-string v2, "DeveloperID"

    const/4 v3, 0x0

    if-nez v1, :cond_1c

    :try_start_e
    const-string v1, "events_shared_preferences"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kidoz/events/EventManager;->h:Ljava/lang/String;

    :cond_1c
    const-string v1, "UserRefferal"

    iget-object v4, p0, Lcom/kidoz/events/EventManager;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "PackageID"

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    :cond_30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_34
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v4, "AppVersion"

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "AppID"

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5b

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_61

    :cond_5b
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_61
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kidoz/events/EventManager;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "EventVersion"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "DeviceType"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DeviceBrand"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DeviceModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ScreenType"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ScreenSize"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getDeviceScreenSizeInInches(Landroid/content/Context;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const-string v1, "DpiFactor"

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ScreenW"

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ScreenH"

    invoke-static {p1, v3}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "OsType"

    const-string v1, "Android"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "OsVersion"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "DeviceLang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "TimeZone"

    invoke-static {}, Lcom/kidoz/events/EventParameters;->getCurrentTimezoneOffset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "EventType"

    const-string v1, "Device Info"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "SdkVersion"

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_127} :catch_128

    goto :goto_141

    :catch_128
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to create device params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_141
    :goto_141
    return-object v0
.end method

.method private d()Landroid/os/Handler;
    .registers 3

    sget-object v0, Lcom/kidoz/events/EventManager;->e:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    if-nez v0, :cond_f

    new-instance v0, Lcom/kidoz/events/EventManager$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kidoz/events/EventManager$a;-><init>(Lcom/kidoz/events/EventManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/kidoz/events/EventManager;->e:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    :cond_f
    sget-object v0, Lcom/kidoz/events/EventManager;->e:Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    return-object v0
.end method

.method private declared-synchronized f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/kidoz/events/EventManager;->f:I

    if-gt p4, v0, :cond_31

    if-nez p5, :cond_c

    new-instance p5, Lcom/kidoz/events/a;

    invoke-direct {p5}, Lcom/kidoz/events/a;-><init>()V

    :cond_c
    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object v3, p7

    move-object v4, p8

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/kidoz/events/EventManager;->b(Lcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_34

    :try_start_16
    new-instance p2, Lcom/kidoz/events/EventBulk;

    invoke-direct {p2}, Lcom/kidoz/events/EventBulk;-><init>()V

    invoke-direct {p0, p1}, Lcom/kidoz/events/EventManager;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/kidoz/events/EventBulk;->c(Lorg/json/JSONObject;)V

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p3}, Lcom/kidoz/events/EventBulk;->d(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, p2}, Lcom/kidoz/events/EventManager;->p(Landroid/content/Context;Lcom/kidoz/events/EventBulk;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_31} :catch_31
    .catchall {:try_start_16 .. :try_end_31} :catchall_34

    :catch_31
    :cond_31
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;
    .registers 3

    sget-object v0, Lcom/kidoz/events/EventManager;->d:Lcom/kidoz/events/EventManager;

    if-nez v0, :cond_f

    new-instance v0, Lcom/kidoz/events/EventManager;

    invoke-direct {v0}, Lcom/kidoz/events/EventManager;-><init>()V

    sput-object v0, Lcom/kidoz/events/EventManager;->d:Lcom/kidoz/events/EventManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/kidoz/events/EventManager;->e(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_f
    sget-object p0, Lcom/kidoz/events/EventManager;->d:Lcom/kidoz/events/EventManager;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/kidoz/events/EventManager;
    .registers 3

    sget-object v0, Lcom/kidoz/events/EventManager;->d:Lcom/kidoz/events/EventManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/kidoz/events/EventManager;

    invoke-direct {v0}, Lcom/kidoz/events/EventManager;-><init>()V

    sput-object v0, Lcom/kidoz/events/EventManager;->d:Lcom/kidoz/events/EventManager;

    invoke-virtual {v0, p0, p1}, Lcom/kidoz/events/EventManager;->e(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_e
    sget-object p0, Lcom/kidoz/events/EventManager;->d:Lcom/kidoz/events/EventManager;

    return-object p0
.end method

.method private p(Landroid/content/Context;Lcom/kidoz/events/EventBulk;)V
    .registers 5

    invoke-direct {p0}, Lcom/kidoz/events/EventManager;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/events/EventManager$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/events/EventManager$b;-><init>(Lcom/kidoz/events/EventManager;Landroid/content/Context;Lcom/kidoz/events/EventBulk;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 18

    new-instance v5, Lcom/kidoz/events/a;

    invoke-direct {v5}, Lcom/kidoz/events/a;-><init>()V

    const-string v0, "intField"

    move/from16 v1, p8

    invoke-virtual {v5, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 8

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getDeviceReferral(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/events/EventManager;->j:Ljava/lang/String;

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "PROPERTY_APPLICATION_REFFERAL"

    const-string v2, "string"

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1d
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/events/EventManager;->j:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    const-string v0, "events_shared_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, ""

    const-string v2, "DeveloperID"

    const-string v3, "log_level"

    if-eqz p2, :cond_61

    :try_start_38
    sget v4, Lcom/kidoz/events/EventManager;->a:I

    invoke-virtual {p2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/kidoz/events/EventManager;->f:I

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/events/EventManager;->h:Ljava/lang/String;

    const-string v0, "SessionID"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/kidoz/events/EventManager;->g:J

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget p2, p0, Lcom/kidoz/events/EventManager;->f:I

    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/kidoz/events/EventManager;->h:Ljava/lang/String;

    invoke-interface {p1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_73

    :cond_61
    sget p2, Lcom/kidoz/events/EventManager;->a:I

    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/kidoz/events/EventManager;->f:I

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/events/EventManager;->h:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/kidoz/events/EventManager;->g:J

    :goto_73
    const-string p1, "init Event manager"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printInfoLog(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_78} :catch_79

    goto :goto_92

    :catch_79
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error on EventManager init "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_92
    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 17

    new-instance v5, Lcom/kidoz/events/a;

    invoke-direct {v5}, Lcom/kidoz/events/a;-><init>()V

    const-string v0, "ItemID"

    move-object v1, p6

    invoke-virtual {v5, v0, p6}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ItemIndex"

    move/from16 v1, p7

    invoke-virtual {v5, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    sget v4, Lcom/kidoz/events/EventManager;->b:I

    const-string v6, "Content Click"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 17

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15

    :try_start_0
    iget-object v0, p0, Lcom/kidoz/events/EventManager;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/kidoz/events/a;

    if-eqz v6, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6}, Lcom/kidoz/events/a;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    const-string v0, "Duration"

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    invoke-virtual {v6}, Lcom/kidoz/events/a;->g()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/kidoz/events/EventManager;->i:Landroid/util/SparseArray;

    invoke-virtual {p1, p4}, Landroid/util/SparseArray;->remove(I)V

    :cond_2d
    const-string p1, "activity end event called"

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printInfoLog(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_4c

    :catch_33
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error on EventManager logEventWithDuration "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_4c
    const/4 p1, 0x0

    return p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 17

    :try_start_0
    new-instance v0, Lcom/kidoz/events/a;

    invoke-direct {v0}, Lcom/kidoz/events/a;-><init>()V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/kidoz/events/EventManager;->b(Lcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ItemID"

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p3

    invoke-virtual {v0, p3}, Lcom/kidoz/events/a;->h(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_24

    move-object v1, p0

    :try_start_1b
    iget-object v2, v1, Lcom/kidoz/events/EventManager;->i:Landroid/util/SparseArray;

    move v3, p4

    invoke-virtual {v2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_21} :catch_22

    goto :goto_3e

    :catch_22
    move-exception v0

    goto :goto_26

    :catch_24
    move-exception v0

    move-object v1, p0

    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error on EventManager logEventWithDuration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_3e
    const/4 v0, 0x0

    return v0
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 18

    :try_start_0
    new-instance v6, Lcom/kidoz/events/a;

    invoke-direct {v6}, Lcom/kidoz/events/a;-><init>()V

    const-string v0, "ItemID"

    move-object/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ItemIndex"

    move/from16 v1, p7

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v7, "Organic Content"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_22

    const/4 v0, 0x0

    return v0

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on EventManager logImpressionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 18

    :try_start_0
    new-instance v6, Lcom/kidoz/events/a;

    invoke-direct {v6}, Lcom/kidoz/events/a;-><init>()V

    const-string v0, "ItemID"

    move-object/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdvertiserID"

    move-object v1, p5

    invoke-virtual {v6, v0, p5}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ItemIndex"

    move/from16 v1, p7

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v7, "Sponsored Content"

    const-string v8, "Click"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    const/4 v0, 0x0

    return v0

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on EventManager logImpressionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 19

    :try_start_0
    new-instance v6, Lcom/kidoz/events/a;

    invoke-direct {v6}, Lcom/kidoz/events/a;-><init>()V

    const-string v0, "ItemID"

    move-object/from16 v1, p7

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdvertiserID"

    move-object/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ItemIndex"

    move/from16 v1, p8

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v7, "Sponsored Content"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    const/4 v0, 0x0

    return v0

    :catch_29
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on EventManager logImpressionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 21

    if-nez p4, :cond_9

    :try_start_2
    new-instance v0, Lcom/kidoz/events/a;

    invoke-direct {v0}, Lcom/kidoz/events/a;-><init>()V

    move-object v6, v0

    goto :goto_a

    :cond_9
    move-object v6, p4

    :goto_a
    const-string v0, "ItemID"

    move-object/from16 v1, p7

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AdvertiserID"

    move-object/from16 v1, p6

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ItemIndex"

    move/from16 v1, p8

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    const-string v0, "intField"

    move/from16 v1, p9

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    const-string v0, "intField2"

    move/from16 v1, p10

    invoke-virtual {v6, v0, v1}, Lcom/kidoz/events/a;->b(Ljava/lang/String;I)V

    sget v5, Lcom/kidoz/events/EventManager;->a:I

    const-string v7, "Sponsored Content"

    const-string v8, "Conversion"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/kidoz/events/EventManager;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/kidoz/events/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3d

    const/4 v0, 0x0

    return v0

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on EventManager logSponsoredConversionEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

###### Class com.kidoz.events.EventManager.a (com.kidoz.events.EventManager$a)
.class Lcom/kidoz/events/EventManager$a;
.super Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/events/EventManager;->d()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kidoz/events/EventManager;


# direct methods
.method constructor <init>(Lcom/kidoz/events/EventManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/events/EventManager$a;->a:Lcom/kidoz/events/EventManager;

    invoke-direct {p0, p2}, Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

###### Class com.kidoz.events.EventManager.b (com.kidoz.events.EventManager$b)
.class Lcom/kidoz/events/EventManager$b;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/events/EventManager;->p(Landroid/content/Context;Lcom/kidoz/events/EventBulk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/kidoz/events/EventBulk;

.field final synthetic c:Lcom/kidoz/events/EventManager;


# direct methods
.method constructor <init>(Lcom/kidoz/events/EventManager;Landroid/content/Context;Lcom/kidoz/events/EventBulk;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/events/EventManager$b;->c:Lcom/kidoz/events/EventManager;

    iput-object p2, p0, Lcom/kidoz/events/EventManager$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/kidoz/events/EventManager$b;->b:Lcom/kidoz/events/EventBulk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "Failed server syncing event."

    new-instance v1, Lcom/kidoz/events/b;

    iget-object v2, p0, Lcom/kidoz/events/EventManager$b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kidoz/events/b;-><init>(Landroid/content/Context;)V

    :try_start_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-ge v2, v3, :cond_16

    new-array v2, v4, [Lcom/kidoz/events/EventBulk;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e

    :cond_16
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/kidoz/events/EventBulk;

    iget-object v5, p0, Lcom/kidoz/events/EventManager$b;->b:Lcom/kidoz/events/EventBulk;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_22
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_9 .. :try_end_22} :catch_2b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_22} :catch_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_22} :catch_23

    goto :goto_2e

    :catch_23
    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    goto :goto_2e

    :catch_27
    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    goto :goto_2e

    :catch_2b
    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method
