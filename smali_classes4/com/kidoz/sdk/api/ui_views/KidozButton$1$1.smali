###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass1.C03741 (com.kidoz.sdk.api.ui_views.KidozButton$1$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;
.super Ljava/lang/Object;
.source "KidozButton.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozButton$1;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$1;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozButton$1;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton;->access$000(Lcom/kidoz/sdk/api/ui_views/KidozButton;)Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/KidozButton$KidozButtonListener;->onClick()V

    return-void
.end method

.method public onAnimationStart()V
    .registers 1

    return-void
.end method
