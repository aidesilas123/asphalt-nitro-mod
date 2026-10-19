###### Class com.facebook.ads.redexgen.X.AE (com.facebook.ads.redexgen.X.AE)
.class public final Lcom/facebook/ads/redexgen/X/AE;
.super Lcom/facebook/ads/redexgen/X/RX;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RX;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_d

    move p2, p1

    :cond_9
    :goto_9
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RX;->onMeasure(II)V

    return-void

    :cond_d
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move p1, p2

    goto :goto_9
.end method
