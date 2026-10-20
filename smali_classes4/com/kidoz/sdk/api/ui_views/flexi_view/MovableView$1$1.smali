###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass1.C03801 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$1$1)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$000(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$000(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$IMovableActionListener;->onCloseClick()V

    :cond_15
    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
