###### Class com.kidoz.sdk.api.ui_views.ExitButton.AnonymousClass1.C03731 (com.kidoz.sdk.api.ui_views.ExitButton$1$1)
.class Lcom/kidoz/sdk/api/ui_views/ExitButton$1$1;
.super Ljava/lang/Object;
.source "ExitButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/ExitButton$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/ExitButton$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/ExitButton$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/ExitButton$1;

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

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/ExitButton$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/ExitButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/ExitButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->access$000(Lcom/kidoz/sdk/api/ui_views/ExitButton;)Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;

    move-result-object p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/ExitButton$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/ExitButton$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/ExitButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/ExitButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/ExitButton;->access$000(Lcom/kidoz/sdk/api/ui_views/ExitButton;)Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/ExitButton$ExitButtonListener;->onClickEnd()V

    :cond_15
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
