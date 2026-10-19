###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$2$1)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v2, v3, v3, v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->startParentalDialog(Landroid/content/Context;ZFFLcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;)Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
