###### Class com.kidoz.sdk.api.general.database.ServerConfigStorage (com.kidoz.sdk.api.general.database.ServerConfigStorage)
.class public Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;
.super Ljava/lang/Object;
.source "ServerConfigStorage.java"


# static fields
.field private static final INSTANCE:Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;


# instance fields
.field private serverConfig:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->INSTANCE:Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->INSTANCE:Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized insertAppProperties(Lcom/kidoz/sdk/api/general/utils/PropertiesObj;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->serverConfig:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertProperties(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->serverConfig:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_a} :catch_d
    .catchall {:try_start_1 .. :try_end_a} :catchall_b

    goto :goto_11

    :catchall_b
    move-exception p1

    goto :goto_13

    :catch_d
    move-exception p1

    :try_start_e
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_b

    :goto_11
    monitor-exit p0

    return-void

    :goto_13
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->serverConfig:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->serverConfig:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->serverConfig:Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_1a} :catch_20
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1e

    monitor-exit p0

    return-object p1

    :cond_1c
    monitor-exit p0

    return-object v0

    :catchall_1e
    move-exception p1

    goto :goto_26

    :catch_20
    move-exception p1

    :try_start_21
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    monitor-exit p0

    return-object v0

    :goto_26
    monitor-exit p0

    throw p1
.end method
