###### Class com.kidoz.sdk.api.ui_views.KidozButton.AnonymousClass1 (com.kidoz.sdk.api.ui_views.KidozButton$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozButton$1;
.super Ljava/lang/Object;
.source "KidozButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozButton;->initRootView(Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozButton;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozButton$1;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozButton;

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;

    invoke-direct {v1, p0, p1}, Lcom/kidoz/sdk/api/ui_views/KidozButton$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozButton$1;Landroid/view/View;)V

    const/16 p1, 0x46

    invoke-static {v0, p1, v1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->clickItemAnimation(Landroid/view/View;ILcom/kidoz/sdk/api/general/animations/GenAnimator$ViewAnimationListener;)Landroid/animation/AnimatorSet;

    return-void
.end method
