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
