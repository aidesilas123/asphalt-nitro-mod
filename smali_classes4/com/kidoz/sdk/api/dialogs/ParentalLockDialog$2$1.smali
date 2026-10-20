###### Class com.kidoz.sdk.api.dialogs.ParentalLockDialog.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.dialogs.ParentalLockDialog$2$1)
.class Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;
.super Ljava/lang/Object;
.source "ParentalLockDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;

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

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2$1;->this$1:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog$2;->this$0:Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->closeParentalDialog()V

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
