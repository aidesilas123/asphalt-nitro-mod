###### Class com.kidoz.sdk.api.ui_views.ParentalLockButton.AnonymousClass1 (com.kidoz.sdk.api.ui_views.ParentalLockButton$1)
.class Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;
.super Ljava/lang/Object;
.source "ParentalLockButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->initOnClickAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->access$000(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->access$000(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$ParentalLockButtonListener;->onClickStarted()V

    :cond_11
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;->access$100(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    goto :goto_23

    :cond_1b
    new-instance v0, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/ParentalLockButton$1;)V

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playStandUpAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    :goto_23
    return-void
.end method
