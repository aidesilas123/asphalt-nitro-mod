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
