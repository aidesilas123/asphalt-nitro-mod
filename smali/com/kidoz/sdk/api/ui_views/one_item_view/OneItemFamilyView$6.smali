###### Class com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView.AnonymousClass6 (com.kidoz.sdk.api.ui_views.one_item_view.OneItemFamilyView$6)
.class Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;
.super Ljava/lang/Object;
.source "OneItemFamilyView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->initViewPager()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$200(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$IOnRefreshListener;->onRefreshDrawRequest()V

    :cond_11
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->getRealCount()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mAdapter:Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/ItemViewPagerAdapter;->toggleIsClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$300(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$300(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;)Lcom/kidoz/sdk/api/general/utils/Utils$StaticHandler;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6$1;-><init>(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;)V

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView$6;->this$0:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->access$000(Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;I)V

    :cond_31
    return-void
.end method
