###### Class com.facebook.ads.redexgen.X.ML (com.facebook.ads.redexgen.X.ML)
.class public final Lcom/facebook/ads/redexgen/X/ML;
.super Landroid/view/View;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MK;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ML;->A00:Lcom/facebook/ads/redexgen/X/MK;

    const/4 v1, 0x0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ML;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final onWindowVisibilityChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ML;->A00:Lcom/facebook/ads/redexgen/X/MK;

    return-void
.end method
