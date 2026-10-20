###### Class com.kidoz.sdk.api.dialogs.AboutKidozDialog.AnonymousClass6.AnonymousClass1 (com.kidoz.sdk.api.dialogs.AboutKidozDialog$6$1)
.class Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6$1;
.super Ljava/lang/Object;
.source "AboutKidozDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;->onLayoutFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6$1;->this$1:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6$1;->this$1:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;

    iget-object p1, p1, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-static {p1}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->access$100(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
