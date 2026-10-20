###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass9.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$9$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->onLayoutFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->clearPanelContent()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->onContentDataLoadStarted()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContentLogicLoader:Lcom/kidoz/sdk/api/general/ContentLogicLoader;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStyleId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/kidoz/sdk/api/general/ContentLogicLoader;->loadContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->animateHandleClose(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method
