###### Class com.kidoz.events.EventBulk (com.kidoz.events.EventBulk)
.class public Lcom/kidoz/events/EventBulk;
.super Ljava/lang/Object;
.source "EventBulk.java"


# static fields
.field private static final a:Ljava/lang/String; = "EventBulk"


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/events/a;",
            ">;"
        }
    .end annotation
.end field


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

.method private declared-synchronized a()Ljava/lang/String;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/kidoz/events/EventBulk;->b:Lorg/json/JSONObject;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/kidoz/events/EventBulk;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_6a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_6c

    if-lez v1, :cond_6a

    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "DeviceParams"

    iget-object v3, p0, Lcom/kidoz/events/EventBulk;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/kidoz/events/EventBulk;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kidoz/events/a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "EventParams"

    invoke-virtual {v4}, Lcom/kidoz/events/a;->f()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_27

    :cond_45
    const-string v3, "Entries"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_4e} :catch_4f
    .catchall {:try_start_10 .. :try_end_4e} :catchall_6c

    goto :goto_6a

    :catch_4f
    move-exception v1

    :try_start_50
    sget-object v2, Lcom/kidoz/events/EventBulk;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when trying to create JSONObject from Bulk : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_50 .. :try_end_6a} :catchall_6c

    :cond_6a
    :goto_6a
    monitor-exit p0

    return-object v0

    :catchall_6c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static b(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/ResponseStatus;
    .registers 6

    const-string v0, "success"

    const-string v1, "errorMessage"

    const-string v2, "messageCode"

    new-instance v3, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    invoke-direct {v3}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;-><init>()V

    if-eqz p0, :cond_74

    :try_start_d
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_74

    const/4 p0, 0x0

    invoke-virtual {v4, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_74

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->setIsSuccessful(Z)V

    :cond_2c
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_41

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->setErrorCode(Ljava/lang/String;)V

    goto :goto_74

    :cond_41
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_74

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->setErrorCode(Ljava/lang/String;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_54} :catch_55

    goto :goto_74

    :catch_55
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error parsing response status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    new-instance p0, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;-><init>()V

    return-object p0

    :cond_74
    :goto_74
    return-object v3
.end method

.method public static parseResultSuccsessStatus(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/ResultData;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/ResultData;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/server_connect/ResultData;-><init>()V

    if-eqz p0, :cond_37

    invoke-static {p0}, Lcom/kidoz/events/EventBulk;->b(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setResponseStatus(Lcom/kidoz/sdk/api/server_connect/ResponseStatus;)V

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getResponseStatus()Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getResponseStatus()Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_32

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setData(Ljava/lang/Object;)V

    goto :goto_37

    :cond_32
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setData(Ljava/lang/Object;)V

    :cond_37
    :goto_37
    return-object v0
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/events/EventBulk;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public d(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kidoz/events/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kidoz/events/EventBulk;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/kidoz/events/EventBulk;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
