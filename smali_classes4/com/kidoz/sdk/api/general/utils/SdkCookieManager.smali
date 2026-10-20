###### Class com.kidoz.sdk.api.general.utils.SdkCookieManager (com.kidoz.sdk.api.general.utils.SdkCookieManager)
.class public Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;
.super Ljava/lang/Object;
.source "SdkCookieManager.java"


# static fields
.field private static final APP_STORAGE:Ljava/lang/String; = "app"

.field private static final SESSION_STORAGE:Ljava/lang/String; = "session"

.field public static final TAG:Ljava/lang/String; = "SdkCookieManager"

.field private static final WIDGET_STORAGE:Ljava/lang/String; = "widget"

.field private static instance:Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;


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

.method public static getInstance()Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->instance:Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    if-nez v0, :cond_19

    const-class v1, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->instance:Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    if-nez v0, :cond_12

    new-instance v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->instance:Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    :cond_12
    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->instance:Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v0

    :cond_19
    return-object v0
.end method

.method private static getSharedPreferenceName(Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager$1;->$SwitchMap$com$kidoz$sdk$api$general$utils$StorageLife:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_28

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x3

    if-eq p1, v0, :cond_13

    const/4 p0, 0x0

    goto :goto_2a

    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "widget"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2a

    :cond_25
    const-string p0, "session"

    goto :goto_2a

    :cond_28
    const-string p0, "app"

    :goto_2a
    return-object p0
.end method

.method public static loadData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-class v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kidoz/sdk/api/general/utils/EncoderUtils;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {p1, p3}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->getSharedPreferenceName(Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_46

    sget-object p3, Lcom/kidoz/sdk/api/general/utils/StorageLife;->SESSION:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {p1, p3}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->getSharedPreferenceName(Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    invoke-interface {p3, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_46

    sget-object p3, Lcom/kidoz/sdk/api/general/utils/StorageLife;->APP:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {p1, p3}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->getSharedPreferenceName(Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_46} :catch_4a
    .catchall {:try_start_4 .. :try_end_46} :catchall_48

    :cond_46
    :try_start_46
    monitor-exit v0

    return-object p3

    :catchall_48
    move-exception p0

    goto :goto_67

    :catch_4a
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error when trying to load data to cookie \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :goto_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_46 .. :try_end_68} :catchall_48

    throw p0
.end method

.method public static resetStorage(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V
    .registers 5

    const-class v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    monitor-enter v0

    :try_start_3
    invoke-static {p1, p2}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->getSharedPreferenceName(Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_19
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    goto :goto_34

    :catchall_17
    move-exception p0

    goto :goto_36

    :catch_19
    move-exception p0

    :try_start_1a
    sget-object p1, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when trying to reset  cookie \n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    monitor-exit v0

    return-void

    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_17

    throw p0
.end method

.method public static saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V
    .registers 8

    const-class v0, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/kidoz/sdk/api/general/utils/EncoderUtils;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p5}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->getSharedPreferenceName(Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2c
    .catchall {:try_start_3 .. :try_end_29} :catchall_2a

    goto :goto_47

    :catchall_2a
    move-exception p0

    goto :goto_49

    :catch_2c
    move-exception p0

    :try_start_2d
    sget-object p1, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error when trying to save data to cookie \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    monitor-exit v0

    return-void

    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_2a

    throw p0
.end method
