###### Class com.kidoz.sdk.api.dialogs.AboutKidozDialog.AnonymousClass6 (com.kidoz.sdk.api.dialogs.AboutKidozDialog$6)
.class Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;
.super Ljava/lang/Object;
.source "AboutKidozDialog.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/utils/Utils$OnGlobalLayoutFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutFinished()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->access$000(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)[I

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->access$100(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-static {v1}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->access$000(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)[I

    move-result-object v1

    new-instance v2, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6$1;

    invoke-direct {v2, p0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6$1;-><init>(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playPopInFromRightTop(Landroid/view/View;[ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    goto :goto_27

    :cond_1d
    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog$6;->this$0:Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;->access$100(Lcom/kidoz/sdk/api/dialogs/AboutKidozDialog;)Lcom/kidoz/sdk/api/general/custom_views/CustomCardView/KidozCardView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_27
    return-void
.end method
