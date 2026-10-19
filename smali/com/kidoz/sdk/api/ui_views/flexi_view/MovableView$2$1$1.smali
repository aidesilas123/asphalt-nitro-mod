###### Class com.kidoz.sdk.api.ui_views.flexi_view.MovableView.AnonymousClass2.AnonymousClass1.C03811 (com.kidoz.sdk.api.ui_views.flexi_view.MovableView$2$1$1)
.class Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;
.super Ljava/lang/Object;
.source "MovableView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$IOnParentalDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseDialog()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$100(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    return-void
.end method

.method public onInputPass(Z)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView$2;->this$0:Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;->access$100(Lcom/kidoz/sdk/api/ui_views/flexi_view/MovableView;)V

    return-void
.end method
