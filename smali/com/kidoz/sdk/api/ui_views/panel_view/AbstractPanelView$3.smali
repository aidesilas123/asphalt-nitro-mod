###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass3 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$3)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->initParentalLockButton()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-boolean v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsClicksBlocked:Z

    if-nez v0, :cond_10

    const/16 v0, 0x50

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;)V

    invoke-static {p1, v0, v1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    :cond_10
    return-void
.end method
