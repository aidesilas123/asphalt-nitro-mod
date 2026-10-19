###### Class com.facebook.ads.redexgen.X.T3 (com.facebook.ads.redexgen.X.T3)
.class public final Lcom/facebook/ads/redexgen/X/T3;
.super Lcom/facebook/ads/redexgen/X/Na;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;

.field public static final A0F:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/graphics/Bitmap;

.field public A03:Landroid/graphics/Paint;

.field public A04:Landroid/graphics/Rect;

.field public A05:Lcom/facebook/ads/redexgen/X/YA;

.field public A06:Lcom/facebook/ads/redexgen/X/Kn;

.field public A07:Lcom/facebook/ads/redexgen/X/T5;

.field public A08:Ljava/lang/String;

.field public A09:Ljava/lang/String;

.field public A0A:Z

.field public final A0B:Lcom/facebook/ads/redexgen/X/NW;

.field public final A0C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "idQnrwKrPQs0c3zYYHT6WTvW1aXoRMqQ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Gekt1WHQiHnIJqxdwB9j8FzDtIJy1cfJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sF2V"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "CdtBVDHmuEaNC9R8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jtmNaJ8NDkAfiILRFeCM3WK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aXO2Ks7stxeTyHMnCxwSATKtkmhK3bmt"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xmLEl9t0StR"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T3;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T3;->A07()V

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/T3;->A0F:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1M;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V
    .registers 19

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1M;ZLcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1M;ZLcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V
    .registers 20

    move-object v1, p0

    move-object v3, p1

    invoke-direct {p0, v3, p3}, Lcom/facebook/ads/redexgen/X/Na;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1M;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/T3;->A0C:Ljava/util/Map;

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/T3;->A05:Lcom/facebook/ads/redexgen/X/YA;

    iput-boolean p4, v1, Lcom/facebook/ads/redexgen/X/T3;->A0A:Z

    new-instance v2, Lcom/facebook/ads/redexgen/X/NW;

    move-object v4, p2

    move-object v7, p5

    move-object/from16 v9, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p9

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/1R;Lcom/facebook/ads/redexgen/X/Lt;)V

    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/T3;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {p0, p0}, Lcom/facebook/ads/redexgen/X/T3;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x3e9

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    return-void
.end method

.method public static A03(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v4
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/T3;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_9
    array-length v0, p1

    if-ge p0, v0, :cond_30

    aget-byte v3, p1, p0

    xor-int/2addr v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/T3;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/T3;->A0E:[Ljava/lang/String;

    const-string v1, "DG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    xor-int/lit8 v0, v3, 0x53

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A0A:Z

    if-eqz v0, :cond_33

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T3;->A09:Ljava/lang/String;

    if-eqz v3, :cond_33

    const/16 v2, 0xc

    const/16 v1, 0xc

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ld;->A0M:Lcom/facebook/ads/redexgen/X/Ld;

    :goto_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A05:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Le;->A03(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/Ld;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T3;->A03(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A02:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A03:Landroid/graphics/Paint;

    sget v1, Lcom/facebook/ads/redexgen/X/T3;->A0F:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->setPadding(IIII)V

    :cond_33
    return-void

    :cond_34
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ld;->A0a:Lcom/facebook/ads/redexgen/X/Ld;

    goto :goto_1a
.end method

.method private A06()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A06:Lcom/facebook/ads/redexgen/X/Kn;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A07()Z

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A07:Lcom/facebook/ads/redexgen/X/T5;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T5;->A04()V

    :cond_e
    return-void
.end method

.method public static A07()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/T3;->A0D:[B

    return-void

    :array_a
    .array-data 1
        0x3t
        0xct
        0x9t
        0x3t
        0xbt
        0x3ft
        0x13t
        0xft
        0x15t
        0x12t
        0x3t
        0x5t
        0x8t
        0xct
        0x43t
        0x3t
        0xbt
        0x1dt
        0x1dt
        0xbt
        0x0t
        0x9t
        0xbt
        0x1ct
        0x7ft
        0x79t
        0x6ft
        0x78t
        0x69t
        0x66t
        0x63t
        0x69t
        0x61t
    .end array-data
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/aS;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aS;->A0s()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/aS;->A0q()I

    move-result v0

    if-ltz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public final A09(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A08:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    return-void

    :cond_11
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T3;->A06()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T3;->A0C:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T3;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T3;->A08:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T3;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A0C:Ljava/util/Map;

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/Ls;)Z
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A06:Lcom/facebook/ads/redexgen/X/Kn;

    const/4 v1, 0x0

    if-nez v0, :cond_57

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/T3;->A08(Lcom/facebook/ads/redexgen/X/aS;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A10()Lcom/facebook/ads/redexgen/X/1d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A01()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A10()Lcom/facebook/ads/redexgen/X/1d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A00()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_1f
    return v1

    :cond_20
    new-instance v1, Lcom/facebook/ads/redexgen/X/T5;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A0q()I

    move-result v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A0s()I

    move-result v3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A0r()I

    move-result v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A10()Lcom/facebook/ads/redexgen/X/1d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A01()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A10()Lcom/facebook/ads/redexgen/X/1d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1d;->A00()Ljava/lang/String;

    move-result-object v6

    move-object v8, p0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/T5;-><init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ls;Lcom/facebook/ads/redexgen/X/T3;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/T3;->A07:Lcom/facebook/ads/redexgen/X/T5;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A0s()I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T3;->A07:Lcom/facebook/ads/redexgen/X/T5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kn;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Kn;-><init>(ILcom/facebook/ads/redexgen/X/Km;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A06:Lcom/facebook/ads/redexgen/X/Kn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A08()Z

    const/4 v0, 0x1

    return v0

    :cond_57
    return v1
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :try_start_8
    const/16 v2, 0x18

    const/16 v1, 0x9

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T3;->A09(Ljava/lang/String;)V

    return-void
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Na;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T3;->A06()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A04:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A02:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/T3;->A01:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A00:I

    add-int/2addr v1, v0

    div-int/lit8 v0, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2f
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Na;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A02:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T3;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T3;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v0, 0x41200000    # 10.0f

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T3;->getWidth()I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    sub-float/2addr v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A01:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A00:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-int v4, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T3;->getHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A01:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/T3;->A01:I

    add-int v0, v4, v1

    add-int/2addr v1, v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T3;->A02:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T3;->A04:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A03:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7b
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Na;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T3;->A06()V

    :cond_8
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Na;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T3;->A06()V

    :cond_8
    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1N;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/T3;->setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NV;)V

    return-void
.end method

.method public setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/NV;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1N;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/NV;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T3;->A08:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1N;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A0C:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/NW;->A07(Lcom/facebook/ads/redexgen/X/NV;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1N;->A04()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A09:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_24
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/T3;->setVisibility(I)V

    return-void

    :cond_2a
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Na;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T3;->A05()V

    return-void
.end method

.method public setIsInAppBrowser(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T3;->A0B:Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NW;->A09(Z)V

    return-void
.end method
