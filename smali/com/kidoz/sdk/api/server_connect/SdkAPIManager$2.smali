###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass2 (com.kidoz.sdk.api.server_connect.SdkAPIManager$2)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

.field final synthetic val$rewarded:Ljava/lang/String;

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 7

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$styleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$rewarded:Ljava/lang/String;

    iput-object p5, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/ContentValues;)V
    .registers 12

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$styleId:Ljava/lang/String;

    const-string v1, "style_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$widgetType:Ljava/lang/String;

    const-string v1, "widget_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$rewarded:Ljava/lang/String;

    const-string v1, "is_rewarded"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    invoke-static {v2, p1, v0, v1, v3}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$000(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/ContentValues;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getOverrideWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isTestApp()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    goto :goto_91

    :cond_63
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->WATERFALL_DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->WATERFALL_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    iget-object v8, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v8}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    :goto_91
    return-void
.end method
