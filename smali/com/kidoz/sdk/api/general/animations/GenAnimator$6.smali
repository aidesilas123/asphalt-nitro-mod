###### Class com.kidoz.sdk.api.general.animations.GenAnimator.AnonymousClass6 (com.kidoz.sdk.api.general.animations.GenAnimator$6)
.class Lcom/kidoz/sdk/api/general/animations/GenAnimator$6;
.super Ljava/lang/Object;
.source "GenAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playClickAnimation(Landroid/view/View;Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$animatorListener:Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/animations/GenAnimator$6;->val$animatorListener:Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;

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

    iget-object p1, p0, Lcom/kidoz/sdk/api/general/animations/GenAnimator$6;->val$animatorListener:Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator$IOnClickAnimFinishListener;->onClickFinished()V

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
