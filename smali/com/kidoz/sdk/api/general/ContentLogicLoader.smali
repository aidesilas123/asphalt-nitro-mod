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

###### Class com.kidoz.sdk.api.general.ContentLogicLoader.AnonymousClass1 (com.kidoz.sdk.api.general.ContentLogicLoader$1)
.class Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;
.super Ljava/lang/Object;
.source "ContentLogicLoader.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentLogicLoader;->loadContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
        "Lcom/kidoz/sdk/api/structure/ContentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$widgetType:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$styleId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object v0, v0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onLoadContentFailed()V

    :cond_9
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->access$002(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Z)Z

    return-void
.end method

.method public onServerResult(Lcom/kidoz/sdk/api/server_connect/ResultData;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_71

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_71

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/structure/ContentData;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$widgetType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/structure/ContentData;->setWidgetType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$styleId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/structure/ContentData;->setStyleID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->isHasContentToShow()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->getContentDataItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v3}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3e
    move v11, v2

    goto :goto_41

    :cond_40
    const/4 v11, 0x0

    :goto_41
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v3

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$widgetType:Ljava/lang/String;

    iget-object v6, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->val$styleId:Ljava/lang/String;

    sget v7, Lcom/kidoz/events/EventManager;->a:I

    const/4 v10, 0x0

    const-string v8, "Sponsored Content"

    const-string v9, "Impression Served"

    invoke-virtual/range {v3 .. v11}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->isHasContentToShow()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz v1, :cond_7a

    invoke-interface {v1, p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onDataReady(Lcom/kidoz/sdk/api/structure/ContentData;)V

    goto :goto_7a

    :cond_67
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz p1, :cond_7a

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onNoContentOffers()V

    goto :goto_7a

    :cond_71
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz p1, :cond_7a

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onLoadContentFailed()V

    :cond_7a
    :goto_7a
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$1;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->access$002(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Z)Z

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentLogicLoader.AnonymousClass2 (com.kidoz.sdk.api.general.ContentLogicLoader$2)
.class Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;
.super Ljava/lang/Object;
.source "ContentLogicLoader.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/ContentLogicLoader;->loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
        "Lcom/kidoz/sdk/api/structure/ContentData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iput-object p2, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$widgetType:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$styleId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object v0, v0, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onLoadContentFailed()V

    :cond_9
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->access$002(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Z)Z

    return-void
.end method

.method public onServerResult(Lcom/kidoz/sdk/api/server_connect/ResultData;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7c

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/server_connect/ResultData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kidoz/sdk/api/structure/ContentData;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$widgetType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/structure/ContentData;->setWidgetType(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$styleId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/kidoz/sdk/api/structure/ContentData;->setStyleID(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->isHasContentToShow()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->getContentDataItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v3}, Lcom/kidoz/sdk/api/structure/ContentItem;->isPromoted()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_3e
    move v11, v2

    goto :goto_41

    :cond_40
    const/4 v11, 0x0

    :goto_41
    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v3

    iget-object v4, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$widgetType:Ljava/lang/String;

    iget-object v6, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->val$styleId:Ljava/lang/String;

    sget v7, Lcom/kidoz/events/EventManager;->a:I

    const/4 v10, 0x0

    const-string v8, "Sponsored Content"

    const-string v9, "Impression Served"

    invoke-virtual/range {v3 .. v11}, Lcom/kidoz/events/EventManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->isHasContentToShow()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object v1, v1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz v1, :cond_85

    invoke-interface {v1, p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onDataReady(Lcom/kidoz/sdk/api/structure/ContentData;)V

    goto :goto_85

    :cond_67
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz p1, :cond_85

    const-string p1, "ContentLogicLoader"

    const-string v1, "loadWaterfall | isHasContentToShow() = false. No offers."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onNoContentOffers()V

    goto :goto_85

    :cond_7c
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->mDataReadyCallback:Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;

    if-eqz p1, :cond_85

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;->onLoadContentFailed()V

    :cond_85
    :goto_85
    iget-object p1, p0, Lcom/kidoz/sdk/api/general/ContentLogicLoader$2;->this$0:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->access$002(Lcom/kidoz/sdk/api/general/ContentLogicLoader;Z)Z

    return-void
.end method

###### Class com.kidoz.sdk.api.general.ContentLogicLoader.IOnContentDataReadyCallback (com.kidoz.sdk.api.general.ContentLogicLoader$IOnContentDataReadyCallback)
.class public interface abstract Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;
.super Ljava/lang/Object;
.source "ContentLogicLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/ContentLogicLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnContentDataReadyCallback"
.end annotation


# virtual methods
.method public abstract onDataReady(Lcom/kidoz/sdk/api/structure/ContentData;)V
.end method

.method public abstract onLoadContentFailed()V
.end method

.method public abstract onNoContentOffers()V
.end method
