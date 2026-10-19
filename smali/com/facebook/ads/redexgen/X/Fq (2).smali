###### Class com.facebook.ads.redexgen.X.C1021Fq (com.facebook.ads.redexgen.X.Fq)
.class public final Lcom/facebook/ads/redexgen/X/Fq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/35;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A08:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ae51WtdtbsQ7oHVSUK2kH2lkhYtCD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qx7lDBYo1odo5Y55vJBjPuPd0SCIUsyA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8Fm6CMM7j8ObWzEih"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Wlrw6QUG7RBgeIlzL5kKGv4h4BsSo73q"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KMN6ZJtdLdMqvcVUA0dmI7c1fz02SP9b"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8oEfNfnBPUmBxW5HI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "jCL3JtrXJCo63I6Hw50xrAvVkRQtnXEj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6zRYHFDNSsaLRa7ASpeJIQcC6Xopjreo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A09:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A08:[I

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Fq;Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fq;->A05(Lcom/facebook/ads/redexgen/X/Hh;I)V

    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Fq;Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fq;->A03(Lcom/facebook/ads/redexgen/X/Hh;I)V

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Fq;Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fq;->A04(Lcom/facebook/ads/redexgen/X/Hh;I)V

    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 9

    const/4 v4, 0x4

    if-ge p2, v4, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    :goto_11
    add-int/lit8 v3, p2, -0x4

    if-eqz v0, :cond_5b

    const/4 v5, 0x7

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_30

    :goto_2a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_30
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A09:[Ljava/lang/String;

    const-string v1, "m4TsyqBzkyxUuct48"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "zfIYrv7wq9TBAE9Jz"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_3f

    return-void

    :cond_3f
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v2

    if-ge v2, v4, :cond_46

    return-void

    :cond_46
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    add-int/lit8 v0, v2, -0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    add-int/lit8 v3, v3, -0x7

    :cond_5b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    if-ge v4, v0, :cond_9b

    if-lez v3, :cond_9b

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A09:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_89

    goto :goto_2a

    :cond_87
    const/4 v0, 0x0

    goto :goto_11

    :cond_89
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A09:[Ljava/lang/String;

    const-string v1, "1YWr3OwQ0jPjYWbciqj9BosGRiIvHZyi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-virtual {p1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    :cond_9b
    return-void
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 4

    const/16 v0, 0x13

    if-ge p2, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A05:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A04:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A02:I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:I

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 20

    move-object/from16 v8, p0

    rem-int/lit8 v1, p2, 0x5

    const/4 v0, 0x2

    if-eq v1, v0, :cond_8

    return-void

    :cond_8
    move-object/from16 v10, p1

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Fq;->A08:[I

    const/4 v7, 0x0

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v6, p2, 0x5

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v6, :cond_78

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v16

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v9

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v15

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v13

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v14

    int-to-double v0, v9

    add-int/lit8 v2, v15, -0x80

    int-to-double v2, v2

    const-wide v11, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v2, v11

    add-double/2addr v0, v2

    double-to-int v4, v0

    int-to-double v2, v9

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v11, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v0, v11

    sub-double/2addr v2, v0

    add-int/lit8 v0, v15, -0x80

    int-to-double v0, v0

    const-wide v11, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v0, v11

    sub-double/2addr v2, v0

    double-to-int v11, v2

    int-to-double v2, v9

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v12, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v0, v12

    add-double/2addr v2, v0

    double-to-int v9, v2

    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/Fq;->A08:[I

    shl-int/lit8 v2, v14, 0x18

    const/16 v1, 0xff

    invoke-static {v4, v7, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v2, v0

    invoke-static {v11, v7, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v2, v0

    invoke-static {v9, v7, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v0

    or-int/2addr v2, v0

    aput v2, v3, v16

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_78
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/facebook/ads/redexgen/X/Fq;->A06:Z

    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/FV;
    .registers 12

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A05:I

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A04:I

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:I

    if-eqz v0, :cond_40

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:I

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    if-ne v1, v0, :cond_40

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fq;->A06:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fq;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x56

    if-eq v1, v0, :cond_c0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fq;->A09:[Ljava/lang/String;

    const-string v1, "nq70zeHujM7cnH9A4IhpB5iOObfNW5He"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_42

    :cond_40
    const/4 v0, 0x0

    return-object v0

    :cond_42
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:I

    mul-int/2addr v1, v0

    new-array v3, v1, [I

    const/4 v4, 0x0

    :cond_50
    :goto_50
    array-length v0, v3

    if-ge v4, v0, :cond_96

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v2

    if-eqz v2, :cond_65

    add-int/lit8 v1, v4, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A08:[I

    aget v0, v0, v2

    aput v0, v3, v4

    move v4, v1

    goto :goto_50

    :cond_65
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v2

    if-eqz v2, :cond_50

    and-int/lit8 v0, v2, 0x40

    if-nez v0, :cond_8a

    and-int/lit8 v1, v2, 0x3f

    :goto_73
    and-int/lit16 v0, v2, 0x80

    if-nez v0, :cond_7f

    const/4 v2, 0x0

    :goto_78
    add-int v0, v4, v1

    invoke-static {v3, v4, v0, v2}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v4, v1

    goto :goto_50

    :cond_7f
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fq;->A08:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    aget v2, v2, v0

    goto :goto_78

    :cond_8a
    and-int/lit8 v0, v2, 0x3f

    shl-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_73

    :cond_96
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/FV;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A02:I

    int-to-float v5, v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Fq;->A05:I

    int-to-float v0, v2

    div-float/2addr v5, v0

    const/4 v6, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:I

    int-to-float v7, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A04:I

    int-to-float v0, v1

    div-float/2addr v7, v0

    const/4 v8, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:I

    int-to-float v9, v0

    int-to-float v0, v2

    div-float/2addr v9, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:I

    int-to-float v10, v0

    int-to-float v0, v1

    div-float/2addr v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    return-object v3

    :cond_c0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A07()V
    .registers 3

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A05:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A04:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A02:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A01:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fq;->A07:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fq;->A06:Z

    return-void
.end method
