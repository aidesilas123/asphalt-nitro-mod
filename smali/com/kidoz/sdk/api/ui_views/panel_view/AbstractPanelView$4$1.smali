###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$4$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4$1;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const/4 v4, 0x0

    aput v1, v0, v4

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;Z)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/BaseDialog;->openDialog()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
