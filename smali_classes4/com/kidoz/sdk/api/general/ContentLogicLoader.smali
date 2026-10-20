###### Class com.kidoz.sdk.api.general.ContentLogicLoader (com.kidoz.sdk.api.general.ContentLogicLoader)
.class public Lcom/kidoz/sdk/api/general/ContentLogicLoader;
.super Ljava/lang/Object;
.source "ContentLogicLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;
    }
.end annotation


# instance fields
.field mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

.field private mIsLoadContentIsInProgress:Z


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mIsLoadContentIsInProgress:Z

    return p1
.end method


# virtual methods
.method public loadContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mIsLoadContentIsInProgress:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mIsLoadContentIsInProgress:Z

    invoke-static {p1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->getSdkApiInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;-><init>(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->loadContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V

    :cond_13
    return-void
.end method

.method protected loadRefreshebleContent(Lcom/kidoz/sdk/api/general/enums/WidgetType;)V
    .registers 2

    return-void
.end method

.method public loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mIsLoadContentIsInProgress:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mIsLoadContentIsInProgress:Z

    invoke-static {p1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->getSdkApiInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    move-result-object v1

    new-instance v6, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;

    invoke-direct {v6, p0, p2, p3, p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;-><init>(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V

    :cond_17
    return-void
.end method
