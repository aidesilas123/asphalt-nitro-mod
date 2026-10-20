###### Class com.kidoz.sdk.api.server_connect.BaseAPIManager (com.kidoz.sdk.api.server_connect.BaseAPIManager)
.class Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;
.super Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;
.source "BaseAPIManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAPIManager"


# instance fields
.field private runningTaskList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/kidoz/sdk/api/server_connect/SdkRequestType;",
            "Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->runningTaskList:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Ljava/lang/String;Z)Lcom/kidoz/sdk/api/server_connect/ResultData;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->parseWebServiceResponse(Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Ljava/lang/String;Z)Lcom/kidoz/sdk/api/server_connect/ResultData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->runningTaskList:Ljava/util/HashMap;

    return-object p0
.end method

.method private parseWebServiceResponse(Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Ljava/lang/String;Z)Lcom/kidoz/sdk/api/server_connect/ResultData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kidoz/sdk/api/server_connect/SdkRequestType;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_af

    if-eqz p1, :cond_af

    sget-object p1, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$1;->$SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const-string p2, "data"

    const/4 p4, 0x1

    if-eq p1, p4, :cond_6e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1c

    goto/16 :goto_af

    :cond_1c
    :try_start_1c
    new-instance p1, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    invoke-direct {p1, p3}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/ResultData;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/server_connect/ResultData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setResponseStatus(Lcom/kidoz/sdk/api/server_connect/ResponseStatus;)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->getIsSuccessful()Z

    move-result p1

    if-ne p1, p4, :cond_b0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p3, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, p3}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setData(Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_41

    goto :goto_b0

    :catch_41
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error when trying to parse validate SDK: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    :cond_5d
    new-instance p1, Lcom/kidoz/sdk/api/structure/ContentData;

    invoke-direct {p1}, Lcom/kidoz/sdk/api/structure/ContentData;-><init>()V

    invoke-virtual {p1, p3}, Lcom/kidoz/sdk/api/structure/ContentData;->decodeResponse(Ljava/lang/String;)V

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/ResultData;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/server_connect/ResultData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setData(Ljava/lang/Object;)V

    goto :goto_b0

    :cond_6e
    :try_start_6e
    new-instance p1, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;

    invoke-direct {p1, p3}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/ResultData;

    invoke-direct {v0}, Lcom/kidoz/sdk/api/server_connect/ResultData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setResponseStatus(Lcom/kidoz/sdk/api/server_connect/ResponseStatus;)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResponseStatus;->getIsSuccessful()Z

    move-result p1

    if-ne p1, p4, :cond_b0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "country_code"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->setData(Ljava/lang/Object;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_93} :catch_94

    goto :goto_b0

    :catch_94
    move-exception p1

    sget-object p2, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error when trying to parse GET_COUNTRY_CODE: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    :goto_af
    const/4 v0, 0x0

    :cond_b0
    :goto_b0
    return-object v0
.end method


# virtual methods
.method protected startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V
    .registers 23
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;",
            "Lcom/kidoz/sdk/api/server_connect/SdkRequestType;",
            "Landroid/content/ContentValues;",
            "I",
            "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
            "*>;ZZ)V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p4

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "http://"

    move-object v4, p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_13
    move-object v4, p2

    :cond_14
    if-eqz p9, :cond_5c

    :try_start_16
    iget-object v0, v11, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->runningTaskList:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v11, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->runningTaskList:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, v11, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->runningTaskList:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_3b

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_5c

    :cond_3b
    iget-object v0, v11, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->runningTaskList:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_40} :catch_41

    goto :goto_5c

    :catch_41
    move-exception v0

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \n Unable to finish Running Request asyncTask ! \n\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5c
    :goto_5c
    new-instance v0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;-><init>(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;Z)V

    iget-object v1, v11, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->runningTaskList:Ljava/util/HashMap;

    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    if-ge v1, v2, :cond_83

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8a

    :cond_83
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_8a
    return-void
.end method
