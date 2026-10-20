###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$2$1)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2$1;
.super Ljava/lang/Object;
.source "OneItemFamilyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->onHtmlFinishedLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;->onRefreshDrawRequest()V

    :cond_15
    return-void
.end method
