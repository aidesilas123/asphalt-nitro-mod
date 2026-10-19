###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass9 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$9)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->preparePanel()V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinished()V
    .registers 8

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mInnerContainer:Landroid/widget/RelativeLayout;

    iget-object v5, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mPanelType:Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;

    new-instance v6, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;

    invoke-direct {v6, p0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9$1;-><init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$9;)V

    const-wide/16 v2, 0x0

    invoke-static/range {v1 .. v6}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->closePanelView(Landroid/view/View;JLandroid/view/View;Lcom/kidoz/sdk/api/ui_views/panel_view/PANEL_TYPE;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
