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

###### Class com.kidoz.sdk.api.server_connect.BaseAPIManager.AnonymousClass1 (com.kidoz.sdk.api.server_connect.BaseAPIManager$1)
.class synthetic Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$1;
.super Ljava/lang/Object;
.source "BaseAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->values()[Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$1;->$SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType:[I

    :try_start_9
    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_COUNTRY_CODE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$1;->$SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType:[I

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_SDK_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$1;->$SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType:[I

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$1;->$SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType:[I

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.BaseAPIManager.RequestAsyncTask (com.kidoz.sdk.api.server_connect.BaseAPIManager$RequestAsyncTask)
.class Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "BaseAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/kidoz/sdk/api/server_connect/ResultData<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private mContext:Landroid/content/Context;

.field private mDeveloperLogging:Z

.field private mResultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
            "*>;"
        }
    .end annotation
.end field

.field private mServerUrl:Ljava/lang/String;

.field private numOfReconnectionsOnFail:I

.field private restRequestType:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

.field private sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;Z)V
    .registers 10
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
            "*>;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->this$0:Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object p1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->POST:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->restRequestType:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    const/4 p1, 0x0

    iput p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->numOfReconnectionsOnFail:I

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mDeveloperLogging:Z

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->restRequestType:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    iput-object p5, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    iput-object p6, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContentValues:Landroid/content/ContentValues;

    iput-object p8, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mResultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    iput p7, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->numOfReconnectionsOnFail:I

    iput-boolean p9, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mDeveloperLogging:Z

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mServerUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/kidoz/sdk/api/server_connect/ResultData;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_99

    const/4 p1, 0x0

    move-object v1, v0

    :goto_9
    iget v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->numOfReconnectionsOnFail:I

    if-gt p1, v2, :cond_9a

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2f

    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_2f

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_24

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_24

    return-object v0

    :cond_24
    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2f

    return-object v0

    :cond_2f
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_9a

    :try_start_37
    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->restRequestType:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->POST:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    if-ne v2, v3, :cond_46

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mServerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makePostConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7e

    :cond_46
    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    if-ne v2, v3, :cond_7e

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mServerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContentValues:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makeGetConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v1
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_52} :catch_53

    goto :goto_7e

    :catch_53
    move-exception v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    if-eqz v3, :cond_7e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \n IO Exception On ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] request! \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_9a

    if-eqz v1, :cond_87

    goto :goto_9a

    :cond_87
    :try_start_87
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_9a

    mul-int/lit16 v2, p1, 0x12c

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_95} :catch_97

    goto/16 :goto_9

    :catch_97
    nop

    goto :goto_9a

    :cond_99
    move-object v1, v0

    :cond_9a
    :goto_9a
    iget-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    if-eqz p1, :cond_ce

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->restRequestType:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->POST:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    if-ne v2, v3, :cond_b0

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mServerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printPostRequestDebugLog(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_bf

    :cond_b0
    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    if-ne v2, v3, :cond_bf

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mServerUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printGetRequestDebugLog(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    :cond_bf
    :goto_bf
    iget-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->restRequestType:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_d5

    return-object v0

    :cond_d5
    if-eqz v1, :cond_109

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_109

    iget-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_109

    :try_start_e1
    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->this$0:Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    iget-boolean v4, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mDeveloperLogging:Z

    invoke-static {v2, p1, v3, v1, v4}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->access$000(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Ljava/lang/String;Z)Lcom/kidoz/sdk/api/server_connect/ResultData;

    move-result-object v0
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_eb} :catch_ec

    goto :goto_109

    :catch_ec
    move-exception p1

    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when trying to parse service response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109
    :goto_109
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/kidoz/sdk/api/server_connect/ResultData;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 3

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->this$0:Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->access$200(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->this$0:Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->access$200(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    return-void
.end method

.method protected onPostExecute(Lcom/kidoz/sdk/api/server_connect/ResultData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_22

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_22

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_17

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_22

    return-void

    :cond_22
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_39

    if-nez p1, :cond_32

    iget-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mResultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    if-eqz p1, :cond_39

    invoke-interface {p1}, Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;->onFailed()V

    goto :goto_39

    :cond_32
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->mResultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    if-eqz v0, :cond_39

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;->onServerResult(Lcom/kidoz/sdk/api/server_connect/ResultData;)V

    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->this$0:Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;

    invoke-static {p1}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->access$200(Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->sdkRequestType:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/server_connect/ResultData;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager$RequestAsyncTask;->onPostExecute(Lcom/kidoz/sdk/api/server_connect/ResultData;)V

    return-void
.end method
