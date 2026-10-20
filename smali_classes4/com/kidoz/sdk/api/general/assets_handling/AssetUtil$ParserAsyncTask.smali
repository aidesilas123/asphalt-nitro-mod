###### Class com.kidoz.sdk.api.general.assets_handling.AssetUtil.ParserAsyncTask (com.kidoz.sdk.api.general.assets_handling.AssetUtil$ParserAsyncTask)
.class public Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;
.super Landroid/os/AsyncTask;
.source "AssetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParserAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStyleParseListener:Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->mStyleParseListener:Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 5

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadAppProperties()Lcom/kidoz/sdk/api/general/utils/PropertiesObj;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesStyle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->parseAssets(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getInterstitialViewStyle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->parseAssets(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getBannerViewStyle()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->parseAssets(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .registers 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->mStyleParseListener:Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;->onParseFinished(Z)V

    :cond_b
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
