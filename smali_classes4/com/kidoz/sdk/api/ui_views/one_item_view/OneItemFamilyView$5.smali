###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.AnonymousClass5 (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$5)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$5;
.super Ljava/lang/Object;
.source "OneItemFamilyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->refreshNextViewItem(I)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;->onRefreshDrawRequest()V

    :cond_11
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$5;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mHtmlDefaultView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestFocusOn(Z)V

    return-void
.end method
