###### Class com.tapjoy.internal.u2 (com.tapjoy.internal.u2)
.class public final Lcom/tapjoy/internal/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/g3;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/g3;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/u2;->a:Lcom/tapjoy/internal/g3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/tapjoy/internal/u2;->a:Lcom/tapjoy/internal/g3;

    iget-object p1, p1, Lcom/tapjoy/internal/g3;->a:Lcom/tapjoy/TJCloseButton;

    iget-boolean v0, p1, Lcom/tapjoy/TJCloseButton;->a:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/tapjoy/internal/u2;->a:Lcom/tapjoy/internal/g3;

    iget-object p1, p1, Lcom/tapjoy/internal/g3;->a:Lcom/tapjoy/TJCloseButton;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tapjoy/TJCloseButton;->b:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/tapjoy/internal/u2;->a:Lcom/tapjoy/internal/g3;

    iget-object p1, p1, Lcom/tapjoy/internal/g3;->a:Lcom/tapjoy/TJCloseButton;

    iget-boolean v0, p1, Lcom/tapjoy/TJCloseButton;->a:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/tapjoy/internal/u2;->a:Lcom/tapjoy/internal/g3;

    iget-object p1, p1, Lcom/tapjoy/internal/g3;->a:Lcom/tapjoy/TJCloseButton;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tapjoy/TJCloseButton;->b:Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
