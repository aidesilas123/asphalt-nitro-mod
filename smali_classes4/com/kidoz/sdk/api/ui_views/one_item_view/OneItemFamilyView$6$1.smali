###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.AnonymousClass6.AnonymousClass1 (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$6$1)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6$1;
.super Ljava/lang/Object;
.source "OneItemFamilyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6$1;->this$1:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->toggleIsClickable(Z)V

    return-void
.end method
