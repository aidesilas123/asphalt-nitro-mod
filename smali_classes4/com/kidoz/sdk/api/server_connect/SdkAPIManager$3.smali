###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass3 (com.kidoz.sdk.api.server_connect.SdkAPIManager$3)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->initSdk(Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/ContentValues;)V
    .registers 13

    :try_start_0
    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->production:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->getEnvUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getEnvApiUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "initSDK"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v5, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v9

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v10}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    goto :goto_78

    :cond_3f
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    const-string v2, "https://sdk-api.kidoz.net/api/initSDK"

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_78

    :catch_56
    move-exception p1

    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to validateSDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;->onFailed()V

    :goto_78
    return-void
.end method
