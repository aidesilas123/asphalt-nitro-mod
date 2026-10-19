###### Class com.facebook.ads.redexgen.X.AnonymousClass97 (com.facebook.ads.redexgen.X.97)
.class public abstract Lcom/facebook/ads/redexgen/X/97;
.super Lcom/facebook/ads/redexgen/X/Sk;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Sj;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Lcom/facebook/ads/redexgen/X/MC;

.field public A02:Lcom/facebook/ads/redexgen/X/ON;

.field public A03:Lcom/facebook/ads/redexgen/X/S0;

.field public A04:Lcom/facebook/ads/redexgen/X/PE;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Path;

.field public final A0A:Landroid/graphics/RectF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Ob;

.field public final A0D:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0E:Lcom/facebook/ads/redexgen/X/MI;

.field public final A0F:Lcom/facebook/ads/redexgen/X/MA;

.field public final A0G:Lcom/facebook/ads/redexgen/X/KK;

.field public final A0H:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZJd3r9AhG0a"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "i1M"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "myOt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "scTs"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x2qjzjwt5KjNEBlbZiSy7b60v5gMv07i"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l9mbaUlHikXHnlqbzXlarwn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RgzjkxP8tSu3AToRYAuzqOa1HsgYA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "48ukShptsWaLS3SUfEjE876"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/97;->A0I:[Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/97;->A0K:I

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/97;->A0L:I

    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/97;->A0J:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/S0;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sk;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A09:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0A:Landroid/graphics/RectF;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9C;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9C;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0G:Lcom/facebook/ads/redexgen/X/KK;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9B;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9B;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0C:Lcom/facebook/ads/redexgen/X/Ob;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9A;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9A;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0E:Lcom/facebook/ads/redexgen/X/MI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0D:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v0, Lcom/facebook/ads/redexgen/X/98;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/98;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0F:Lcom/facebook/ads/redexgen/X/MA;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/97;->A03:Lcom/facebook/ads/redexgen/X/S0;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/97;->A0H:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/97;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/97;->setGravity(I)V

    sget v1, Lcom/facebook/ads/redexgen/X/97;->A0K:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/97;->setPadding(IIII)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/97;->setUpView(Lcom/facebook/ads/redexgen/X/YA;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A08:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_73

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/97;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_73
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/97;)Lcom/facebook/ads/redexgen/X/T3;
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCtaButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/97;)Lcom/facebook/ads/redexgen/X/T3;
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCtaButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/97;)Lcom/facebook/ads/redexgen/X/S0;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/97;->A03:Lcom/facebook/ads/redexgen/X/S0;

    return-object p0
.end method

.method private A03()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A02:Lcom/facebook/ads/redexgen/X/ON;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/97;->A07:Z

    if-nez v0, :cond_19

    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/97;->A06:Z

    if-eqz v0, :cond_1e

    :cond_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A02:Lcom/facebook/ads/redexgen/X/ON;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ON;->AAY()V

    :cond_1e
    return-void
.end method

.method private A04(Landroid/view/View;)V
    .registers 5

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/97;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/97;->A03()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/97;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/97;->A07:Z

    return p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/97;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/97;->A06:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/97;->setUpImageView(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/97;->setUpVideoView(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/97;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/YA;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A01:Lcom/facebook/ads/redexgen/X/MC;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/97;->A18(Lcom/facebook/ads/redexgen/X/YA;)V

    return-void
.end method


# virtual methods
.method public A0D()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final A10()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final A13()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A01()V

    :cond_b
    return-void
.end method

.method public final A14()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A15()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A02:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A05(Lcom/facebook/ads/redexgen/X/Pj;)V

    :cond_10
    return-void
.end method

.method public final A15()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A03:Lcom/facebook/ads/redexgen/X/S0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0P()Lcom/facebook/ads/redexgen/X/OQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OQ;->getVolume()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PE;->setVolume(F)V

    :cond_1f
    return-void
.end method

.method public final A16()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A06()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final A17()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/97;->A05:Z

    return v0
.end method

.method public abstract A18(Lcom/facebook/ads/redexgen/X/YA;)V
.end method

.method public final A19(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A02()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdEventManager()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0H:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/PE;->A04(Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Ljava/util/Map;)V

    :cond_16
    return-void
.end method

.method public final getMediaContainer()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A00:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/PE;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A09:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/97;->A0A:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/97;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/97;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/97;->A0J:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A09:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A08:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/97;->A0A:Landroid/graphics/RectF;

    sget v3, Lcom/facebook/ads/redexgen/X/97;->A0K:I

    int-to-float v2, v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/97;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v4, v2, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/97;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/97;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/97;->A0L:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A09:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Sk;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/No;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/1N;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1N;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCtaButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0H:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/T3;->setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A01:Lcom/facebook/ads/redexgen/X/MC;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->setVisibility(I)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/97;->A01:Lcom/facebook/ads/redexgen/X/MC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sj;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Sj;-><init>(Lcom/facebook/ads/redexgen/X/97;Lcom/facebook/ads/redexgen/X/9C;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/T8;->A06(Lcom/facebook/ads/redexgen/X/NK;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/T8;->A07(Ljava/lang/String;)V

    return-void
.end method

.method public setIsVideo(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/97;->A05:Z

    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/ON;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/97;->A02:Lcom/facebook/ads/redexgen/X/ON;

    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 5

    new-instance v0, Lcom/facebook/ads/redexgen/X/MC;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MC;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A01:Lcom/facebook/ads/redexgen/X/MC;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/97;->A01:Lcom/facebook/ads/redexgen/X/MC;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A18(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OR;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A01:Lcom/facebook/ads/redexgen/X/MC;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/97;->A04(Landroid/view/View;)V

    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 3

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/97;->A04(Landroid/view/View;)V

    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/97;->A0H:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdEventManager()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PE;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/In;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A1A(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/OS;-><init>(Lcom/facebook/ads/redexgen/X/97;)V

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/97;->A04(Landroid/view/View;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/97;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_43

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_43
    sget-object v2, Lcom/facebook/ads/redexgen/X/97;->A0I:[Ljava/lang/String;

    const-string v1, "V2iAUpZbaEbKk91ZDPvMgym9lCZNc3yl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PE;->setPlaceholderUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A01:Lcom/facebook/ads/redexgen/X/MC;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->setVisibility(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PE;->setVideoURI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0G:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0C:Lcom/facebook/ads/redexgen/X/Ob;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0E:Lcom/facebook/ads/redexgen/X/MI;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0D:Lcom/facebook/ads/redexgen/X/MU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/97;->A04:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/97;->A0F:Lcom/facebook/ads/redexgen/X/MA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass98 (com.facebook.ads.redexgen.X.98)
.class public final Lcom/facebook/ads/redexgen/X/98;
.super Lcom/facebook/ads/redexgen/X/MA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/97;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/97;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/98;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MD;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/98;->A00:Lcom/facebook/ads/redexgen/X/97;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->A06(Lcom/facebook/ads/redexgen/X/97;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/98;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/97;->A05(Lcom/facebook/ads/redexgen/X/97;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/MD;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/98;->A00(Lcom/facebook/ads/redexgen/X/MD;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass99 (com.facebook.ads.redexgen.X.99)
.class public final Lcom/facebook/ads/redexgen/X/99;
.super Lcom/facebook/ads/redexgen/X/MU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/97;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/97;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/99;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MU;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/99;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/97;->A02(Lcom/facebook/ads/redexgen/X/97;)Lcom/facebook/ads/redexgen/X/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0O()Lcom/facebook/ads/redexgen/X/OP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/99;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->ADR(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/99;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C9A (com.facebook.ads.redexgen.X.9A)
.class public final Lcom/facebook/ads/redexgen/X/9A;
.super Lcom/facebook/ads/redexgen/X/MI;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/97;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/97;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9A;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MI;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MJ;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9A;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/97;->A02(Lcom/facebook/ads/redexgen/X/97;)Lcom/facebook/ads/redexgen/X/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0O()Lcom/facebook/ads/redexgen/X/OP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9A;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->ADT(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/MJ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9A;->A00(Lcom/facebook/ads/redexgen/X/MJ;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C9B (com.facebook.ads.redexgen.X.9B)
.class public final Lcom/facebook/ads/redexgen/X/9B;
.super Lcom/facebook/ads/redexgen/X/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/97;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/97;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/75;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/97;->A02(Lcom/facebook/ads/redexgen/X/97;)Lcom/facebook/ads/redexgen/X/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0N()Lcom/facebook/ads/redexgen/X/OO;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9B;->A00:Lcom/facebook/ads/redexgen/X/97;

    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/OO;->ADJ(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9B;->A00(Lcom/facebook/ads/redexgen/X/75;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C9C (com.facebook.ads.redexgen.X.9C)
.class public final Lcom/facebook/ads/redexgen/X/9C;
.super Lcom/facebook/ads/redexgen/X/KK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/97;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/97;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/97;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9C;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KK;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kl;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9C;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/97;->A02(Lcom/facebook/ads/redexgen/X/97;)Lcom/facebook/ads/redexgen/X/S0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0P()Lcom/facebook/ads/redexgen/X/OQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9C;->A00:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/97;->getVideoView()Lcom/facebook/ads/redexgen/X/PE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->setVolume(F)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/Kl;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9C;->A00(Lcom/facebook/ads/redexgen/X/Kl;)V

    return-void
.end method
