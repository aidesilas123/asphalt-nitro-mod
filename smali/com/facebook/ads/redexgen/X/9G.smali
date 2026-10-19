###### Class com.facebook.ads.redexgen.X.C9G (com.facebook.ads.redexgen.X.9G)
.class public Lcom/facebook/ads/redexgen/X/9G;
.super Lcom/facebook/ads/redexgen/X/Sk;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/T0;
    }
.end annotation


# static fields
.field public static A0J:[Ljava/lang/String;

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/MC;

.field public A01:Lcom/facebook/ads/redexgen/X/ON;

.field public A02:Lcom/facebook/ads/redexgen/X/PE;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public A06:Landroid/widget/RelativeLayout;

.field public A07:Lcom/facebook/ads/redexgen/X/S0;

.field public final A08:Lcom/facebook/ads/redexgen/X/YA;

.field public final A09:Lcom/facebook/ads/redexgen/X/Ob;

.field public final A0A:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0B:Lcom/facebook/ads/redexgen/X/MI;

.field public final A0C:Lcom/facebook/ads/redexgen/X/MA;

.field public final A0D:Lcom/facebook/ads/redexgen/X/KK;

.field public final A0E:Ljava/lang/String;

.field public final A0F:Landroid/graphics/Paint;

.field public final A0G:Landroid/graphics/Path;

.field public final A0H:Landroid/graphics/RectF;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Nz;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dJoea1DbFsfm9GTpKIzcXYdmCRfBe4FS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "N1xc2MysRccxXRgwDgHXZSQeh7bFq7uk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "3nDu3mubCrSGPsHb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SUxuavEQD34fwSKO8hxc7w"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hmAyL1Y1BI3zOyZEMNvfuG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1nycCDmAbpyAo4RWRzHJ2ixoeiRT"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fh6VcnyoMwgZMcb2oBIx6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bmD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9G;->A0J:[Ljava/lang/String;

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9G;->A0L:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9G;->A0M:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/9G;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/S0;)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Sk;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0G:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0H:Landroid/graphics/RectF;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0D:Lcom/facebook/ads/redexgen/X/KK;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9g;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A09:Lcom/facebook/ads/redexgen/X/Ob;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9L;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9L;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0B:Lcom/facebook/ads/redexgen/X/MI;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9J;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0A:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9I;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9I;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0C:Lcom/facebook/ads/redexgen/X/MA;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9G;->A07:Lcom/facebook/ads/redexgen/X/S0;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9G;->A0E:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9G;->A08:Lcom/facebook/ads/redexgen/X/YA;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9G;->setGravity(I)V

    sget v1, Lcom/facebook/ads/redexgen/X/9G;->A0L:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9G;->setPadding(IIII)V

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/9G;->setUpView(Lcom/facebook/ads/redexgen/X/YA;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A0F:Landroid/graphics/Paint;

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

    if-ge v1, v0, :cond_75

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9G;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_75
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9G;)Lcom/facebook/ads/redexgen/X/T3;
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCtaButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9G;)Lcom/facebook/ads/redexgen/X/T3;
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCtaButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object p0

    return-object p0
.end method

.method private A02()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A9D(Lcom/facebook/ads/redexgen/X/RX;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A07(Z)V

    :cond_2f
    return-void
.end method

.method private A03()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A05()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->getSimpleVideoView()Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->AG0(Lcom/facebook/ads/redexgen/X/RX;)V

    :cond_24
    return-void
.end method

.method private A04()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A01:Lcom/facebook/ads/redexgen/X/ON;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A17()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A05:Z

    if-nez v0, :cond_3d

    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A17()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9G;->A0J:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/9G;->A0J:[Ljava/lang/String;

    const-string v1, "whWH7G9NZGoicUCMK8TGye"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jQqQ2QRGHP0rmsCqitHuog"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_42

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A04:Z

    if-eqz v0, :cond_42

    :cond_3d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A01:Lcom/facebook/ads/redexgen/X/ON;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ON;->AAY()V

    :cond_42
    return-void
.end method

.method private A05(Landroid/view/View;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_c

    return-void

    :cond_c
    const/16 v1, 0xd

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static A06(Landroid/view/View;)V
    .registers 4

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;->A03()V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;->A02()V

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;->A04()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/9G;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A05:Z

    return p1
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/9G;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A04:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9G;->setUpImageView(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9G;->setUpVideoView(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9G;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/YA;)V

    return-void
.end method


# virtual methods
.method public final A0D()Z
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

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A17()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A01()V

    :cond_d
    return-void
.end method

.method public final A14()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A17()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A15()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v1, :cond_12

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A02:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A05(Lcom/facebook/ads/redexgen/X/Pj;)V

    :cond_12
    return-void
.end method

.method public final A15()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A07:Lcom/facebook/ads/redexgen/X/S0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0P()Lcom/facebook/ads/redexgen/X/OQ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OQ;->getVolume()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A17()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PE;->setVolume(F)V

    :cond_21
    return-void
.end method

.method public final A16()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A17()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A06()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final A17()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A03:Z

    return v0
.end method

.method public final A18(Ljava/util/Map;)V
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

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->A02()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->A17()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdEventManager()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0E:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/PE;->A04(Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Ljava/util/Map;)V

    :cond_18
    return-void
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/PE;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nv;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0G:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9G;->A0H:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_65

    :goto_23
    if-eqz v6, :cond_27

    sget v5, Lcom/facebook/ads/redexgen/X/9G;->A0K:I

    :cond_27
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9G;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9G;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A0G:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0F:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9G;->A0H:Landroid/graphics/RectF;

    sget v3, Lcom/facebook/ads/redexgen/X/9G;->A0L:I

    int-to-float v2, v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->getWidth()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9G;->getHeight()I

    move-result v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v4, v2, v7, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz v6, :cond_51

    sget v5, Lcom/facebook/ads/redexgen/X/9G;->A0M:I

    :cond_51
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9G;->A0G:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9G;->A0H:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v1, v5

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0G:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Sk;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_65
    const/4 v6, 0x0

    goto :goto_23
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

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0E:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/T3;->setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    if-eqz v1, :cond_22

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->setVisibility(I)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A08:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/T0;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/T0;-><init>(Lcom/facebook/ads/redexgen/X/9G;Lcom/facebook/ads/redexgen/X/9h;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/T8;->A06(Lcom/facebook/ads/redexgen/X/NK;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/T8;->A07(Ljava/lang/String;)V

    :cond_22
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v1, :cond_2b

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method public setIsVideo(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A03:Z

    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/ON;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9G;->A01:Lcom/facebook/ads/redexgen/X/ON;

    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 5

    new-instance v0, Lcom/facebook/ads/redexgen/X/MC;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/MC;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A18(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nb;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9G;->A06(Landroid/view/View;)V

    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 4

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A06:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9G;->A06(Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9G;->A05(Landroid/view/View;)V

    :cond_18
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v1, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9G;->A05(Landroid/view/View;)V

    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9G;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 5

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9G;->A0E:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdEventManager()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PE;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/In;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A1A(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nc;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9G;->A06(Landroid/view/View;)V

    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PE;->setPlaceholderUrl(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .registers 7

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/MC;

    if-eqz v4, :cond_1d

    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/9G;->A0J:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_4e

    sget-object v2, Lcom/facebook/ads/redexgen/X/9G;->A0J:[Ljava/lang/String;

    const-string v1, "s54OOOYMcUndmM7F"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/MC;->setVisibility(I)V

    :cond_1d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    if-eqz v1, :cond_4d

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PE;->setVideoURI(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0D:Lcom/facebook/ads/redexgen/X/KK;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A09:Lcom/facebook/ads/redexgen/X/Ob;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0B:Lcom/facebook/ads/redexgen/X/MI;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0A:Lcom/facebook/ads/redexgen/X/MU;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A02:Lcom/facebook/ads/redexgen/X/PE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0C:Lcom/facebook/ads/redexgen/X/MA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PE;->A03(Lcom/facebook/ads/redexgen/X/8a;)V

    :cond_4d
    return-void

    :cond_4e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C9I (com.facebook.ads.redexgen.X.9I)
.class public final Lcom/facebook/ads/redexgen/X/9I;
.super Lcom/facebook/ads/redexgen/X/MA;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MA;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MD;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9G;->A0A(Lcom/facebook/ads/redexgen/X/9G;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9I;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9G;->A09(Lcom/facebook/ads/redexgen/X/9G;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/MD;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9I;->A00(Lcom/facebook/ads/redexgen/X/MD;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C9J (com.facebook.ads.redexgen.X.9J)
.class public final Lcom/facebook/ads/redexgen/X/9J;
.super Lcom/facebook/ads/redexgen/X/MU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MU;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9G;->A07(Lcom/facebook/ads/redexgen/X/9G;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9G;->A07:Lcom/facebook/ads/redexgen/X/S0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0O()Lcom/facebook/ads/redexgen/X/OP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9J;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->ADR(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9J;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C9L (com.facebook.ads.redexgen.X.9L)
.class public final Lcom/facebook/ads/redexgen/X/9L;
.super Lcom/facebook/ads/redexgen/X/MI;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MI;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MJ;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9G;->A08(Lcom/facebook/ads/redexgen/X/9G;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9G;->A07:Lcom/facebook/ads/redexgen/X/S0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0O()Lcom/facebook/ads/redexgen/X/OP;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9L;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OP;->ADT(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/MJ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9L;->A00(Lcom/facebook/ads/redexgen/X/MJ;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C08759g (com.facebook.ads.redexgen.X.9g)
.class public final Lcom/facebook/ads/redexgen/X/9g;
.super Lcom/facebook/ads/redexgen/X/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/75;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9G;->A07(Lcom/facebook/ads/redexgen/X/9G;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Lcom/facebook/ads/redexgen/X/9G;

    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9G;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9g;->A00:Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9G;->A07:Lcom/facebook/ads/redexgen/X/S0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0N()Lcom/facebook/ads/redexgen/X/OO;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->ADJ(I)V

    :cond_21
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9g;->A00(Lcom/facebook/ads/redexgen/X/75;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C08769h (com.facebook.ads.redexgen.X.9h)
.class public final Lcom/facebook/ads/redexgen/X/9h;
.super Lcom/facebook/ads/redexgen/X/KK;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9G;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9G;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9h;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KK;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Kl;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9G;->getVideoView()Lcom/facebook/ads/redexgen/X/PE;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A00:Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9G;->A07:Lcom/facebook/ads/redexgen/X/S0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0P()Lcom/facebook/ads/redexgen/X/OQ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A00:Lcom/facebook/ads/redexgen/X/9G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9G;->getVideoView()Lcom/facebook/ads/redexgen/X/PE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PE;->getVolume()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->setVolume(F)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/Kl;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9h;->A00(Lcom/facebook/ads/redexgen/X/Kl;)V

    return-void
.end method
