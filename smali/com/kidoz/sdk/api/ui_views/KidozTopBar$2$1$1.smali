###### Class com.kidoz.sdk.api.ui_views.KidozTopBar.AnonymousClass2.AnonymousClass1.C03751 (com.kidoz.sdk.api.ui_views.KidozTopBar$2$1$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1$1;
.super Ljava/lang/Object;
.source "KidozTopBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;

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

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1$1;->this$2:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
