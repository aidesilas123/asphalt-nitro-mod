###### Class com.facebook.ads.redexgen.X.C1195Mp (com.facebook.ads.redexgen.X.Mp)
.class public final Lcom/facebook/ads/redexgen/X/Mp;
.super Landroid/view/ViewGroup;
.source ""


# static fields
.field public static final A01:I


# instance fields
.field public A00:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mp;->A01:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .registers 14

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingTop()I

    move-result v6

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getChildCount()I

    move-result v0

    if-ge v5, v0, :cond_35

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Mp;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v0, v7, v3

    if-le v0, p4, :cond_27

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingLeft()I

    move-result v7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Mp;->A00:I

    add-int/2addr v6, v0

    :cond_27
    add-int v1, v7, v3

    add-int v0, v6, v2

    invoke-virtual {v4, v7, v6, v1, v0}, Landroid/view/View;->layout(IIII)V

    sget v0, Lcom/facebook/ads/redexgen/X/Mp;->A01:I

    add-int/2addr v0, v3

    add-int/2addr v7, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_35
    return-void
.end method

.method public final onMeasure(II)V
    .registers 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v8, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingRight()I

    move-result v0

    sub-int/2addr v8, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingLeft()I

    move-result v9

    const/4 v7, 0x0

    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5e

    const/4 v4, 0x1

    :goto_2e
    const/4 v3, 0x0

    :goto_2f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_60

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Mp;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v8, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v0, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sget v1, Lcom/facebook/ads/redexgen/X/Mp;->A01:I

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v0, v9, v2

    if-le v0, v8, :cond_59

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mp;->getPaddingLeft()I

    move-result v9

    :cond_59
    add-int/2addr v1, v2

    add-int/2addr v9, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_5e
    const/4 v4, 0x0

    goto :goto_2e

    :cond_60
    iput v7, p0, Lcom/facebook/ads/redexgen/X/Mp;->A00:I

    mul-int/2addr v4, v7

    sget v0, Lcom/facebook/ads/redexgen/X/Mp;->A01:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v8, v4}, Lcom/facebook/ads/redexgen/X/Mp;->setMeasuredDimension(II)V

    return-void
.end method
