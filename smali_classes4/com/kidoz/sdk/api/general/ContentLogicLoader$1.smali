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
