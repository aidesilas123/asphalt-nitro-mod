###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass5 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$5)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/ContentLogicLoader$IOnContentDataReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initContentLogicLoader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Lcom/kidoz/sdk/api/structure/ContentData;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onContentDataLoadEnded()V

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->isHasContentToShow()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->resetStorage(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->clearPanelContent()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContentItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/structure/ContentData;->getContentDataItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContentItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->setContentAndRefresh(Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-boolean v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsPanelPrepared:Z

    if-nez v0, :cond_46

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->access$200(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method public onLoadContentFailed()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onContentDataLoadFailed()V

    return-void
.end method

.method public onNoContentOffers()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onNoOffers()V

    return-void
.end method
