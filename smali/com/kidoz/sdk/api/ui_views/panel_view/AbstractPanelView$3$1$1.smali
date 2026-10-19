###### Class com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView.AnonymousClass3.AnonymousClass1.C03851 (com.kidoz.sdk.api.ui_views.panel_view.AbstractPanelView$3$1$1)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1$1;
.super Ljava/lang/Object;
.source "AbstractPanelView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-static {v1, v0}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->access$100(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->mIsClicksBlocked:Z

    return-void
.end method

.method public onInputPass(Z)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isParentalLockActive(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3$1;->this$1:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView$3;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;->access$100(Lcom/kidoz/sdk/api/ui_views/panel_view/AbstractPanelView;Z)V

    return-void
.end method
