###### Class com.facebook.ads.redexgen.X.RunnableC07704t (com.facebook.ads.redexgen.X.4t)
.class public final Lcom/facebook/ads/redexgen/X/4t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ED;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/animation/Interpolator;

.field public A01:Landroid/widget/OverScroller;

.field public A02:I

.field public A03:I

.field public A04:Z

.field public A05:Z

.field public final synthetic A06:Lcom/facebook/ads/redexgen/X/ED;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "c4xSVVt4fNiIZ9aJ0ftrOCVpKy2EJW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bj77oS7wYHzhrY124YppwtIfPTuDoAHL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mRmZUQV2DMpprRsDQaH8Mtbq5JuQtR14"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UXM5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qfxFRQLCBxpF20va4RNO9ygLlTXV5cTV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Bw29gSSAA0erG37CQVEqOkFPeCj6ZZr8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KVIri1u0fbW7r5jnncTGzAnirlJcKx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TA0EOfT3Z02jNldii3VIEnkki3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4t;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/ED;->A1A:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A00:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A05:Z

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ED;->A1A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/OverScroller;

    return-void
.end method

.method private A00(F)F
    .registers 5

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    return v0
.end method

.method private A01(IIII)I
    .registers 15

    move-object v4, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v6, v5, :cond_64

    const/4 v9, 0x1

    :goto_c
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v7, v0

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    if-eqz v9, :cond_5f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getWidth()I

    move-result v8

    :goto_26
    div-int/lit8 v4, v8, 0x2

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v0, v8

    div-float/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float v2, v4

    int-to-float v1, v4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4t;->A00(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    if-lez v7, :cond_52

    int-to-float v0, v7

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    :goto_4b
    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_52
    if-eqz v9, :cond_5d

    :goto_54
    int-to-float v1, v6

    int-to-float v0, v8

    div-float/2addr v1, v0

    add-float/2addr v1, v3

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_4b

    :cond_5d
    move v6, v5

    goto :goto_54

    :cond_5f
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getHeight()I

    move-result v8

    goto :goto_26

    :cond_64
    const/4 v9, 0x0

    goto :goto_c
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4t;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4t;->A07:[B

    return-void

    :array_a
    .array-data 1
        -0x2et
        -0x2at
        -0x60t
        -0x2dt
        -0x1dt
        -0xet
        -0x11t
        -0x14t
        -0x14t
    .end array-data
.end method

.method private final A04()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A05:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A04:Z

    return-void
.end method

.method private final A05()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A04:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A05:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4t;->A07()V

    :cond_a
    return-void
.end method

.method private final A06(IIII)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4t;->A01(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4t;->A0B(III)V

    return-void
.end method


# virtual methods
.method public final A07()V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A04:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A05:Z

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/ED;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_29

    sget-object v2, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v1, "DBTzn4opHB64KJUt1kyQdTPFEm6jko5S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/3H;->A0D(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A08()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/ED;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public final A09(II)V
    .registers 12

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ED;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4t;->A07()V

    return-void
.end method

.method public final A0A(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4t;->A06(IIII)V

    return-void
.end method

.method public final A0B(III)V
    .registers 5

    sget-object v0, Lcom/facebook/ads/redexgen/X/ED;->A1A:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/4t;->A0C(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final A0C(IIILandroid/view/animation/Interpolator;)V
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A00:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_13

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4t;->A00:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/OverScroller;

    :cond_13
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ED;->setScrollState(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_4d

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/OverScroller;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_43

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_43
    sget-object v2, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v1, "UeYo97OquvC2FnZv3LivDSVIricXCoYT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    :cond_4d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4t;->A07()V

    return-void
.end method

.method public final A0D(IILandroid/view/animation/Interpolator;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4t;->A01(IIII)I

    move-result v0

    if-nez p3, :cond_9

    sget-object p3, Lcom/facebook/ads/redexgen/X/ED;->A1A:Landroid/view/animation/Interpolator;

    :cond_9
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/4t;->A0C(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public final run()V
    .registers 21

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    if-nez v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4t;->A08()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_2d2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v1, "wyRlewweBEsEMs9L1doa5ZD019uED4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4t;->A04()V

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1J()V

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/OverScroller;

    move-object/from16 v19, v0

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/4c;->A02:Lcom/facebook/ads/redexgen/X/4p;

    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_228

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1A(Lcom/facebook/ads/redexgen/X/ED;)[I

    move-result-object v15

    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    iget v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A02:I

    sub-int v5, v7, v0

    iget v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A03:I

    sub-int v4, v6, v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput v7, v9, Lcom/facebook/ads/redexgen/X/4t;->A02:I

    iput v6, v9, Lcom/facebook/ads/redexgen/X/4t;->A03:I

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v10

    move v13, v5

    move v14, v4

    invoke-virtual/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/ED;->A1z(II[I[II)Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_6f

    aget v10, v15, v11

    sub-int/2addr v5, v10

    aget v10, v15, v12

    sub-int/2addr v4, v10

    :cond_6f
    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    if-eqz v10, :cond_113

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->A1K()V

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->A1L()V

    const/4 v13, 0x0

    const/16 v12, 0x9

    const/16 v10, 0x60

    invoke-static {v13, v12, v10}, Lcom/facebook/ads/redexgen/X/4t;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/2e;->A01(Ljava/lang/String;)V

    iget-object v12, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v10, v12, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v12, v10}, Lcom/facebook/ads/redexgen/X/ED;->A1m(Lcom/facebook/ads/redexgen/X/4r;)V

    if-eqz v5, :cond_a6

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v10, v5, v3, v1}, Lcom/facebook/ads/redexgen/X/4c;->A1h(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v3

    sub-int v1, v5, v3

    :cond_a6
    if-eqz v4, :cond_ba

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v10, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A1i(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v2

    sub-int v0, v4, v2

    :cond_ba
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2e;->A00()V

    sget-object v12, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v12, v12, v10

    const/16 v10, 0xa

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v10, 0x6f

    if-eq v12, v10, :cond_2bf

    sget-object v13, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v12, "AEnMZuqp98GVRFTkSbmwbA51QL"

    const/4 v10, 0x7

    aput-object v12, v13, v10

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->A1P()V

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->A1M()V

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/ED;->A1s(Z)V

    if-eqz v8, :cond_fd

    :goto_e4
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4p;->A0E()Z

    move-result v10

    if-nez v10, :cond_fd

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4p;->A0F()Z

    move-result v10

    if-eqz v10, :cond_fd

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v11

    if-nez v11, :cond_2a2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4p;->A09()V

    :cond_fd
    :goto_fd
    sget-object v11, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v11, v11, v10

    const/16 v10, 0xa

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v10, 0x6f

    if-eq v11, v10, :cond_2de

    sget-object v12, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v11, "TGS8taa2nLIFayhr7f7v"

    const/4 v10, 0x3

    aput-object v11, v12, v10

    :cond_113
    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/ED;->A0v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_122

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->invalidate()V

    :cond_122
    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->getOverScrollMode()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_130

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10, v5, v4}, Lcom/facebook/ads/redexgen/X/ED;->A1a(II)V

    :cond_130
    iget-object v12, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    const/16 v17, 0x0

    const/16 v18, 0x1

    move/from16 v16, v0

    move v13, v3

    move v14, v2

    move v15, v1

    invoke-virtual/range {v12 .. v18}, Lcom/facebook/ads/redexgen/X/ED;->A1y(IIII[II)Z

    move-result v10

    if-nez v10, :cond_199

    if-nez v1, :cond_145

    if-eqz v0, :cond_199

    :cond_145
    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v10

    float-to-int v12, v10

    const/4 v13, 0x0

    if-eq v1, v7, :cond_150

    if-gez v1, :cond_29a

    neg-int v13, v12

    :cond_150
    :goto_150
    const/4 v10, 0x0

    if-eq v0, v6, :cond_297

    if-gez v0, :cond_290

    neg-int v12, v12

    :goto_156
    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->getOverScrollMode()I

    move-result v14

    sget-object v16, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v10, v16, v10

    const/4 v15, 0x1

    aget-object v17, v16, v15

    const/16 v15, 0xc

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move-object/from16 v10, v17

    invoke-virtual {v10, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v10, v16

    if-eq v10, v15, :cond_28c

    sget-object v16, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v15, "VAPByUbSVbCRl876Iw5SK7wrPn"

    const/4 v10, 0x7

    aput-object v15, v16, v10

    if-eq v14, v11, :cond_182

    :goto_17d
    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10, v13, v12}, Lcom/facebook/ads/redexgen/X/ED;->A1Z(II)V

    :cond_182
    if-nez v13, :cond_18c

    if-eq v1, v7, :cond_18c

    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    if-nez v1, :cond_199

    :cond_18c
    if-nez v12, :cond_196

    if-eq v0, v6, :cond_196

    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-nez v0, :cond_199

    :cond_196
    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_199
    if-nez v3, :cond_19d

    if-eqz v2, :cond_1b4

    :cond_19d
    iget-object v7, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    sget-object v6, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v6, v0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_27b

    invoke-virtual {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/ED;->A1c(II)V

    :cond_1b4
    :goto_1b4
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ED;->A19(Lcom/facebook/ads/redexgen/X/ED;)Z

    move-result v0

    if-nez v0, :cond_1c1

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->invalidate()V

    :cond_1c1
    if-eqz v4, :cond_278

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v0

    if-eqz v0, :cond_278

    if-ne v2, v4, :cond_278

    const/4 v1, 0x1

    :goto_1d0
    if-eqz v5, :cond_275

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A06:Lcom/facebook/ads/redexgen/X/4c;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    if-eqz v0, :cond_275

    if-ne v3, v5, :cond_275

    const/4 v0, 0x1

    :goto_1df
    if-nez v5, :cond_1e3

    if-eqz v4, :cond_1e7

    :cond_1e3
    if-nez v0, :cond_1e7

    if-eqz v1, :cond_272

    :cond_1e7
    const/4 v6, 0x1

    :goto_1e8
    invoke-virtual/range {v19 .. v19}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_2d8

    sget-object v2, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v1, "98aPJs2vUpcbHQSYyxrV3zG03CSHn11I"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_20f

    if-nez v6, :cond_25f

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ED;->A1w(I)Z

    move-result v0

    if-nez v0, :cond_25f

    :cond_20f
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ED;->setScrollState(I)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ED;->A10()Z

    move-result v0

    if-eqz v0, :cond_222

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZD;->A02()V

    :cond_222
    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ED;->A1Y(I)V

    :cond_228
    :goto_228
    if-eqz v8, :cond_25b

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4p;->A0E()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2d2

    sget-object v2, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v1, "1QtdEsEbLTCaQSWKyl1hJXPObs6yvI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "gIBnLdKBfiMzk6Ug2irxti7V3sW67K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_254

    const/4 v0, 0x0

    invoke-static {v8, v0, v0}, Lcom/facebook/ads/redexgen/X/4p;->A05(Lcom/facebook/ads/redexgen/X/4p;II)V

    :cond_254
    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A05:Z

    if-nez v0, :cond_25b

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4p;->A09()V

    :cond_25b
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4t;->A05()V

    return-void

    :cond_25f
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4t;->A07()V

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/4D;

    if-eqz v0, :cond_228

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ED;->A03:Lcom/facebook/ads/redexgen/X/4D;

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v1, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/4D;->A0B(Lcom/facebook/ads/redexgen/X/ED;II)V

    goto :goto_228

    :cond_272
    const/4 v6, 0x0

    goto/16 :goto_1e8

    :cond_275
    const/4 v0, 0x0

    goto/16 :goto_1df

    :cond_278
    const/4 v1, 0x0

    goto/16 :goto_1d0

    :cond_27b
    sget-object v6, Lcom/facebook/ads/redexgen/X/4t;->A08:[Ljava/lang/String;

    const-string v1, "bSHjdsVkhDQdmG1cm4T37Ejfm8kVFC"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const-string v1, "uWlM2d1CCrIfar3HOPPYeFU5881RH0"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    invoke-virtual {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/ED;->A1c(II)V

    goto/16 :goto_1b4

    :cond_28c
    if-eq v14, v11, :cond_182

    goto/16 :goto_17d

    :cond_290
    if-lez v0, :cond_294

    goto/16 :goto_156

    :cond_294
    const/4 v12, 0x0

    goto/16 :goto_156

    :cond_297
    move v12, v10

    goto/16 :goto_156

    :cond_29a
    if-lez v1, :cond_29f

    move v13, v12

    goto/16 :goto_150

    :cond_29f
    const/4 v13, 0x0

    goto/16 :goto_150

    :cond_2a2
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4p;->A07()I

    move-result v10

    if-lt v10, v11, :cond_2b6

    add-int/lit8 v10, v11, -0x1

    invoke-virtual {v8, v10}, Lcom/facebook/ads/redexgen/X/4p;->A0A(I)V

    sub-int v11, v5, v1

    sub-int v10, v4, v0

    invoke-static {v8, v11, v10}, Lcom/facebook/ads/redexgen/X/4p;->A05(Lcom/facebook/ads/redexgen/X/4p;II)V

    goto/16 :goto_fd

    :cond_2b6
    sub-int v11, v5, v1

    sub-int v10, v4, v0

    invoke-static {v8, v11, v10}, Lcom/facebook/ads/redexgen/X/4p;->A05(Lcom/facebook/ads/redexgen/X/4p;II)V

    goto/16 :goto_fd

    :cond_2bf
    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->A1P()V

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/ED;->A1M()V

    iget-object v10, v9, Lcom/facebook/ads/redexgen/X/4t;->A06:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/ED;->A1s(Z)V

    if-eqz v8, :cond_fd

    goto/16 :goto_e4

    :cond_2d2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2de
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
