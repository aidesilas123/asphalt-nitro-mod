###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass7 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$7)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->expandPanelViewInternal(Z)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsAnimationRunning:Z

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->OPEN:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;->onPanelViewExpanded()V

    :cond_10
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->OPENED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->setPanelButtonState(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->animateHandleOpen(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$7;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onExpandPanelAnimationStarted()V

    return-void
.end method
