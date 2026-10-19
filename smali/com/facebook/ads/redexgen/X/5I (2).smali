###### Class com.facebook.ads.redexgen.X.C5I (com.facebook.ads.redexgen.X.5I)
.class public final Lcom/facebook/ads/redexgen/X/5I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/5J;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugOverlayToggle"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/5J;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/5J;Lcom/facebook/ads/redexgen/X/5F;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5I;-><init>(Lcom/facebook/ads/redexgen/X/5J;)V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5J;->A03(Lcom/facebook/ads/redexgen/X/5J;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5J;->A01(Lcom/facebook/ads/redexgen/X/5J;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5J;->A03(Lcom/facebook/ads/redexgen/X/5J;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5J;->A01(Lcom/facebook/ads/redexgen/X/5J;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5J;->A01(Lcom/facebook/ads/redexgen/X/5J;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/NJ;->setBounds(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5J;->A03(Lcom/facebook/ads/redexgen/X/5J;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5I;->A00:Lcom/facebook/ads/redexgen/X/5J;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5J;->A03(Lcom/facebook/ads/redexgen/X/5J;)Lcom/facebook/ads/redexgen/X/NJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NJ;->A0E()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NJ;->A0D(Z)V

    :cond_43
    return v4
.end method
