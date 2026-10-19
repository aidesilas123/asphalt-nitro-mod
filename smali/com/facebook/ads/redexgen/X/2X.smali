###### Class com.facebook.ads.redexgen.X.C2X (com.facebook.ads.redexgen.X.2X)
.class public final Lcom/facebook/ads/redexgen/X/2X;
.super Landroid/graphics/drawable/Drawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2W;
    }
.end annotation


# static fields
.field public static A0G:Lcom/facebook/ads/redexgen/X/2W;

.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:D


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:Landroid/content/res/ColorStateList;

.field public A05:Landroid/graphics/Paint;

.field public A06:Landroid/graphics/Paint;

.field public A07:Landroid/graphics/Paint;

.field public A08:Landroid/graphics/Path;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:I

.field public final A0D:I

.field public final A0E:I

.field public final A0F:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YEFrjfwCEWu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GYovhjhdb5Je"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "S1Fz"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LeiEw92n2EsObareFd"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xgqXw3gEiUgyln4SIM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "kGClknFKKNldAaaK4EgXWOsNKvCYjz7L"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I70UDyBH67pytg1dUxrP2KgAWNh3bG3K"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2X;->A05()V

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/2X;->A0J:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V
    .registers 10

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A09:Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/2X;->A0B:Z

    const/high16 v0, 0x37000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0E:I

    const/high16 v0, 0x3000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/2S;->A09:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0C:I

    const/4 v2, 0x5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A07:Landroid/graphics/Paint;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2X;->A07(Landroid/content/res/ColorStateList;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-direct {p0, p4, p5}, Lcom/facebook/ads/redexgen/X/2X;->A06(FF)V

    return-void
.end method

.method public static A00(FFZ)F
    .registers 8

    if-eqz p2, :cond_2b

    float-to-double v4, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_25

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v1, "P9aPeBSvznAhF57KLP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "W3RUpaMuYeMV1XeTAU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v0, Lcom/facebook/ads/redexgen/X/2X;->A0J:D

    sub-double/2addr v2, v0

    float-to-double v0, p1

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    return v0

    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    return p0
.end method

.method public static A01(FFZ)F
    .registers 8

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_10

    mul-float/2addr v0, p0

    float-to-double v4, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v0, Lcom/facebook/ads/redexgen/X/2X;->A0J:D

    sub-double/2addr v2, v0

    float-to-double v0, p1

    mul-double/2addr v2, v0

    add-double/2addr v4, v2

    double-to-float v0, v4

    return v0

    :cond_10
    mul-float/2addr v0, p0

    return v0
.end method

.method private A02(F)I
    .registers 6

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v2, v0

    rem-int/lit8 v1, v2, 0x2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_30

    add-int/lit8 v3, v2, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2a

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v1, "0g5GSSLFt9w"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EJV6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_30
    return v2
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v1, "Hial5Dc7DTVcebgm6Z"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "T1onITFvXBLfXkfgru"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_3b

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x45

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .registers 15

    move-object v0, p0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v2, v3

    neg-float v1, v3

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v1, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v1, v0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    neg-float v2, v1

    neg-float v1, v1

    invoke-virtual {v7, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    if-nez v1, :cond_a8

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    :goto_21
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v1, v1

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    neg-float v1, v1

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    invoke-virtual {v4, v7, v3, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    const/high16 v3, 0x43870000    # 270.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget v4, v0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    iget v2, v0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    add-float/2addr v2, v4

    div-float/2addr v4, v2

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/RadialGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v2, v0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    iget v10, v0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    add-float/2addr v10, v2

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2X;->A0E:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/2X;->A0D:I

    filled-new-array {v3, v3, v2}, [I

    move-result-object v11

    const/4 v2, 0x3

    new-array v12, v2, [F

    aput v6, v12, v1

    const/4 v3, 0x1

    aput v4, v12, v3

    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v12, v4

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v8, v4

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    add-float/2addr v8, v3

    const/4 v9, 0x0

    neg-float v10, v4

    sub-float/2addr v10, v3

    iget v4, v0, Lcom/facebook/ads/redexgen/X/2X;->A0E:I

    iget v3, v0, Lcom/facebook/ads/redexgen/X/2X;->A0D:I

    filled-new-array {v4, v4, v3}, [I

    move-result-object v11

    new-array v12, v2, [F

    fill-array-data v12, :array_ae

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_a8
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_21

    nop

    :array_ae
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/2X;->A0H:[B

    return-void

    :array_a
    .array-data 1
        0x72t
        0x7ct
        0x11t
        0x29t
        0x2ft
        0x28t
        0x7ct
        0x3et
        0x39t
        0x7ct
        0x62t
        0x61t
        0x7ct
        0x6ct
        0x73t
        0x54t
        0x4ct
        0x5bt
        0x56t
        0x53t
        0x5et
        0x1at
        0x57t
        0x5bt
        0x42t
        0x1at
        0x49t
        0x52t
        0x5bt
        0x5et
        0x55t
        0x4dt
        0x1at
        0x49t
        0x53t
        0x40t
        0x5ft
        0x1at
        0x8t
        0x2ft
        0x37t
        0x20t
        0x2dt
        0x28t
        0x25t
        0x61t
        0x33t
        0x20t
        0x25t
        0x28t
        0x34t
        0x32t
        0x61t
        0x1t
        0x26t
        0x3et
        0x29t
        0x24t
        0x21t
        0x2ct
        0x68t
        0x3bt
        0x20t
        0x29t
        0x2ct
        0x27t
        0x3ft
        0x68t
        0x3bt
        0x21t
        0x32t
        0x2dt
        0x68t
    .end array-data
.end method

.method private A06(FF)V
    .registers 8

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_9e

    cmpg-float v3, p2, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_22

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v1, "3ZLq2wnsXXEHTe1p9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ltz v3, :cond_79

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A02(F)I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/2X;->A02(F)I

    move-result v0

    int-to-float v1, v0

    const/4 v4, 0x1

    cmpl-float v0, v2, v1

    if-lez v0, :cond_41

    move v2, v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0B:Z

    if-nez v0, :cond_41

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A0B:Z

    :cond_41
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_4e

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4e

    return-void

    :cond_4e
    iput v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:F

    iput v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1c

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v1, "TJpNel9JPCCGijw6acwFd0iMJz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0C:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A0A:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->invalidateSelf()V

    return-void

    :cond_79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x18

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    const/16 v1, 0x14

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A07(Landroid/content/res/ColorStateList;)V
    .registers 8

    if-nez p1, :cond_7

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_7
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2X;->A04:Landroid/content/res/ColorStateList;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A07:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->getState()[I

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A04:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v1, "VZiE9OVYqDu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "EWr6"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Landroid/graphics/Canvas;)V
    .registers 17

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v11, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    sub-float/2addr v11, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0C:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v1, v0, v8

    sub-float/2addr v2, v1

    const/4 v7, 0x1

    const/4 v3, 0x0

    cmpl-float v1, v2, v3

    if-lez v1, :cond_126

    const/4 v4, 0x1

    :goto_20
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v0, v8

    sub-float/2addr v2, v1

    cmpl-float v1, v2, v3

    if-lez v1, :cond_123

    :goto_2d
    move-object/from16 v9, p1

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v4, :cond_5b

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v1, v0, v8

    sub-float/2addr v12, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v13, v1

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5b
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v4, :cond_92

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v12

    mul-float v1, v0, v8

    sub-float/2addr v12, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v13, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A03:F

    add-float/2addr v13, v1

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_92
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_129

    sget-object v4, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v2, "QAUm"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_d9

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float v1, v0, v8

    sub-float/2addr v12, v1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v13, v1

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_d9
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->top:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x3

    if-eq v2, v1, :cond_129

    sget-object v4, Lcom/facebook/ads/redexgen/X/2X;->A0I:[Ljava/lang/String;

    const-string v2, "4hs9knzgsM3vbS2"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    add-float/2addr v5, v0

    invoke-virtual {v9, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A08:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    invoke-virtual {v9, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_11f

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v12

    mul-float/2addr v8, v0

    sub-float/2addr v12, v8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    neg-float v13, v0

    iget-object v14, p0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_11f
    invoke-virtual {v9, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_123
    const/4 v7, 0x0

    goto/16 :goto_2d

    :cond_126
    const/4 v4, 0x0

    goto/16 :goto_20

    :cond_129
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(Landroid/graphics/Rect;)V
    .registers 8

    iget v5, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    add-float/2addr v3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    add-float/2addr v2, v5

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    sub-float/2addr v1, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, v5

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2X;->A04()V

    return-void
.end method


# virtual methods
.method public final A0A()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    return v0
.end method

.method public final A0B()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    return v0
.end method

.method public final A0C()F
    .registers 6

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float v0, v2, v4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    mul-float/2addr v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public final A0D()F
    .registers 5

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    add-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0C:I

    int-to-float v0, v0

    add-float/2addr v1, v0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public final A0E()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:F

    return v0
.end method

.method public final A0F()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A04:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final A0G(F)V
    .registers 6

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1a

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_11

    return-void

    :cond_11
    iput v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0A:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->invalidateSelf()V

    return-void

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x26

    const/16 v1, 0xf

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0H(F)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:F

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A06(FF)V

    return-void
.end method

.method public final A0I(F)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A06(FF)V

    return-void
.end method

.method public final A0J(Landroid/content/res/ColorStateList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A07(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->invalidateSelf()V

    return-void
.end method

.method public final A0K(Landroid/graphics/Rect;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public final A0L(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/2X;->A09:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->invalidateSelf()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0A:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/2X;->A09(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0A:Z

    :cond_e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2X;->A08(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A02:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/2X;->A0G:Lcom/facebook/ads/redexgen/X/2W;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A0F:Landroid/graphics/RectF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A07:Landroid/graphics/Paint;

    invoke-interface {v3, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2W;->A59(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .registers 6

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A09:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A01(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2X;->A01:F

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A00:F

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A09:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2X;->A00(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-virtual {p1, v0, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    return v0
.end method

.method public final isStateful()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A04:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_a
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0A:Z

    return-void
.end method

.method public final onStateChange([I)Z
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2X;->A04:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A0A:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2X;->invalidateSelf()V

    return v0
.end method

.method public final setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A05:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A06:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2X;->A07:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
