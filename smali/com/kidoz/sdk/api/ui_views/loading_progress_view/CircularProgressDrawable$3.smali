###### Class com.kidoz.sdk.api.ui_views.loading_progress_view.CircularProgressDrawable.AnonymousClass3 (com.kidoz.sdk.api.ui_views.loading_progress_view.CircularProgressDrawable$3)
.class Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$3;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$3;->this$0:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable$3;->this$0:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;->access$000(Lcom/kidoz/sdk/api/ui_views/loading_progress_view/CircularProgressDrawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
