###### Class com.kidoz.sdk.api.ui_views.panel_view.PanelHandle.AnonymousClass4 (com.kidoz.sdk.api.ui_views.panel_view.PanelHandle$4)
.class Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;
.super Ljava/lang/Object;
.source "PanelHandle.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->playHandleClickAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$1000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$4;->this$0:Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;->access$1000(Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle;)Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/panel_view/PanelHandle$IOnPanelHandleClickListener;->onHandleClick()V

    :cond_11
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
