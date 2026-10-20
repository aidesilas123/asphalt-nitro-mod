###### Class com.applovin.exoplayer2.ui.i (com.applovin.exoplayer2.ui.i)
.class final Lcom/applovin/exoplayer2/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Oi:I

.field private Qa:I

.field private Qc:I

.field private VV:F

.field private VX:I

.field private VY:I

.field private YA:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private YB:Landroid/text/Layout$Alignment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private YC:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private YD:F

.field private YE:I

.field private YF:I

.field private YG:F

.field private YH:I

.field private YI:F

.field private YJ:F

.field private YK:F

.field private YL:F

.field private YM:I

.field private YN:I

.field private YO:I

.field private YP:I

.field private YQ:Landroid/text/StaticLayout;

.field private YR:Landroid/text/StaticLayout;

.field private YS:I

.field private YT:I

.field private YU:I

.field private YV:Landroid/graphics/Rect;

.field private final Ys:F

.field private final Yt:F

.field private final Yu:F

.field private final Yv:F

.field private final Yw:F

.field private final Yx:Landroid/text/TextPaint;

.field private final Yy:Landroid/graphics/Paint;

.field private final Yz:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/applovin/exoplayer2/ui/i;->Yw:F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/applovin/exoplayer2/ui/i;->Yv:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->Ys:F

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->Yt:F

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->Yu:F

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/i;->Yy:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/ui/i;->Yz:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    nop

    :array_6a
    .array-data 4
        0x1010217
        0x1010218
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;Z)V
    .registers 3

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/i;->c(Landroid/graphics/Canvas;)V

    goto :goto_13

    :cond_6
    iget-object p2, p0, Lcom/applovin/exoplayer2/ui/i;->YV:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/applovin/exoplayer2/ui/i;->YC:Landroid/graphics/Bitmap;

    invoke-static {p2}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/ui/i;->d(Landroid/graphics/Canvas;)V

    :goto_13
    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .registers 12

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/i;->YQ:Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/i;->YR:Landroid/text/StaticLayout;

    if-eqz v0, :cond_c7

    if-nez v1, :cond_a

    goto/16 :goto_c7

    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->YS:I

    int-to-float v3, v3

    iget v4, p0, Lcom/applovin/exoplayer2/ui/i;->YT:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->Oi:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-lez v3, :cond_3e

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/i;->Yy:Landroid/graphics/Paint;

    iget v4, p0, Lcom/applovin/exoplayer2/ui/i;->Oi:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->YU:I

    neg-int v3, v3

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/applovin/exoplayer2/ui/i;->YU:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    int-to-float v8, v3

    iget-object v9, p0, Lcom/applovin/exoplayer2/ui/i;->Yy:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3e
    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->VX:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_64

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->Ys:F

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->VY:I

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v3, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_ad

    :cond_64
    const/4 v6, 0x2

    if-ne v3, v6, :cond_73

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->Yt:F

    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->Yu:F

    iget v6, p0, Lcom/applovin/exoplayer2/ui/i;->VY:I

    invoke-virtual {v1, v3, v5, v5, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_ad

    :cond_73
    const/4 v6, 0x3

    if-eq v3, v6, :cond_79

    const/4 v7, 0x4

    if-ne v3, v7, :cond_ad

    :cond_79
    if-ne v3, v6, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v5, 0x0

    :goto_7d
    const/4 v3, -0x1

    if-eqz v5, :cond_82

    const/4 v6, -0x1

    goto :goto_84

    :cond_82
    iget v6, p0, Lcom/applovin/exoplayer2/ui/i;->VY:I

    :goto_84
    if-eqz v5, :cond_88

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->VY:I

    :cond_88
    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->Yt:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    iget-object v7, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v8, p0, Lcom/applovin/exoplayer2/ui/i;->Qa:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v7, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v8, p0, Lcom/applovin/exoplayer2/ui/i;->Yt:F

    neg-float v9, v5

    invoke-virtual {v7, v8, v9, v9, v6}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v6, p0, Lcom/applovin/exoplayer2/ui/i;->Yt:F

    invoke-virtual {v1, v6, v5, v5, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_ad
    :goto_ad
    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->Qa:I

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c7
    :goto_c7
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/i;->YC:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/applovin/exoplayer2/ui/i;->YV:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->Yz:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private nU()V
    .registers 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/ui/i;->YA:Ljava/lang/CharSequence;

    instance-of v2, v1, Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_b

    check-cast v1, Landroid/text/SpannableStringBuilder;

    goto :goto_12

    :cond_b
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/applovin/exoplayer2/ui/i;->YA:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_12
    iget v2, v0, Lcom/applovin/exoplayer2/ui/i;->YO:I

    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->YM:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->YP:I

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YN:I

    sub-int v11, v3, v4

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YK:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->YK:F

    const/high16 v4, 0x3e000000    # 0.125f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v12, v3

    mul-int/lit8 v13, v12, 0x2

    sub-int v3, v2, v13

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YI:F

    const v14, -0x800001

    cmpl-float v5, v4, v14

    if-eqz v5, :cond_3f

    int-to-float v3, v3

    mul-float v3, v3, v4

    float-to-int v3, v3

    :cond_3f
    move v15, v3

    const-string v10, "SubtitlePainter"

    if-gtz v15, :cond_4a

    const-string v1, "Skipped drawing subtitle cue (insufficient space)"

    invoke-static {v10, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4a
    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->YL:F

    const/16 v16, 0x0

    const/high16 v4, 0xff0000

    const/4 v9, 0x0

    cmpl-float v3, v3, v16

    if-lez v3, :cond_64

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YL:F

    float-to-int v5, v5

    invoke-direct {v3, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_64
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->VX:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_87

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8, v9, v3, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ForegroundColorSpan;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_7c
    if-ge v6, v5, :cond_87

    aget-object v7, v3, v6

    invoke-virtual {v8, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_7c

    :cond_87
    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->Qc:I

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/4 v7, 0x2

    if-lez v3, :cond_b4

    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->VX:I

    if-eqz v3, :cond_a6

    if-ne v3, v7, :cond_97

    goto :goto_a6

    :cond_97
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->Qc:I

    invoke-direct {v3, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v8, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_b4

    :cond_a6
    :goto_a6
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->Qc:I

    invoke-direct {v3, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v3, v9, v5, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_b4
    :goto_b4
    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/i;->YB:Landroid/text/Layout$Alignment;

    if-nez v3, :cond_ba

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_ba
    move-object/from16 v21, v3

    new-instance v6, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->Yv:F

    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->Yw:F

    const/16 v18, 0x1

    move/from16 v19, v3

    move-object v3, v6

    move/from16 v20, v4

    move-object v4, v1

    move-object v14, v6

    move v6, v15

    move-object/from16 v7, v21

    move-object/from16 v23, v8

    move/from16 v8, v20

    move/from16 v25, v12

    const/4 v12, 0x0

    move/from16 v9, v19

    move-object v12, v10

    move/from16 v10, v18

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v14, v0, Lcom/applovin/exoplayer2/ui/i;->YQ:Landroid/text/StaticLayout;

    invoke-virtual {v14}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/i;->YQ:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_ed
    if-ge v9, v4, :cond_102

    iget-object v6, v0, Lcom/applovin/exoplayer2/ui/i;->YQ:Landroid/text/StaticLayout;

    invoke-virtual {v6, v9}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_ed

    :cond_102
    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YI:F

    const v6, -0x800001

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_10e

    if-ge v5, v15, :cond_10e

    goto :goto_10f

    :cond_10e
    move v15, v5

    :goto_10f
    add-int/2addr v15, v13

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YG:F

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_13c

    int-to-float v2, v2

    mul-float v2, v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YM:I

    add-int/2addr v2, v4

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YH:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_12b

    const/4 v7, 0x2

    if-eq v5, v7, :cond_129

    goto :goto_130

    :cond_129
    sub-int/2addr v2, v15

    goto :goto_130

    :cond_12b
    const/4 v7, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v15

    div-int/2addr v2, v7

    :goto_130
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v15, v2

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YO:I

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_145

    :cond_13c
    const/4 v6, 0x1

    const/4 v7, 0x2

    sub-int/2addr v2, v15

    div-int/2addr v2, v7

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YM:I

    add-int/2addr v2, v4

    add-int v4, v2, v15

    :goto_145
    sub-int v20, v4, v2

    if-gtz v20, :cond_14f

    const-string v1, "Skipped drawing subtitle cue (invalid horizontal positioning)"

    invoke-static {v12, v1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14f
    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YD:F

    const v5, -0x800001

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_1ae

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YE:I

    if-nez v5, :cond_172

    int-to-float v5, v11

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YN:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YF:I

    if-ne v5, v7, :cond_16b

    goto :goto_19e

    :cond_16b
    if-ne v5, v6, :cond_19f

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v3

    div-int/2addr v4, v7

    goto :goto_19f

    :cond_172
    iget-object v4, v0, Lcom/applovin/exoplayer2/ui/i;->YQ:Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v4

    iget-object v6, v0, Lcom/applovin/exoplayer2/ui/i;->YQ:Landroid/text/StaticLayout;

    invoke-virtual {v6, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YD:F

    cmpl-float v6, v5, v16

    if-ltz v6, :cond_191

    int-to-float v4, v4

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YN:I

    add-int/2addr v4, v5

    goto :goto_19f

    :cond_191
    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    int-to-float v4, v4

    mul-float v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->YP:I

    add-int/2addr v4, v5

    :goto_19e
    sub-int/2addr v4, v3

    :cond_19f
    :goto_19f
    add-int v5, v4, v3

    iget v6, v0, Lcom/applovin/exoplayer2/ui/i;->YP:I

    if-le v5, v6, :cond_1a8

    sub-int v4, v6, v3

    goto :goto_1b8

    :cond_1a8
    iget v3, v0, Lcom/applovin/exoplayer2/ui/i;->YN:I

    if-ge v4, v3, :cond_1b8

    move v11, v3

    goto :goto_1b9

    :cond_1ae
    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->YP:I

    sub-int/2addr v4, v3

    int-to-float v3, v11

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->VV:F

    mul-float v3, v3, v5

    float-to-int v3, v3

    sub-int/2addr v4, v3

    :cond_1b8
    :goto_1b8
    move v11, v4

    :goto_1b9
    new-instance v12, Landroid/text/StaticLayout;

    iget-object v5, v0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v8, v0, Lcom/applovin/exoplayer2/ui/i;->Yv:F

    iget v9, v0, Lcom/applovin/exoplayer2/ui/i;->Yw:F

    const/4 v10, 0x1

    move-object v3, v12

    move-object v4, v1

    move/from16 v6, v20

    move-object/from16 v7, v21

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v12, v0, Lcom/applovin/exoplayer2/ui/i;->YQ:Landroid/text/StaticLayout;

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, v0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget v4, v0, Lcom/applovin/exoplayer2/ui/i;->Yv:F

    iget v5, v0, Lcom/applovin/exoplayer2/ui/i;->Yw:F

    const/16 v24, 0x1

    move-object/from16 v17, v1

    move-object/from16 v18, v23

    move-object/from16 v19, v3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-direct/range {v17 .. v24}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lcom/applovin/exoplayer2/ui/i;->YR:Landroid/text/StaticLayout;

    iput v2, v0, Lcom/applovin/exoplayer2/ui/i;->YS:I

    iput v11, v0, Lcom/applovin/exoplayer2/ui/i;->YT:I

    move/from16 v1, v25

    iput v1, v0, Lcom/applovin/exoplayer2/ui/i;->YU:I

    return-void
.end method

.method private nV()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/exoplayer2/ui/i;->YC:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/applovin/exoplayer2/ui/i;->YO:I

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YM:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->YP:I

    iget v4, p0, Lcom/applovin/exoplayer2/ui/i;->YN:I

    sub-int/2addr v3, v4

    int-to-float v2, v2

    int-to-float v1, v1

    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->YG:F

    mul-float v5, v5, v1

    add-float/2addr v2, v5

    int-to-float v4, v4

    int-to-float v3, v3

    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->YD:F

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->YI:F

    mul-float v1, v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v5, p0, Lcom/applovin/exoplayer2/ui/i;->YJ:F

    const v6, -0x800001

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_32

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_44

    :cond_32
    int-to-float v3, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v5, v0

    mul-float v3, v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_44
    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->YH:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4d

    int-to-float v3, v1

    :goto_4b
    sub-float/2addr v2, v3

    goto :goto_53

    :cond_4d
    if-ne v3, v5, :cond_53

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    goto :goto_4b

    :cond_53
    :goto_53
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/applovin/exoplayer2/ui/i;->YF:I

    if-ne v3, v6, :cond_5e

    int-to-float v3, v0

    :goto_5c
    sub-float/2addr v4, v3

    goto :goto_64

    :cond_5e
    if-ne v3, v5, :cond_64

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    goto :goto_5c

    :cond_64
    :goto_64
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-direct {v4, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/applovin/exoplayer2/ui/i;->YV:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/i/a;Lcom/applovin/exoplayer2/ui/c;FFFLandroid/graphics/Canvas;IIII)V
    .registers 15

    iget-object v0, p1, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/high16 v1, -0x1000000

    if-eqz v0, :cond_1d

    iget-object v1, p1, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    :cond_14
    iget-boolean v1, p1, Lcom/applovin/exoplayer2/i/a;->Oh:Z

    if-eqz v1, :cond_1b

    iget v1, p1, Lcom/applovin/exoplayer2/i/a;->Oi:I

    goto :goto_1d

    :cond_1b
    iget v1, p2, Lcom/applovin/exoplayer2/ui/c;->Oi:I

    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->YA:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/ui/i;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->YB:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Lcom/applovin/exoplayer2/i/a;->NX:Landroid/text/Layout$Alignment;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->YC:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YD:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oa:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YE:I

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Ob:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YG:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Od:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Oe:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YI:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Of:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YJ:F

    iget v3, p1, Lcom/applovin/exoplayer2/i/a;->Og:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->Qa:I

    iget v3, p2, Lcom/applovin/exoplayer2/ui/c;->Qa:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->Qc:I

    iget v3, p2, Lcom/applovin/exoplayer2/ui/c;->Qc:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->Oi:I

    if-ne v2, v1, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->VX:I

    iget v3, p2, Lcom/applovin/exoplayer2/ui/c;->VX:I

    if-ne v2, v3, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->VY:I

    iget v3, p2, Lcom/applovin/exoplayer2/ui/c;->VY:I

    if-ne v2, v3, :cond_d1

    iget-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v3, p2, Lcom/applovin/exoplayer2/ui/c;->VZ:Landroid/graphics/Typeface;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YK:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YL:F

    cmpl-float v2, v2, p4

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->VV:F

    cmpl-float v2, v2, p5

    if-nez v2, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YM:I

    if-ne v2, p7, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YN:I

    if-ne v2, p8, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YO:I

    if-ne v2, p9, :cond_d1

    iget v2, p0, Lcom/applovin/exoplayer2/ui/i;->YP:I

    if-ne v2, p10, :cond_d1

    invoke-direct {p0, p6, v0}, Lcom/applovin/exoplayer2/ui/i;->a(Landroid/graphics/Canvas;Z)V

    return-void

    :cond_d1
    iget-object v2, p1, Lcom/applovin/exoplayer2/i/a;->NW:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->YA:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/applovin/exoplayer2/i/a;->NX:Landroid/text/Layout$Alignment;

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->YB:Landroid/text/Layout$Alignment;

    iget-object v2, p1, Lcom/applovin/exoplayer2/i/a;->NZ:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/applovin/exoplayer2/ui/i;->YC:Landroid/graphics/Bitmap;

    iget v2, p1, Lcom/applovin/exoplayer2/i/a;->Oa:F

    iput v2, p0, Lcom/applovin/exoplayer2/ui/i;->YD:F

    iget v2, p1, Lcom/applovin/exoplayer2/i/a;->Ob:I

    iput v2, p0, Lcom/applovin/exoplayer2/ui/i;->YE:I

    iget v2, p1, Lcom/applovin/exoplayer2/i/a;->Oc:I

    iput v2, p0, Lcom/applovin/exoplayer2/ui/i;->YF:I

    iget v2, p1, Lcom/applovin/exoplayer2/i/a;->Od:F

    iput v2, p0, Lcom/applovin/exoplayer2/ui/i;->YG:F

    iget v2, p1, Lcom/applovin/exoplayer2/i/a;->Oe:I

    iput v2, p0, Lcom/applovin/exoplayer2/ui/i;->YH:I

    iget v2, p1, Lcom/applovin/exoplayer2/i/a;->Of:F

    iput v2, p0, Lcom/applovin/exoplayer2/ui/i;->YI:F

    iget p1, p1, Lcom/applovin/exoplayer2/i/a;->Og:F

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->YJ:F

    iget p1, p2, Lcom/applovin/exoplayer2/ui/c;->Qa:I

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->Qa:I

    iget p1, p2, Lcom/applovin/exoplayer2/ui/c;->Qc:I

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->Qc:I

    iput v1, p0, Lcom/applovin/exoplayer2/ui/i;->Oi:I

    iget p1, p2, Lcom/applovin/exoplayer2/ui/c;->VX:I

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->VX:I

    iget p1, p2, Lcom/applovin/exoplayer2/ui/c;->VY:I

    iput p1, p0, Lcom/applovin/exoplayer2/ui/i;->VY:I

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/i;->Yx:Landroid/text/TextPaint;

    iget-object p2, p2, Lcom/applovin/exoplayer2/ui/c;->VZ:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput p3, p0, Lcom/applovin/exoplayer2/ui/i;->YK:F

    iput p4, p0, Lcom/applovin/exoplayer2/ui/i;->YL:F

    iput p5, p0, Lcom/applovin/exoplayer2/ui/i;->VV:F

    iput p7, p0, Lcom/applovin/exoplayer2/ui/i;->YM:I

    iput p8, p0, Lcom/applovin/exoplayer2/ui/i;->YN:I

    iput p9, p0, Lcom/applovin/exoplayer2/ui/i;->YO:I

    iput p10, p0, Lcom/applovin/exoplayer2/ui/i;->YP:I

    if-eqz v0, :cond_12b

    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/i;->YA:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/i;->nU()V

    goto :goto_133

    :cond_12b
    iget-object p1, p0, Lcom/applovin/exoplayer2/ui/i;->YC:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/ui/i;->nV()V

    :goto_133
    invoke-direct {p0, p6, v0}, Lcom/applovin/exoplayer2/ui/i;->a(Landroid/graphics/Canvas;Z)V

    return-void
.end method
