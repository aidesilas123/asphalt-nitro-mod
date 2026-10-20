###### Class com.kidoz.sdk.api.PanelView.AnonymousClass3 (com.kidoz.sdk.api.PanelView$3)
.class Lcom/kidoz/sdk/api/PanelView$3;
.super Ljava/lang/Object;
.source "PanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/interfaces/AnotherInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/PanelView;->setAnotherInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/PanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/PanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/PanelView$3;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toggleWidgetState(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$3;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mAboutKidozButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$3;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mParentalLockButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$3;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$3;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->mViewPager:Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/one_item_view/AutoScrollViewPager;->mIsBlocked:Z

    iget-object v0, p0, Lcom/kidoz/sdk/api/PanelView$3;->this$0:Lcom/kidoz/sdk/api/PanelView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/PanelView;->access$100(Lcom/kidoz/sdk/api/PanelView;)Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    move-result-object v0

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method
