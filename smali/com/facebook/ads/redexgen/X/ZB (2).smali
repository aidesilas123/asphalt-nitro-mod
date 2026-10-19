###### Class com.facebook.ads.redexgen.X.ZB (com.facebook.ads.redexgen.X.ZB)
.class public Lcom/facebook/ads/redexgen/X/ZB;
.super Lcom/facebook/ads/redexgen/X/4p;
.source ""


# static fields
.field public static A06:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/graphics/PointF;

.field public final A03:F

.field public final A04:Landroid/view/animation/DecelerateInterpolator;

.field public final A05:Landroid/view/animation/LinearInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZB;->A06()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4p;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A05:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A04:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A0J(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A03:F

    return-void
.end method

.method private final A00()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A02:Landroid/graphics/PointF;

    if-eqz v0, :cond_b

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A02:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_c

    :cond_17
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private A01(II)I
    .registers 4

    sub-int v0, p1, p2

    mul-int/2addr p1, v0

    if-gtz p1, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    return v0
.end method

.method private final A03(Landroid/view/View;I)I
    .registers 11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A08()Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0o(Landroid/view/View;)I

    move-result v3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4d;->topMargin:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0j(Landroid/view/View;)I

    move-result v4

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4d;->bottomMargin:I

    add-int/2addr v4, v0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v5

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0X()I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0d()I

    move-result v0

    sub-int/2addr v6, v0

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/ZB;->A0N(IIIII)I

    move-result v0

    return v0
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZB;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x23

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0xce

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZB;->A06:[B

    return-void

    :array_a
    .array-data 1
        0x29t
        0xct
        0xbt
        0x0t
        0x4t
        0x17t
        0x36t
        0x8t
        0xat
        0xat
        0x11t
        0xdt
        0x36t
        0x6t
        0x17t
        0xat
        0x9t
        0x9t
        0x0t
        0x17t
        0x15t
        0x23t
        0x39t
        0x6ct
        0x3ft
        0x24t
        0x23t
        0x39t
        0x20t
        0x28t
        0x6ct
        0x23t
        0x3at
        0x29t
        0x3et
        0x3et
        0x25t
        0x28t
        0x29t
        0x6ct
        0x2ft
        0x23t
        0x21t
        0x3ct
        0x39t
        0x38t
        0x29t
        0x1ft
        0x2ft
        0x3et
        0x23t
        0x20t
        0x20t
        0x1at
        0x29t
        0x2ft
        0x38t
        0x23t
        0x3et
        0xat
        0x23t
        0x3et
        0x1ct
        0x23t
        0x3ft
        0x25t
        0x38t
        0x25t
        0x23t
        0x22t
        0x6ct
        0x3bt
        0x24t
        0x29t
        0x22t
        0x6ct
        0x38t
        0x24t
        0x29t
        0x6ct
        0x0t
        0x2dt
        0x35t
        0x23t
        0x39t
        0x38t
        0x1t
        0x2dt
        0x22t
        0x2dt
        0x2bt
        0x29t
        0x3et
        0x6ct
        0x28t
        0x23t
        0x29t
        0x3ft
        0x6ct
        0x22t
        0x23t
        0x38t
        0x6ct
        0x25t
        0x21t
        0x3ct
        0x20t
        0x29t
        0x21t
        0x29t
        0x22t
        0x38t
        0x6ct
        0x2at
        0x37t
        0x38t
        0x29t
        0x79t
        0x29t
        0x2bt
        0x3ct
        0x3ft
        0x3ct
        0x2bt
        0x3ct
        0x37t
        0x3at
        0x3ct
        0x79t
        0x2at
        0x31t
        0x36t
        0x2ct
        0x35t
        0x3dt
        0x79t
        0x3bt
        0x3ct
        0x79t
        0x36t
        0x37t
        0x3ct
        0x79t
        0x36t
        0x3ft
        0x79t
        0x2dt
        0x31t
        0x3ct
        0x79t
        0x3at
        0x36t
        0x37t
        0x2at
        0x2dt
        0x38t
        0x37t
        0x2dt
        0x2at
        0x79t
        0x3dt
        0x3ct
        0x3ft
        0x30t
        0x37t
        0x3ct
        0x3dt
        0x79t
        0x30t
        0x37t
        0x79t
        0xat
        0x34t
        0x36t
        0x36t
        0x2dt
        0x31t
        0xat
        0x3at
        0x2bt
        0x36t
        0x35t
        0x35t
        0x3ct
        0x2bt
        0x75t
        0x79t
        0x2at
        0x2dt
        0x38t
        0x2bt
        0x2dt
        0x30t
        0x37t
        0x3et
        0x79t
        0x2et
        0x30t
        0x2dt
        0x31t
        0x79t
        0xat
        0x17t
        0x18t
        0x9t
        0x6t
    .end array-data
.end method

.method private final A07(Lcom/facebook/ads/redexgen/X/4n;)V
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A07()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A0P(I)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_17

    iget v0, v2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_22

    iget v0, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_22

    :cond_17
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A07()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4n;->A03(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A09()V

    return-void

    :cond_22
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4p;->A0B(Landroid/graphics/PointF;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/ZB;->A02:Landroid/graphics/PointF;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:I

    iget v0, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A0L(I)I

    move-result v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:I

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v2, v0

    int-to-float v0, v4

    mul-float/2addr v0, v1

    float-to-int v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A05:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4n;->A04(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public final A0G()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A02:Landroid/graphics/PointF;

    return-void
.end method

.method public final A0H(IILcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4n;)V
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A06()I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A09()V

    return-void

    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:I

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/ZB;->A01(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:I

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/ZB;->A01(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZB;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A00:I

    if-nez v0, :cond_23

    if-nez v1, :cond_23

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/ZB;->A07(Lcom/facebook/ads/redexgen/X/4n;)V

    :cond_23
    return-void
.end method

.method public A0I(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4n;)V
    .registers 10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZB;->A0K()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A0O(Landroid/view/View;I)I

    move-result v5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZB;->A00()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A03(Landroid/view/View;I)I

    move-result v4

    mul-int v1, v5, v5

    mul-int v0, v4, v4

    add-int/2addr v1, v0

    int-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A0M(I)I

    move-result v3

    if-lez v3, :cond_28

    neg-int v2, v5

    neg-int v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A04:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/4n;->A04(IIILandroid/view/animation/Interpolator;)V

    :cond_28
    return-void
.end method

.method public A0J(Landroid/util/DisplayMetrics;)F
    .registers 4

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v0

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public A0K()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A02:Landroid/graphics/PointF;

    if-eqz v0, :cond_b

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A02:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_c

    :cond_17
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public A0L(I)I
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZB;->A03:F

    mul-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0
.end method

.method public final A0M(I)I
    .registers 6

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ZB;->A0L(I)I

    move-result v0

    int-to-double v2, v0

    const-wide v0, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    return v0
.end method

.method public final A0N(IIIII)I
    .registers 9

    packed-switch p5, :pswitch_data_22

    const/16 v2, 0x71

    const/16 v1, 0x5d

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_13
    sub-int/2addr p3, p1

    return p3

    :pswitch_15
    sub-int/2addr p3, p1

    if-lez p3, :cond_19

    return p3

    :cond_19
    sub-int/2addr p4, p2

    if-gez p4, :cond_1d

    return p4

    :cond_1d
    const/4 v0, 0x0

    return v0

    :pswitch_1f
    sub-int/2addr p4, p2

    return p4

    nop

    :pswitch_data_22
    .packed-switch -0x1
        :pswitch_13
        :pswitch_15
        :pswitch_1f
    .end packed-switch
.end method

.method public A0O(Landroid/view/View;I)I
    .registers 11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A08()Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0k(Landroid/view/View;)I

    move-result v3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4d;->leftMargin:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0n(Landroid/view/View;)I

    move-result v4

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4d;->rightMargin:I

    add-int/2addr v4, v0

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v5

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0h()I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    sub-int/2addr v6, v0

    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/ZB;->A0N(IIIII)I

    move-result v0

    return v0
.end method

.method public A0P(I)Landroid/graphics/PointF;
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4p;->A08()Lcom/facebook/ads/redexgen/X/4c;

    move-result-object v1

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/4o;

    if-eqz v0, :cond_f

    check-cast v1, Lcom/facebook/ads/redexgen/X/4o;

    invoke-interface {v1, p1}, Lcom/facebook/ads/redexgen/X/4o;->A4L(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x5d

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/4o;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZB;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
