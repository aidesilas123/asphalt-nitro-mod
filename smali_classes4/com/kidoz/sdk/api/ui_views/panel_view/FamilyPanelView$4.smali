###### Class com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView.AnonymousClass4 (com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView$4)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;
.super Ljava/lang/Object;
.source "FamilyPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->initNextButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->mNextButton:Lcom/kidoz/sdk/api/ui_views/parental_lock/AssetView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView$4;)V

    const/16 v1, 0x50

    invoke-static {p1, v1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method
