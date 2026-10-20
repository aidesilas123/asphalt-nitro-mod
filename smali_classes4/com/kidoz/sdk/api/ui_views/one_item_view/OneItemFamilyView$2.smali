###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.AnonymousClass2 (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$2)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "OneItemFamilyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->applyListenerToDefaultHtmlView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public onDonePlayBack()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->startAutoScroll()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->nextPagerItem()V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 5

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$300(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2$1;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOpenMaximized()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mCurrentItemInView:Lcom/kidoz/sdk/api/structure/ContentItem;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->openMaximizedDialogVew(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    return-void
.end method

.method public toggleWidgetState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/interfaces/AnotherInterface;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$100(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/interfaces/AnotherInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/interfaces/AnotherInterface;->toggleWidgetState(Z)V

    :cond_11
    return-void
.end method
