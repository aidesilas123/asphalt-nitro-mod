###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$4$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4$1;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mOneItemFamilyView:Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/one_item_view/OneItemFamilyView;->nextPagerItem()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
