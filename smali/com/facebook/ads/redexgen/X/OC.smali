###### Class com.facebook.ads.redexgen.X.OC (com.facebook.ads.redexgen.X.OC)
.class public final Lcom/facebook/ads/redexgen/X/OC;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sl;->A0f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sl;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sl;Z)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/OC;->A01:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0G(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/OL;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OL;->setTranslationY(F)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0Y(Lcom/facebook/ads/redexgen/X/Sl;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A01:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0E(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/TJ;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0E(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/TJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TJ;->destroy()V

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0H(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A00:Lcom/facebook/ads/redexgen/X/Sl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sl;->A0H(Lcom/facebook/ads/redexgen/X/Sl;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OC;->A01:Z

    if-eqz v0, :cond_3f

    const/16 v0, 0x8

    :goto_3b
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->setVisibility(I)V

    :cond_3e
    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_3b
.end method
