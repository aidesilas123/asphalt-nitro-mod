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
