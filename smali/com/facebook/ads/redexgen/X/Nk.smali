###### Class com.facebook.ads.redexgen.X.C1216Nk (com.facebook.ads.redexgen.X.Nk)
.class public final Lcom/facebook/ads/redexgen/X/Nk;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A06:I


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/YA;

.field public final A05:[Lcom/facebook/ads/redexgen/X/Nl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Nk;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;IIII)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/facebook/ads/redexgen/X/Nk;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A00:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nk;->A04:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nk;->setOrientation(I)V

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Nk;->A03:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Nk;->A01:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Nk;->A02:I

    new-array v0, p3, [Lcom/facebook/ads/redexgen/X/Nl;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A05:[Lcom/facebook/ads/redexgen/X/Nl;

    const/4 v2, 0x0

    :goto_18
    if-ge v2, p3, :cond_2c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nk;->A05:[Lcom/facebook/ads/redexgen/X/Nl;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nk;->A00()Lcom/facebook/ads/redexgen/X/Nl;

    move-result-object v0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A05:[Lcom/facebook/ads/redexgen/X/Nl;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nk;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nk;->A01()V

    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Nl;
    .registers 5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nk;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Nk;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A02:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/Nl;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Nl;-><init>(Lcom/facebook/ads/redexgen/X/YA;II)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A03:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Nl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method private A01()V
    .registers 4

    const/4 v2, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nk;->A05:[Lcom/facebook/ads/redexgen/X/Nl;

    array-length v0, v1

    if-ge v2, v0, :cond_19

    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nl;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v2, :cond_16

    const/4 v0, 0x0

    :goto_11
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_16
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A00:I

    goto :goto_11

    :cond_19
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nk;->requestLayout()V

    return-void
.end method

.method private A02(F)V
    .registers 5

    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A05:[Lcom/facebook/ads/redexgen/X/Nl;

    array-length v0, v0

    if-ge v2, v0, :cond_1f

    int-to-float v0, v2

    sub-float v1, p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_15

    const/4 v1, 0x0

    :cond_15
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nk;->A05:[Lcom/facebook/ads/redexgen/X/Nl;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Nl;->setFillRatio(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method


# virtual methods
.method public setItemSpacing(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Nk;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nk;->A01()V

    return-void
.end method

.method public setRating(F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nk;->A02(F)V

    return-void
.end method
