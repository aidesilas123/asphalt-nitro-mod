###### Class com.kidoz.sdk.api.general.animations.GenAnimator.AnonymousClass5 (com.kidoz.sdk.api.general.animations.GenAnimator$5)
.class Lcom/kidoz/sdk/api/general/animations/GenAnimator$5;
.super Ljava/lang/Object;
.source "GenAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/animations/GenAnimator;->recycleItemAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/animations/GenAnimator$5;->val$listener:Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;

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

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/animations/GenAnimator$5;->val$listener:Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;->onAnimationEnd()V

    :cond_7
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/animations/GenAnimator$5;->val$listener:Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;->onAnimationStart()V

    :cond_7
    return-void
.end method
