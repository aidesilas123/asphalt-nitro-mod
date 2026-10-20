###### Class com.facebook.ads.redexgen.X.QC (com.facebook.ads.redexgen.X.QC)
.class public final Lcom/facebook/ads/redexgen/X/QC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JV;->A06(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:I

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/JV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JV;II)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/QC;->A00:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 6

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/QC;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:I

    const/4 v0, 0x0

    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JV;->A08(Lcom/facebook/ads/redexgen/X/JV;IIZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JV;->A01(Lcom/facebook/ads/redexgen/X/JV;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JV;->A01(Lcom/facebook/ads/redexgen/X/JV;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JV;->A02(Lcom/facebook/ads/redexgen/X/JV;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_21
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A01:I

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/JV;->A00(Lcom/facebook/ads/redexgen/X/JV;)I

    move-result v0

    if-ne v1, v0, :cond_27

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    :goto_c
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JV;->A03(Lcom/facebook/ads/redexgen/X/JV;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JV;->A01(Lcom/facebook/ads/redexgen/X/JV;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JV;->A01(Lcom/facebook/ads/redexgen/X/JV;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QC;->A02:Lcom/facebook/ads/redexgen/X/JV;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JV;->A02(Lcom/facebook/ads/redexgen/X/JV;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_26
    return-void

    :cond_27
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_c
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
