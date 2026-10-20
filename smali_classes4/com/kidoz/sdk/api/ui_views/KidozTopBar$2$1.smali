###### Class com.kidoz.sdk.api.ui_views.KidozTopBar.AnonymousClass2.AnonymousClass1 (com.kidoz.sdk.api.ui_views.KidozTopBar$2$1)
.class Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;
.super Ljava/lang/Object;
.source "KidozTopBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->onLayoutFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;->this$1:Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2;->this$0:Lcom/kidoz/sdk/api/ui_views/KidozTopBar;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar;->access$100(Lcom/kidoz/sdk/api/ui_views/KidozTopBar;)Lcom/kidoz/sdk/api/ui_views/ParentalLockButton;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1$1;-><init>(Lcom/kidoz/sdk/api/ui_views/KidozTopBar$2$1;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/animations/GenAnimator;->playDropAnimation(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    return-void
.end method
