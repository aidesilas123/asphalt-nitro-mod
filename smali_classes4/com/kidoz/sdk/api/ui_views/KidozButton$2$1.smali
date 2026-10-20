###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.KidozButton$2$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;
.super Ljava/lang/Object;
.source "KidozButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->onAssetLoaded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozButton$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$102(Lcom/kidoz/sdk/api/ui_views/KidozButton;Z)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    move-result-object p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$200(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$202(Lcom/kidoz/sdk/api/ui_views/KidozButton;Z)Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;->onButtonReady()V

    :cond_3c
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozButton$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->bringToFront()V

    return-void
.end method
