###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass1 (com.kidoz.sdk.api.server_connect.SdkAPIManager$1)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->loadContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$styleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/ContentValues;)V
    .registers 14

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$styleId:Ljava/lang/String;

    const-string v1, "style_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$widgetType:Ljava/lang/String;

    const-string v1, "widget_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    invoke-static {v2, p1, v0, v1, v3}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$000(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/ContentValues;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v6, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_SDK_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    iget-object v9, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v10

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v2 .. v11}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    return-void
.end method
