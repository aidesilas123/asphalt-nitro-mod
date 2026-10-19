###### Class com.tapjoy.internal.g3 (com.tapjoy.internal.g3)
.class public final Lcom/tapjoy/internal/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJCloseButton;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJCloseButton;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/g3;->a:Lcom/tapjoy/TJCloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/tapjoy/internal/g3;->a:Lcom/tapjoy/TJCloseButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tapjoy/internal/u2;

    invoke-direct {v1, p0}, Lcom/tapjoy/internal/u2;-><init>(Lcom/tapjoy/internal/g3;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
