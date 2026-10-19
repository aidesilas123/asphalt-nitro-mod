###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass7 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$7)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinished()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$400(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)[I

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$500(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$400(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)[I

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7$1;-><init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playPopInFromRightTop(Landroid/view/View;[ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    goto :goto_27

    :cond_1d
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$7;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->access$500(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_27
    return-void
.end method
