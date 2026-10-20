###### Class com.facebook.ads.redexgen.X.C1020Fp (com.facebook.ads.redexgen.X.Fp)
.class public final Lcom/facebook/ads/redexgen/X/Fp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fj;,
        Lcom/facebook/ads/redexgen/X/Fh;,
        Lcom/facebook/ads/redexgen/X/Fn;,
        Lcom/facebook/ads/redexgen/X/Fm;,
        Lcom/facebook/ads/redexgen/X/Fl;,
        Lcom/facebook/ads/redexgen/X/Fk;,
        Lcom/facebook/ads/redexgen/X/Fi;,
        Lcom/facebook/ads/redexgen/X/Fo;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:[B

.field public static final A0A:[B

.field public static final A0B:[B


# instance fields
.field public A00:Landroid/graphics/Bitmap;

.field public final A01:Landroid/graphics/Canvas;

.field public final A02:Landroid/graphics/Paint;

.field public final A03:Landroid/graphics/Paint;

.field public final A04:Lcom/facebook/ads/redexgen/X/Fh;

.field public final A05:Lcom/facebook/ads/redexgen/X/Fi;

.field public final A06:Lcom/facebook/ads/redexgen/X/Fo;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qcU5l5rVDanZ0IBZnB67EILhI18GgdFe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "32XpuNghlFeF4zyqPL948gmCUNCGk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bftD5DkqR73p2Uf2yBhEF5T9UOvyv9s"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qryxRa4yOsFNWhLtu25s3YxhDLRy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tLr9RBWs5E21"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UeFN6nMF8sjHvHxScJIKm37Ehl9oCVg2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fp;->A0A()V

    const/4 v1, 0x4

    new-array v0, v1, [B

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fp;->A09:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_50

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fp;->A0A:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_56

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fp;->A0B:[B

    return-void

    :array_4a
    .array-data 1
        0x0t
        0x7t
        0x8t
        0xft
    .end array-data

    :array_50
    .array-data 1
        0x0t
        0x77t
        -0x78t
        -0x1t
    .end array-data

    :array_56
    .array-data 1
        0x0t
        0x11t
        0x22t
        0x33t
        0x44t
        0x55t
        0x66t
        0x77t
        -0x78t
        -0x67t
        -0x56t
        -0x45t
        -0x34t
        -0x23t
        -0x12t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(II)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Fp;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Fp;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A01:Landroid/graphics/Canvas;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Fi;

    const/16 v2, 0x2cf

    const/16 v3, 0x23f

    const/4 v4, 0x0

    const/16 v5, 0x2cf

    const/4 v6, 0x0

    const/16 v7, 0x23f

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Fi;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Fp;->A05:Lcom/facebook/ads/redexgen/X/Fi;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fp;->A0F()[I

    move-result-object v3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fp;->A0G()[I

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fp;->A0H()[I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fh;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Fh;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A04:Lcom/facebook/ads/redexgen/X/Fh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fo;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fo;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    return-void
.end method

.method public static A00(IIII)I
    .registers 5

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v0, p1, 0x10

    or-int/2addr p0, v0

    shl-int/lit8 v0, p2, 0x8

    or-int/2addr p0, v0

    or-int/2addr p0, p3

    return p0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hg;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 21

    move/from16 v3, p3

    const/4 v7, 0x0

    :cond_3
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    if-eqz v6, :cond_28

    const/4 v5, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_20

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "cKDkKJCaTP5Z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    goto :goto_46

    :cond_28
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_69

    :goto_46
    if-eqz v5, :cond_65

    move-object/from16 v1, p5

    if-eqz v1, :cond_65

    if-eqz p2, :cond_50

    aget-byte v6, p2, v6

    :cond_50
    aget v0, p1, v6

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v3

    move/from16 v2, p4

    int-to-float v10, v2

    add-int v0, v3, v5

    int-to-float v11, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v12, v0

    move-object v13, v1

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_65
    add-int/2addr v3, v5

    if-eqz v7, :cond_3

    return v3

    :cond_69
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "Xe5wyvwrL1rxQiCfD8ENREY9AaRUH"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_46

    :cond_71
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/4 v5, 0x1

    move v6, v1

    goto :goto_46

    :cond_7a
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    move v6, v1

    goto :goto_46

    :pswitch_83
    const/4 v7, 0x1

    move v6, v1

    goto :goto_46

    :pswitch_86
    const/4 v5, 0x2

    move v6, v1

    goto :goto_46

    :pswitch_89
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/lit8 v5, v0, 0xc

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    goto :goto_46

    :pswitch_95
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1d

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_b0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "eZC8v48u"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    goto :goto_46

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_83
        :pswitch_86
        :pswitch_89
        :pswitch_95
    .end packed-switch
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Hg;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 21

    move/from16 v3, p3

    const/4 v7, 0x0

    :cond_3
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v6, 0x1

    :goto_d
    if-eqz v6, :cond_46

    move-object/from16 v4, p5

    if-eqz v4, :cond_46

    if-eqz p2, :cond_17

    aget-byte v0, p2, v0

    :cond_17
    aget v0, p1, v0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v3

    move/from16 v5, p4

    int-to-float v10, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_33

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_33
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "PxagUxU0Gd3Wd2jZQY5J7se2mW8fT"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    add-int v0, v3, v6

    int-to-float v11, v0

    add-int/lit8 v0, v5, 0x1

    int-to-float v12, v0

    move-object v13, v4

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_46
    add-int/2addr v3, v6

    if-eqz v7, :cond_3

    return v3

    :cond_4a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    if-nez v0, :cond_5e

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    if-eqz v0, :cond_5b

    add-int/lit8 v6, v0, 0x2

    const/4 v0, 0x0

    goto :goto_d

    :cond_5b
    const/4 v7, 0x1

    move v0, v5

    goto :goto_d

    :cond_5e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v1

    const/4 v0, 0x2

    if-nez v1, :cond_70

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    goto :goto_d

    :cond_70
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    packed-switch v0, :pswitch_data_d6

    move v0, v5

    goto :goto_d

    :pswitch_79
    const/4 v6, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_89

    move v0, v5

    goto :goto_d

    :cond_89
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "b"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "RKCQrML1KI9i2rbeBXbE06C32ORX"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    move v0, v5

    goto/16 :goto_d

    :pswitch_98
    const/4 v6, 0x2

    move v0, v5

    goto/16 :goto_d

    :pswitch_9c
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x9

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    goto/16 :goto_d

    :pswitch_a8
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x19

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_cf

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "tDVEwF5JbpPt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    goto/16 :goto_d

    :cond_cf
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_79
        :pswitch_98
        :pswitch_9c
        :pswitch_a8
    .end packed-switch
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Hg;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .registers 21

    move/from16 v3, p3

    const/4 v7, 0x0

    :cond_3
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    if-eqz v0, :cond_31

    const/4 v4, 0x1

    :goto_e
    if-eqz v4, :cond_2d

    move-object/from16 v1, p5

    if-eqz v1, :cond_2d

    if-eqz p2, :cond_18

    aget-byte v0, p2, v0

    :cond_18
    aget v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v9, v3

    move/from16 v2, p4

    int-to-float v10, v2

    add-int v0, v3, v4

    int-to-float v11, v0

    add-int/lit8 v0, v2, 0x1

    int-to-float v12, v0

    move-object v13, v1

    move-object/from16 v8, p6

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2d
    add-int/2addr v3, v4

    if-eqz v7, :cond_3

    return v3

    :cond_31
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v1

    const/4 v0, 0x7

    if-nez v1, :cond_5e

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_4f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "SuejjuLnG0h9t9VMaryqiTg33Oi2Z"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_5a

    const/4 v0, 0x0

    goto :goto_e

    :cond_5a
    const/4 v7, 0x1

    move v4, v6

    move v0, v5

    goto :goto_e

    :cond_5e
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    goto :goto_e
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hg;I)Lcom/facebook/ads/redexgen/X/Fh;
    .registers 19

    const/16 v1, 0x8

    move-object/from16 v8, p0

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v11

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    add-int/lit8 v16, p1, -0x2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fp;->A0F()[I

    move-result-object v10

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fp;->A0G()[I

    move-result-object v7

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fp;->A0H()[I

    move-result-object v6

    :goto_19
    if-lez v16, :cond_ba

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result p1

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v3

    add-int/lit8 v2, v16, -0x2

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_ae

    move-object/from16 p0, v10

    :goto_2b
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_92

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v9

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v13

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v12

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    add-int/lit8 v16, v2, -0x4

    :goto_41
    if-nez v9, :cond_47

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v0, 0xff

    :cond_47
    and-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    int-to-byte v5, v0

    int-to-double v0, v9

    add-int/lit8 v2, v13, -0x80

    int-to-double v2, v2

    const-wide v14, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v2, v14

    add-double/2addr v0, v2

    double-to-int v4, v0

    int-to-double v2, v9

    add-int/lit8 v0, v12, -0x80

    int-to-double v0, v0

    const-wide v14, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v0, v14

    sub-double/2addr v2, v0

    add-int/lit8 v0, v13, -0x80

    int-to-double v0, v0

    const-wide v13, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double/2addr v0, v13

    sub-double/2addr v2, v0

    double-to-int v13, v2

    int-to-double v2, v9

    add-int/lit8 v0, v12, -0x80

    int-to-double v0, v0

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v0, v14

    add-double/2addr v2, v0

    double-to-int v9, v2

    const/4 v3, 0x0

    const/16 v0, 0xff

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v2

    invoke-static {v13, v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v1

    invoke-static {v9, v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v0

    invoke-static {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v0

    aput v0, p0, p1

    const/16 v1, 0x8

    goto :goto_19

    :cond_92
    const/4 v0, 0x6

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v9

    const/4 v1, 0x2

    shl-int/2addr v9, v1

    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v13

    shl-int/2addr v13, v0

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    shl-int/lit8 v12, v0, 0x4

    invoke-virtual {v8, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v16, v2, -0x2

    goto :goto_41

    :cond_ae
    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_b6

    move-object/from16 p0, v7

    goto/16 :goto_2b

    :cond_b6
    move-object/from16 p0, v6

    goto/16 :goto_2b

    :cond_ba
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fh;

    invoke-direct {v0, v11, v10, v7, v6}, Lcom/facebook/ads/redexgen/X/Fh;-><init>(I[I[I[I)V

    return-object v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hg;)Lcom/facebook/ads/redexgen/X/Fi;
    .registers 8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v3

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result p0

    :goto_28
    new-instance v1, Lcom/facebook/ads/redexgen/X/Fi;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Fi;-><init>(IIIIII)V

    return-object v1

    :cond_2e
    const/4 v4, 0x0

    const/4 v6, 0x0

    move p0, v3

    move v5, v2

    goto :goto_28
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hg;)Lcom/facebook/ads/redexgen/X/Fj;
    .registers 8

    const/16 v6, 0x10

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2c

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    :cond_26
    :goto_26
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fj;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Fj;-><init>(IZ[B[B)V

    return-object v0

    :cond_2c
    if-nez v1, :cond_26

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    const/4 v0, 0x0

    if-lez v2, :cond_3e

    new-array v3, v2, [B

    invoke-virtual {p0, v3, v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A0E([BII)V

    :cond_3e
    if-lez v1, :cond_46

    new-array v2, v1, [B

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A0E([BII)V

    goto :goto_26

    :cond_46
    move-object v2, v3

    goto :goto_26
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Hg;I)Lcom/facebook/ads/redexgen/X/Fk;
    .registers 12

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v7

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    add-int/lit8 v5, p1, -0x2

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_1a
    if-lez v5, :cond_38

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v3

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    add-int/lit8 v5, v5, -0x6

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Fl;-><init>(II)V

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1a

    :cond_38
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fk;

    invoke-direct {v0, v8, v7, v6, v4}, Lcom/facebook/ads/redexgen/X/Fk;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Hg;I)Lcom/facebook/ads/redexgen/X/Fm;
    .registers 27

    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v10

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v11

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v12

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v13

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v14

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v15

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v16

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v17

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v18

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v19

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    add-int/lit8 v9, p1, -0xa

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    :goto_44
    if-lez v9, :cond_83

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v7

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v22

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v23

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v24

    add-int/lit8 v9, v9, -0x6

    const/16 p0, 0x0

    const/16 p1, 0x0

    const/4 v5, 0x1

    if-eq v6, v5, :cond_6a

    if-ne v6, v2, :cond_74

    :cond_6a
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result p1

    add-int/lit8 v9, v9, -0x2

    :cond_74
    new-instance v20, Lcom/facebook/ads/redexgen/X/Fn;

    move-object/from16 v1, v20

    move/from16 v21, v6

    invoke-direct/range {v20 .. v26}, Lcom/facebook/ads/redexgen/X/Fn;-><init>(IIIIII)V

    invoke-virtual {v8, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    goto :goto_44

    :cond_83
    new-instance v9, Lcom/facebook/ads/redexgen/X/Fm;

    move-object/from16 v20, v8

    invoke-direct/range {v9 .. v20}, Lcom/facebook/ads/redexgen/X/Fm;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v9
.end method

.method public static A09(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0A()V
    .registers 1

    const/16 v0, 0x28

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fp;->A07:[B

    return-void

    :array_a
    .array-data 1
        0x12t
        0x37t
        0x22t
        0x37t
        0x76t
        0x30t
        0x3ft
        0x33t
        0x3at
        0x32t
        0x76t
        0x3at
        0x33t
        0x38t
        0x31t
        0x22t
        0x3et
        0x76t
        0x33t
        0x2et
        0x35t
        0x33t
        0x33t
        0x32t
        0x25t
        0x76t
        0x3at
        0x3ft
        0x3bt
        0x3ft
        0x22t
        0x6at
        0x58t
        0x4ct
        0x7et
        0x4ft
        0x5ct
        0x5dt
        0x4bt
        0x5ct
    .end array-data
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/Fj;Lcom/facebook/ads/redexgen/X/Fh;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 16

    const/4 v0, 0x3

    move v4, p2

    if-ne v4, v0, :cond_17

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Fh;->A03:[I

    :goto_6
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fj;->A03:[B

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Fp;->A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fj;->A02:[B

    add-int/lit8 v6, v6, 0x1

    invoke-static/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Fp;->A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void

    :cond_17
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_34

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "74G7JuTvJBV0INH1XI3DUfK6d2EWZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_31

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Fh;->A02:[I

    goto :goto_6

    :cond_31
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Fh;->A01:[I

    goto :goto_6

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Hg;Lcom/facebook/ads/redexgen/X/Fo;)V
    .registers 8

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A02()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/lit8 v1, v2, 0x8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A01()I

    move-result v0

    if-le v1, v0, :cond_3b

    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fp;->A09(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fp;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A01()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    return-void

    :cond_3b
    packed-switch v5, :pswitch_data_12c

    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hg;->A02()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hg;->A09(I)V

    return-void

    :pswitch_47
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A03:I

    if-ne v4, v0, :cond_3e

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/Fo;->A01:Lcom/facebook/ads/redexgen/X/Fk;

    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fp;->A07(Lcom/facebook/ads/redexgen/X/Hg;I)Lcom/facebook/ads/redexgen/X/Fk;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_80

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "SOWWurFjCTsQ5JKY9OnGZdezCI3KtXYI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "V4dNvY88haURe4qy074bHXOdfnJc7iQY"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Fk;->A00:I

    if-eqz v0, :cond_8c

    :goto_6e
    iput-object v4, p1, Lcom/facebook/ads/redexgen/X/Fo;->A01:Lcom/facebook/ads/redexgen/X/Fk;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A07:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_3e

    :cond_80
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "eHaCLq5ayPLh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Fk;->A00:I

    if-eqz v0, :cond_8c

    goto :goto_6e

    :cond_8c
    if-eqz v5, :cond_3e

    iget v1, v5, Lcom/facebook/ads/redexgen/X/Fk;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/Fk;->A02:I

    if-eq v1, v0, :cond_3e

    iput-object v4, p1, Lcom/facebook/ads/redexgen/X/Fo;->A01:Lcom/facebook/ads/redexgen/X/Fk;

    goto :goto_3e

    :pswitch_97
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fo;->A01:Lcom/facebook/ads/redexgen/X/Fk;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A03:I

    if-ne v4, v0, :cond_3e

    if-eqz v1, :cond_3e

    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fp;->A08(Lcom/facebook/ads/redexgen/X/Hg;I)Lcom/facebook/ads/redexgen/X/Fm;

    move-result-object v5

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fk;->A00:I

    if-nez v0, :cond_b4

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fo;->A08:Landroid/util/SparseArray;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Fm;->A03:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fm;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Fm;->A00(Lcom/facebook/ads/redexgen/X/Fm;)V

    :cond_b4
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Fo;->A08:Landroid/util/SparseArray;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_126

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "mahKYWCII7kQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Fm;->A03:I

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3e

    :pswitch_d6
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A03:I

    if-ne v4, v0, :cond_e7

    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fp;->A04(Lcom/facebook/ads/redexgen/X/Hg;I)Lcom/facebook/ads/redexgen/X/Fh;

    move-result-object v2

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fh;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3e

    :cond_e7
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A02:I

    if-ne v4, v0, :cond_3e

    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/Fp;->A04(Lcom/facebook/ads/redexgen/X/Hg;I)Lcom/facebook/ads/redexgen/X/Fh;

    move-result-object v2

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fo;->A04:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fh;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3e

    :pswitch_f8
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A03:I

    if-ne v4, v0, :cond_109

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Fp;->A06(Lcom/facebook/ads/redexgen/X/Hg;)Lcom/facebook/ads/redexgen/X/Fj;

    move-result-object v2

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fo;->A07:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fj;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3e

    :cond_109
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A02:I

    if-ne v4, v0, :cond_3e

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Fp;->A06(Lcom/facebook/ads/redexgen/X/Hg;)Lcom/facebook/ads/redexgen/X/Fj;

    move-result-object v2

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Fo;->A05:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fj;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_3e

    :pswitch_11a
    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A03:I

    if-ne v4, v0, :cond_3e

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Fp;->A05(Lcom/facebook/ads/redexgen/X/Hg;)Lcom/facebook/ads/redexgen/X/Fi;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/Fo;->A00:Lcom/facebook/ads/redexgen/X/Fi;

    goto/16 :goto_3e

    :cond_126
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_12c
    .packed-switch 0x10
        :pswitch_47
        :pswitch_97
        :pswitch_d6
        :pswitch_f8
        :pswitch_11a
    .end packed-switch
.end method

.method public static A0D([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 21

    move/from16 v12, p4

    new-instance v8, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([B)V

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move/from16 v11, p3

    :goto_c
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hg;->A01()I

    move-result v0

    if-eqz v0, :cond_a9

    const/16 v3, 0x8

    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v2

    const/4 v1, 0x3

    const/4 v0, 0x4

    move-object v9, p1

    move/from16 v7, p2

    move-object/from16 v13, p5

    move-object/from16 p0, p6

    sparse-switch v2, :sswitch_data_aa

    goto :goto_c

    :sswitch_25
    if-ne v7, v1, :cond_48

    if-nez v5, :cond_46

    sget-object v10, Lcom/facebook/ads/redexgen/X/Fp;->A0A:[B

    :goto_2b
    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_9d

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "sxwfPuAvCy0meNXm9qprXKFgJpDmZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Fp;->A01(Lcom/facebook/ads/redexgen/X/Hg;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v11

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hg;->A05()V

    goto :goto_c

    :cond_46
    move-object v10, v5

    goto :goto_2b

    :cond_48
    const/4 v0, 0x2

    if-ne v7, v0, :cond_52

    if-nez v6, :cond_50

    sget-object v10, Lcom/facebook/ads/redexgen/X/Fp;->A09:[B

    goto :goto_2b

    :cond_50
    move-object v10, v6

    goto :goto_2b

    :cond_52
    const/4 v10, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_a3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "aCQdDxqS2bkmSWw219FL9FrVQLNlGxjh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "CXVqOrR1KNECyNPiemwICdwFVxmD3XsB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    goto :goto_2b

    :sswitch_6c
    if-ne v7, v1, :cond_7c

    if-nez v4, :cond_7a

    sget-object v10, Lcom/facebook/ads/redexgen/X/Fp;->A0B:[B

    :goto_72
    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Fp;->A02(Lcom/facebook/ads/redexgen/X/Hg;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v11

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Hg;->A05()V

    goto :goto_c

    :cond_7a
    move-object v10, v4

    goto :goto_72

    :cond_7c
    const/4 v10, 0x0

    goto :goto_72

    :sswitch_7e
    const/4 v10, 0x0

    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/Fp;->A03(Lcom/facebook/ads/redexgen/X/Hg;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v11

    goto :goto_c

    :sswitch_84
    invoke-static {v0, v0, v8}, Lcom/facebook/ads/redexgen/X/Fp;->A0E(IILcom/facebook/ads/redexgen/X/Hg;)[B

    move-result-object v6

    goto :goto_c

    :sswitch_89
    invoke-static {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/Fp;->A0E(IILcom/facebook/ads/redexgen/X/Hg;)[B

    move-result-object v5

    goto/16 :goto_c

    :sswitch_8f
    const/16 v0, 0x10

    invoke-static {v0, v3, v8}, Lcom/facebook/ads/redexgen/X/Fp;->A0E(IILcom/facebook/ads/redexgen/X/Hg;)[B

    move-result-object v5

    goto/16 :goto_c

    :sswitch_97
    add-int/lit8 v12, v12, 0x2

    move/from16 v11, p3

    goto/16 :goto_c

    :cond_9d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a9
    return-void

    :sswitch_data_aa
    .sparse-switch
        0x10 -> :sswitch_25
        0x11 -> :sswitch_6c
        0x12 -> :sswitch_7e
        0x20 -> :sswitch_84
        0x21 -> :sswitch_89
        0x22 -> :sswitch_8f
        0xf0 -> :sswitch_97
    .end sparse-switch
.end method

.method public static A0E(IILcom/facebook/ads/redexgen/X/Hg;)[B
    .registers 6

    new-array v2, p0, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p0, :cond_f

    invoke-virtual {p2, p1}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_f
    return-object v2
.end method

.method public static A0F()[I
    .registers 3

    const/4 v0, 0x4

    new-array v2, v0, [I

    const/4 v0, 0x0

    aput v0, v2, v0

    const/4 v1, 0x1

    const/4 v0, -0x1

    aput v0, v2, v1

    const/4 v1, 0x2

    const/high16 v0, -0x1000000

    aput v0, v2, v1

    const/4 v1, 0x3

    const v0, -0x808081

    aput v0, v2, v1

    return-object v2
.end method

.method public static A0G()[I
    .registers 7

    const/16 v0, 0x10

    new-array v5, v0, [I

    const/4 v0, 0x0

    aput v0, v5, v0

    const/4 v4, 0x1

    :goto_8
    array-length v0, v5

    if-ge v4, v0, :cond_6b

    const/16 v0, 0x8

    const/16 v6, 0xff

    if-ge v4, v0, :cond_4a

    and-int/lit8 v3, v4, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "OBOqbcJ5TVgi"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_48

    const/16 v2, 0xff

    :goto_31
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_46

    const/16 v1, 0xff

    :goto_37
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_44

    const/16 v0, 0xff

    :goto_3d
    invoke-static {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    goto :goto_62

    :cond_44
    const/4 v0, 0x0

    goto :goto_3d

    :cond_46
    const/4 v1, 0x0

    goto :goto_37

    :cond_48
    const/4 v2, 0x0

    goto :goto_31

    :cond_4a
    and-int/lit8 v0, v4, 0x1

    const/16 v3, 0x7f

    if-eqz v0, :cond_69

    const/16 v2, 0x7f

    :goto_52
    and-int/lit8 v0, v4, 0x2

    if-eqz v0, :cond_67

    const/16 v1, 0x7f

    :goto_58
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_65

    :goto_5c
    invoke-static {v6, v2, v1, v3}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v0

    aput v0, v5, v4

    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_65
    const/4 v3, 0x0

    goto :goto_5c

    :cond_67
    const/4 v1, 0x0

    goto :goto_58

    :cond_69
    const/4 v2, 0x0

    goto :goto_52

    :cond_6b
    return-object v5
.end method

.method public static A0H()[I
    .registers 11

    const/16 v0, 0x100

    new-array v8, v0, [I

    const/4 v0, 0x0

    aput v0, v8, v0

    const/4 v7, 0x0

    :goto_8
    array-length v0, v8

    if-ge v7, v0, :cond_1cc

    const/16 v3, 0x8

    const/16 v9, 0xff

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1c6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "yMmopDV0PROTT6iUygdI9MoWuRB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v7, v3, :cond_45

    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_43

    const/16 v2, 0xff

    :goto_2a
    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_41

    const/16 v1, 0xff

    :goto_30
    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_3f

    :goto_34
    const/16 v0, 0x3f

    invoke-static {v0, v2, v1, v9}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v0

    aput v0, v8, v7

    :goto_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_3f
    const/4 v9, 0x0

    goto :goto_34

    :cond_41
    const/4 v1, 0x0

    goto :goto_30

    :cond_43
    const/4 v2, 0x0

    goto :goto_2a

    :cond_45
    and-int/lit16 v0, v7, 0x88

    const/16 v3, 0x7f

    const/16 v10, 0xaa

    const/16 v6, 0x2b

    const/16 v5, 0x55

    sparse-switch v0, :sswitch_data_1ce

    goto :goto_3c

    :sswitch_53
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_c5

    const/16 v3, 0x55

    :goto_59
    and-int/lit8 v4, v7, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_b9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "5kFBsD3TZCPr"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_c3

    :goto_71
    const/16 v0, 0xaa

    :goto_73
    add-int/2addr v3, v0

    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_b7

    const/16 v4, 0x55

    :goto_7a
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_b5

    const/16 v0, 0xaa

    :goto_80
    add-int/2addr v4, v0

    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_b3

    :goto_85
    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_b1

    :goto_89
    add-int/2addr v5, v10

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1ba

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "N"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "KgCT6FPPbQR5Gt38AZY6Kgkq0L3q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-static {v9, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v0

    aput v0, v8, v7

    goto :goto_3c

    :cond_b1
    const/4 v10, 0x0

    goto :goto_89

    :cond_b3
    const/4 v5, 0x0

    goto :goto_85

    :cond_b5
    const/4 v0, 0x0

    goto :goto_80

    :cond_b7
    const/4 v4, 0x0

    goto :goto_7a

    :cond_b9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "e5fZNa"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_c3

    goto :goto_71

    :cond_c3
    const/4 v0, 0x0

    goto :goto_73

    :cond_c5
    const/4 v3, 0x0

    goto :goto_59

    :sswitch_c7
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_fc

    const/16 v2, 0x55

    :goto_cd
    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_fa

    const/16 v0, 0xaa

    :goto_d3
    add-int/2addr v2, v0

    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_f8

    const/16 v1, 0x55

    :goto_da
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_f6

    const/16 v0, 0xaa

    :goto_e0
    add-int/2addr v1, v0

    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_f4

    :goto_e5
    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_f2

    :goto_e9
    add-int/2addr v5, v10

    invoke-static {v3, v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v0

    aput v0, v8, v7

    goto/16 :goto_3c

    :cond_f2
    const/4 v10, 0x0

    goto :goto_e9

    :cond_f4
    const/4 v5, 0x0

    goto :goto_e5

    :cond_f6
    const/4 v0, 0x0

    goto :goto_e0

    :cond_f8
    const/4 v1, 0x0

    goto :goto_da

    :cond_fa
    const/4 v0, 0x0

    goto :goto_d3

    :cond_fc
    const/4 v2, 0x0

    goto :goto_cd

    :sswitch_fe
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_154

    const/16 v2, 0x2b

    :goto_104
    add-int/2addr v2, v3

    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_152

    const/16 v0, 0x55

    :goto_10b
    add-int/2addr v2, v0

    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_150

    const/16 v1, 0x2b

    :goto_112
    add-int/2addr v1, v3

    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_14e

    const/16 v0, 0x55

    :goto_119
    add-int/2addr v1, v0

    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_14c

    :goto_11e
    add-int/2addr v6, v3

    and-int/lit8 v0, v7, 0x40

    if-eqz v0, :cond_14a

    :goto_123
    add-int/2addr v6, v5

    invoke-static {v9, v2, v1, v6}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1c0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "aybqBWwtY0DT9MvKUrSszXiCsWNuAoGt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "n5OaccyWXsmPzT0g59BcvtkeBPKtga8v"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput v3, v8, v7

    goto/16 :goto_3c

    :cond_14a
    const/4 v5, 0x0

    goto :goto_123

    :cond_14c
    const/4 v6, 0x0

    goto :goto_11e

    :cond_14e
    const/4 v0, 0x0

    goto :goto_119

    :cond_150
    const/4 v1, 0x0

    goto :goto_112

    :cond_152
    const/4 v0, 0x0

    goto :goto_10b

    :cond_154
    const/4 v2, 0x0

    goto :goto_104

    :sswitch_156
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_1b8

    const/16 v4, 0x2b

    :goto_15c
    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_1b6

    const/16 v0, 0x55

    :goto_162
    add-int/2addr v4, v0

    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_1b4

    const/16 v3, 0x2b

    :goto_169
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_1b2

    const/16 v0, 0x55

    :goto_16f
    add-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1c6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "gSUXJnsqi"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    and-int/lit8 v0, v7, 0x4

    if-eqz v0, :cond_1b0

    :goto_188
    and-int/lit8 v10, v7, 0x40

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x14

    if-eq v1, v0, :cond_1c6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v1, "whmrMiK0u12tANJBqhusYeSDK3rkmMFj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "x13RVeSrZB6JEJa4BQjiEaMCBMX5qcSw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v10, :cond_1ae

    :goto_1a5
    add-int/2addr v6, v5

    invoke-static {v9, v4, v3, v6}, Lcom/facebook/ads/redexgen/X/Fp;->A00(IIII)I

    move-result v0

    aput v0, v8, v7

    goto/16 :goto_3c

    :cond_1ae
    const/4 v5, 0x0

    goto :goto_1a5

    :cond_1b0
    const/4 v6, 0x0

    goto :goto_188

    :cond_1b2
    const/4 v0, 0x0

    goto :goto_16f

    :cond_1b4
    const/4 v3, 0x0

    goto :goto_169

    :cond_1b6
    const/4 v0, 0x0

    goto :goto_162

    :cond_1b8
    const/4 v4, 0x0

    goto :goto_15c

    :cond_1ba
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1cc
    return-object v8

    nop

    :sswitch_data_1ce
    .sparse-switch
        0x0 -> :sswitch_53
        0x8 -> :sswitch_c7
        0x80 -> :sswitch_fe
        0x88 -> :sswitch_156
    .end sparse-switch
.end method


# virtual methods
.method public final A0I([BI)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/FV;",
            ">;"
        }
    .end annotation

    move-object/from16 v3, p0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Hg;

    move-object/from16 v1, p1

    move/from16 v0, p2

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([BI)V

    :goto_b
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hg;->A01()I

    move-result v1

    const/16 v0, 0x30

    if-lt v1, v0, :cond_23

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    const/16 v0, 0xf

    if-ne v1, v0, :cond_23

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/Fp;->A0C(Lcom/facebook/ads/redexgen/X/Hg;Lcom/facebook/ads/redexgen/X/Fo;)V

    goto :goto_b

    :cond_23
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fo;->A01:Lcom/facebook/ads/redexgen/X/Fk;

    if-nez v0, :cond_2e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2e
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fo;->A00:Lcom/facebook/ads/redexgen/X/Fi;

    if-eqz v0, :cond_1c6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fo;->A00:Lcom/facebook/ads/redexgen/X/Fi;

    :goto_38
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A00:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_54

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fi;->A05:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v1, v0, :cond_54

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fi;->A00:I

    add-int/lit8 v1, v0, 0x1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A00:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v1, v0, :cond_69

    :cond_54
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fi;->A05:I

    add-int/lit8 v4, v0, 0x1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fi;->A00:I

    add-int/lit8 v1, v0, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/Fp;->A00:Landroid/graphics/Bitmap;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A01:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_69
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fo;->A01:Lcom/facebook/ads/redexgen/X/Fk;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Fk;->A03:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_75
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d0

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Fo;->A08:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fm;

    iget v5, v7, Lcom/facebook/ads/redexgen/X/Fl;->A00:I

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Fi;->A02:I

    add-int/2addr v5, v4

    iget v4, v7, Lcom/facebook/ads/redexgen/X/Fl;->A01:I

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Fi;->A04:I

    add-int/2addr v4, v7

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fm;->A08:I

    add-int/2addr v8, v5

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Fi;->A01:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fm;->A02:I

    add-int/2addr v8, v4

    iget v7, v2, Lcom/facebook/ads/redexgen/X/Fi;->A03:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v11, v3, Lcom/facebook/ads/redexgen/X/Fp;->A01:Landroid/graphics/Canvas;

    int-to-float v10, v5

    int-to-float v9, v4

    int-to-float v8, v12

    int-to-float v7, v7

    sget-object v22, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move/from16 v18, v10

    move/from16 v19, v9

    move/from16 v20, v8

    move/from16 v21, v7

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/Fo;->A06:Landroid/util/SparseArray;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A00:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Fh;

    if-nez v9, :cond_de

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/Fo;->A04:Landroid/util/SparseArray;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A00:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/Fh;

    if-nez v9, :cond_de

    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/Fp;->A04:Lcom/facebook/ads/redexgen/X/Fh;

    :cond_de
    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Fm;->A09:Landroid/util/SparseArray;

    const/4 v12, 0x0

    :goto_e1
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v12, v7, :cond_148

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/Fn;

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/Fo;->A07:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/Fj;

    sget-object v15, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v10, v15, v7

    const/4 v7, 0x7

    aget-object v15, v15, v7

    const/16 v7, 0x18

    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v10, v7, :cond_1ca

    sget-object v15, Lcom/facebook/ads/redexgen/X/Fp;->A08:[Ljava/lang/String;

    const-string v10, "0wDldquZfVkccfOmGfzJ1HL0d6oT0"

    const/4 v7, 0x1

    aput-object v10, v15, v7

    if-nez v11, :cond_122

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    iget-object v7, v7, Lcom/facebook/ads/redexgen/X/Fo;->A05:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/Fj;

    :cond_122
    if-eqz v11, :cond_142

    iget-boolean v7, v11, Lcom/facebook/ads/redexgen/X/Fj;->A01:Z

    if-eqz v7, :cond_145

    const/4 v10, 0x0

    :goto_129
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fm;->A01:I

    iget v7, v14, Lcom/facebook/ads/redexgen/X/Fn;->A02:I

    add-int v20, v5, v7

    iget v7, v14, Lcom/facebook/ads/redexgen/X/Fn;->A05:I

    add-int v21, v4, v7

    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fp;->A01:Landroid/graphics/Canvas;

    move-object/from16 v18, v9

    move/from16 v19, v8

    move-object/from16 v22, v10

    move-object/from16 v23, v7

    move-object/from16 v17, v11

    invoke-static/range {v17 .. v23}, Lcom/facebook/ads/redexgen/X/Fp;->A0B(Lcom/facebook/ads/redexgen/X/Fj;Lcom/facebook/ads/redexgen/X/Fh;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :cond_142
    add-int/lit8 v12, v12, 0x1

    goto :goto_e1

    :cond_145
    iget-object v10, v3, Lcom/facebook/ads/redexgen/X/Fp;->A02:Landroid/graphics/Paint;

    goto :goto_129

    :cond_148
    iget-boolean v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A0A:Z

    if-eqz v7, :cond_16d

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fm;->A01:I

    const/4 v7, 0x3

    if-ne v8, v7, :cond_1b3

    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/Fh;->A03:[I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A07:I

    aget v8, v8, v7

    :goto_157
    iget-object v7, v3, Lcom/facebook/ads/redexgen/X/Fp;->A03:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, v3, Lcom/facebook/ads/redexgen/X/Fp;->A01:Landroid/graphics/Canvas;

    int-to-float v9, v5

    int-to-float v10, v4

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A08:I

    add-int/2addr v7, v5

    int-to-float v11, v7

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A02:I

    add-int/2addr v7, v4

    int-to-float v12, v7

    iget-object v13, v3, Lcom/facebook/ads/redexgen/X/Fp;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_16d
    iget-object v9, v3, Lcom/facebook/ads/redexgen/X/Fp;->A00:Landroid/graphics/Bitmap;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fm;->A08:I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A02:I

    invoke-static {v9, v5, v4, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    new-instance v7, Lcom/facebook/ads/redexgen/X/FV;

    int-to-float v8, v5

    iget v5, v2, Lcom/facebook/ads/redexgen/X/Fi;->A05:I

    int-to-float v5, v5

    div-float/2addr v8, v5

    const/16 v20, 0x0

    int-to-float v9, v4

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Fi;->A00:I

    int-to-float v4, v4

    div-float/2addr v9, v4

    const/16 v22, 0x0

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Fm;->A08:I

    int-to-float v5, v4

    iget v4, v2, Lcom/facebook/ads/redexgen/X/Fi;->A05:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Fm;->A02:I

    int-to-float v4, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Fi;->A00:I

    int-to-float v0, v0

    div-float/2addr v4, v0

    move/from16 v19, v8

    move/from16 v21, v9

    move/from16 v23, v5

    move/from16 v24, v4

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v3, Lcom/facebook/ads/redexgen/X/Fp;->A01:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_75

    :cond_1b3
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Fm;->A01:I

    const/4 v7, 0x2

    if-ne v8, v7, :cond_1bf

    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/Fh;->A02:[I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A06:I

    aget v8, v8, v7

    goto :goto_157

    :cond_1bf
    iget-object v8, v9, Lcom/facebook/ads/redexgen/X/Fh;->A01:[I

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Fm;->A05:I

    aget v8, v8, v7

    goto :goto_157

    :cond_1c6
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/Fp;->A05:Lcom/facebook/ads/redexgen/X/Fi;

    goto/16 :goto_38

    :cond_1ca
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d0
    return-object v16
.end method

.method public final A0J()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fp;->A06:Lcom/facebook/ads/redexgen/X/Fo;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Fo;->A00()V

    return-void
.end method
