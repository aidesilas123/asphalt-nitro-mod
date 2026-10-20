###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass8.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$8$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->onPanelPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 10

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsAnimationRunning:Z

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    iput-object v0, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelState:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$PanelViewState;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->access$300(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;)V

    :cond_26
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIOnPanelViewEventListener:Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;

    if-eqz p1, :cond_31

    invoke-interface {p1}, Lcom/kidoz/sdk/api/interfaces/IOnPanelViewEventListener;->onPanelReady()V

    :cond_31
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/events/EventManager;->getInstance(Landroid/content/Context;)Lcom/kidoz/events/EventManager;

    move-result-object v0

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object p1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_PANEL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v3, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mStyleId:Ljava/lang/String;

    sget v4, Lcom/kidoz/events/EventManager;->a:I

    const-string v5, "SDK"

    const-string v6, "Button View"

    const-string v7, "Panel Button View"

    invoke-virtual/range {v0 .. v7}, Lcom/kidoz/events/EventManager;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelHandle:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    sget-object v0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->setPanelButtonState(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$PANEL_HANDLE_VIEW_STATE;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$8;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method
