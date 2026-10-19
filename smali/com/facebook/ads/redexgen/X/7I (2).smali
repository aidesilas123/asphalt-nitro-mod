###### Class com.facebook.ads.redexgen.X.C7I (com.facebook.ads.redexgen.X.7I)
.class public final Lcom/facebook/ads/redexgen/X/7I;
.super Lcom/facebook/ads/redexgen/X/Td;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PH;


# static fields
.field public static A0N:[B

.field public static A0O:[Ljava/lang/String;

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:I

.field public static final A0S:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Landroid/widget/RelativeLayout;

.field public A04:Lcom/facebook/ads/redexgen/X/F0;

.field public A05:Lcom/facebook/ads/redexgen/X/6Q;

.field public A06:Lcom/facebook/ads/redexgen/X/2O;

.field public A07:Lcom/facebook/ads/redexgen/X/NR;

.field public A08:Lcom/facebook/ads/redexgen/X/Nh;

.field public A09:Lcom/facebook/ads/redexgen/X/S0;

.field public A0A:Lcom/facebook/ads/redexgen/X/Qa;

.field public A0B:Lcom/facebook/ads/redexgen/X/Qb;

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PC;",
            ">;"
        }
    .end annotation
.end field

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/1M;

.field public final A0G:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0H:Lcom/facebook/ads/redexgen/X/LN;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A0J:Lcom/facebook/ads/redexgen/X/Nz;

.field public final A0K:Lcom/facebook/ads/redexgen/X/PI;

.field public final A0L:Lcom/facebook/ads/redexgen/X/PI;

.field public final A0M:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jpfQHsJU1lQWxp7CXlwdVdxcmzkEjD3g"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zEjz0M8mBGIlVid6uM60nN2wm9TWrUGD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "N1PpSZkKdQQSk7AxXPBdtL04F7CB9SRH"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NsCDsqdLjA318x1fHEY8u0Kcg9miAoAi"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WmIcjMDFfLwNDk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Zb94j8IQkKLdVAKFmXIR3eGQpuAhW41l"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pxOHyfKHQ8aixQeNEjeruqZzDXsiYM9P"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7I;->A0C()V

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7I;->A0Q:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7I;->A0R:I

    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7I;->A0S:I

    const/high16 v1, 0x42280000    # 42.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7I;->A0P:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/F0;)V
    .registers 15

    move-object v2, p1

    move-object v3, p2

    invoke-direct {p0, v2, v3, p4, p5}, Lcom/facebook/ads/redexgen/X/Td;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;)V

    new-instance v8, Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/LN;-><init>()V

    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/7I;->A0H:Lcom/facebook/ads/redexgen/X/LN;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7I;->A05:Lcom/facebook/ads/redexgen/X/6Q;

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/7I;->A0I:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A13()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0E:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0M:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PG;->A04:Lcom/facebook/ads/redexgen/X/PG;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PI;

    invoke-direct {v0, v2, v1, p0}, Lcom/facebook/ads/redexgen/X/PI;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/PG;Lcom/facebook/ads/redexgen/X/PH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0L:Lcom/facebook/ads/redexgen/X/PI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/PG;->A03:Lcom/facebook/ads/redexgen/X/PG;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PI;

    invoke-direct {v0, v2, v1, p0}, Lcom/facebook/ads/redexgen/X/PI;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/PG;Lcom/facebook/ads/redexgen/X/PH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0K:Lcom/facebook/ads/redexgen/X/PI;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ny;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Ny;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ny;->A0H(Lcom/facebook/ads/redexgen/X/Ls;)Lcom/facebook/ads/redexgen/X/Ny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ny;->A0K()Lcom/facebook/ads/redexgen/X/Nz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0J:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {p5}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0F:Lcom/facebook/ads/redexgen/X/1M;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/IP;->A1m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setProgressSpinnerInvisible(Z)V

    :cond_6a
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/F0;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/If;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/LN;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0H:Lcom/facebook/ads/redexgen/X/LN;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7I;)Lcom/facebook/ads/redexgen/X/Qb;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    return-object p0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/7I;->A0N:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_33

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_2d

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/7I;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    return-object p0
.end method

.method private A09()V
    .registers 6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    const/4 v4, 0x0

    const/16 v2, 0x8

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0K:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/PI;->setVisibility(I)V

    :goto_c
    iget v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0E:I

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_35

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7I;->A0L:Lcom/facebook/ads/redexgen/X/PI;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_41

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v1, "6a52QfyEa3IWfhbHGHqjZ8J10HxaoQoC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/PI;->setVisibility(I)V

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0L:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PI;->setVisibility(I)V

    goto :goto_34

    :cond_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0K:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PI;->setVisibility(I)V

    goto :goto_c

    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0A()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    if-eqz v0, :cond_35

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7I;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_36

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/facebook/ads/redexgen/X/7I;->A0Q:I

    invoke-virtual {v3, v2, v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2b
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Nh;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_35
    return-void

    :cond_36
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/7I;->A0Q:I

    invoke-virtual {v3, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2b
.end method

.method private A0B()V
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7I;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A03:Landroid/util/DisplayMetrics;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A03:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5b

    sget v0, Lcom/facebook/ads/redexgen/X/7I;->A0Q:I

    mul-int/lit8 v0, v0, 0x4

    sub-int v1, v4, v0

    div-int/lit8 v0, v2, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v4, v3

    const/16 v2, 0x8

    div-int/2addr v4, v2

    mul-int/lit8 v1, v4, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0K:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PI;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0L:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/PI;->setVisibility(I)V

    :goto_31
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {v0, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Rz;->A0F(III)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A06()V

    :cond_41
    :goto_41
    return-void

    :cond_42
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1c

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7I;->onDestroy()V

    goto :goto_41

    :cond_5b
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    move v1, v4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7I;->A09()V

    goto :goto_31
.end method

.method public static A0C()V
    .registers 4

    const/16 v0, 0x81

    new-array v3, v0, [B

    fill-array-data v3, :array_26

    sget-object v1, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_20

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v1, "0pXVmbGKHAzIVbBBK7Eyv6Mrdc2f0VIY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/7I;->A0N:[B

    return-void

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_26
    .array-data 1
        0x5et
        -0x75t
        -0x75t
        -0x78t
        -0x75t
        0x39t
        0x7ct
        -0x75t
        0x7et
        0x7at
        -0x73t
        -0x7et
        -0x79t
        -0x80t
        0x39t
        0x7ct
        0x7at
        -0x75t
        -0x78t
        -0x72t
        -0x74t
        0x7et
        -0x7bt
        0x39t
        -0x71t
        -0x7et
        0x7et
        -0x70t
        0x59t
        -0x7at
        -0x7at
        -0x7dt
        -0x7at
        0x34t
        -0x75t
        0x7ct
        0x7dt
        -0x80t
        0x79t
        0x34t
        0x77t
        0x75t
        -0x7at
        -0x7dt
        -0x77t
        -0x79t
        0x79t
        -0x80t
        0x34t
        0x77t
        0x75t
        -0x7at
        0x78t
        0x34t
        0x77t
        0x7ct
        0x75t
        -0x7et
        0x7bt
        0x79t
        0x42t
        0x5bt
        0x57t
        0x56t
        -0x76t
        0x79t
        0x7et
        0x7at
        -0x7dt
        0x78t
        0x7at
        0x63t
        0x7at
        -0x77t
        -0x74t
        -0x7ct
        -0x79t
        -0x80t
        -0x61t
        -0x5et
        -0x63t
        -0x5et
        -0x61t
        -0x4et
        -0x61t
        -0x63t
        -0x60t
        -0x4dt
        -0x54t
        -0x5et
        -0x56t
        -0x5dt
        -0x21t
        -0x15t
        -0x17t
        -0x56t
        -0x1et
        -0x23t
        -0x21t
        -0x1ft
        -0x22t
        -0x15t
        -0x15t
        -0x19t
        -0x56t
        -0x23t
        -0x20t
        -0x11t
        -0x56t
        -0x1bt
        -0x16t
        -0x10t
        -0x1ft
        -0x12t
        -0x11t
        -0x10t
        -0x1bt
        -0x10t
        -0x1bt
        -0x23t
        -0x18t
        -0x56t
        -0x21t
        -0x18t
        -0x1bt
        -0x21t
        -0x19t
        -0x1ft
        -0x20t
    .end array-data
.end method

.method private final A0D()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nh;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    :cond_13
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v0, :cond_27

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_33

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_33
    return-void
.end method

.method private final A0E(ILandroid/os/Bundle;)V
    .registers 24

    move-object/from16 v0, p0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move/from16 v1, p1

    if-ne v1, v5, :cond_23d

    const/4 v6, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7I;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Sz;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v9, 0x0

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A0D:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/PC;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/PC;->A03()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1K;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1I;->A05:Lcom/facebook/ads/redexgen/X/1I;

    if-ne v3, v2, :cond_23a

    const/4 v10, 0x1

    :goto_32
    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7I;->A0F:Lcom/facebook/ads/redexgen/X/1M;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/1N;->A06()Z

    move-result v12

    const/16 v4, 0x5c

    const/16 v3, 0x25

    const/16 v2, 0x6e

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Td;->getAdEventManager()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v14

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/7I;->A0I:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A0H:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v18

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    invoke-direct/range {v7 .. v18}, Lcom/facebook/ads/redexgen/X/Sz;-><init>(Lcom/facebook/ads/redexgen/X/YA;IZLcom/facebook/ads/redexgen/X/1M;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V

    iput-object v7, v0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    if-eqz v6, :cond_237

    const/4 v2, 0x1

    :goto_68
    invoke-virtual {v7, v2}, Lcom/facebook/ads/redexgen/X/Sz;->A0C(I)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    const/4 v6, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ry;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Ry;-><init>(Lcom/facebook/ads/redexgen/X/7I;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A0A:Lcom/facebook/ads/redexgen/X/Qa;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A0A:Lcom/facebook/ads/redexgen/X/Qa;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Qb;

    invoke-direct {v3, v0, v5, v4, v2}, Lcom/facebook/ads/redexgen/X/Qb;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A01:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Qb;->A0W(I)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A02:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Qb;->A0X(I)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/2O;

    invoke-direct {v2, v3}, Lcom/facebook/ads/redexgen/X/2O;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/S0;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/7I;->A0D:Ljava/util/List;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    move v5, v1

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/S0;-><init>(Lcom/facebook/ads/redexgen/X/2O;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Qb;Landroid/os/Bundle;)V

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    if-eqz v3, :cond_207

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Rz;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/7I;->A0D:Ljava/util/List;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/7I;->A05:Lcom/facebook/ads/redexgen/X/6Q;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/7I;->A0H:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Td;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v16

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7I;->A0M:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    move-object/from16 v20, v3

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v17, v7

    invoke-direct/range {v8 .. v20}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/util/List;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/Lt;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/S0;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/Ls;)V

    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/ED;->setAdapter(Lcom/facebook/ads/redexgen/X/4Q;)V

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7I;->A0B()V

    :goto_f3
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/7I;->A0G(Lcom/facebook/ads/redexgen/X/S0;)V

    const/4 v4, -0x1

    const/4 v3, -0x2

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_132

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v11

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x11

    if-eq v4, v3, :cond_240

    sget-object v6, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v4, ""

    const/4 v3, 0x5

    aput-object v4, v6, v3

    invoke-interface {v11, v10, v9, v8}, Lcom/facebook/ads/redexgen/X/Ir;->AGA(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_132
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7I;->A0A()V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/NR;->setTitleMaxLines(I)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NR;->A0A()V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NR;->A09()V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, -0x2

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v5, Lcom/facebook/ads/redexgen/X/7I;->A0P:I

    iput v5, v9, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v9, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sget v4, Lcom/facebook/ads/redexgen/X/7I;->A0Q:I

    const/4 v3, 0x0

    invoke-virtual {v9, v4, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v5, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v5, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v8, v3, v3, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A0K:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v3, v2, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A0L:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v3, v2, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A0M:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v3, v2, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/7I;->A03:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Td;->A0W(Landroid/view/View;ZI)V

    sget v1, Lcom/facebook/ads/redexgen/X/Np;->A00:I

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7I;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7I;->removeView(Landroid/view/View;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IP;->A2H(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1ef

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    :goto_1c4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    if-eqz v1, :cond_1ee

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v3

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v4

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0z()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A01()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/NR;->setInfo(Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NV;)V

    :cond_1ee
    return-void

    :cond_1ef
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7I;->A0J:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v2

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Np;->A00(Lcom/facebook/ads/redexgen/X/YA;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_1c4

    :cond_207
    const/16 v8, 0x3d

    const/16 v7, 0x11

    const/4 v6, 0x7

    sget-object v4, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v4, v4, v3

    const/16 v3, 0x11

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x50

    if-eq v4, v3, :cond_246

    sget-object v5, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v4, ""

    const/4 v3, 0x5

    aput-object v4, v5, v3

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const/16 v4, 0x1c

    const/16 v3, 0xb

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7I;->onDestroy()V

    goto/16 :goto_f3

    :cond_237
    const/4 v2, 0x0

    goto/16 :goto_68

    :cond_23a
    const/4 v10, 0x0

    goto/16 :goto_32

    :cond_23d
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_240
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_246
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/F0;)V
    .registers 8

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0C()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A13()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0D:Ljava/util/List;

    const/4 v4, 0x0

    :goto_2a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_47

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/1D;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7I;->A0D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/PC;-><init>(IILcom/facebook/ads/redexgen/X/1D;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_47
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/S0;)V
    .registers 6

    new-instance v1, Lcom/facebook/ads/redexgen/X/EE;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/EE;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yw;->A0G(Lcom/facebook/ads/redexgen/X/ED;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rx;-><init>(Lcom/facebook/ads/redexgen/X/7I;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/S0;->A0Z(Lcom/facebook/ads/redexgen/X/OM;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Lcom/facebook/ads/redexgen/X/19;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Nh;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1M;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/7I;->A0R:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/7I;->A0S:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Nh;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/7I;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7I;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/7I;Lcom/facebook/ads/redexgen/X/LN;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/LN;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/7I;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0a()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/7I;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0b()Z

    move-result p0

    return p0
.end method

.method private setAdDetailsToolBarClickListener(I)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0J:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    if-ltz p1, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getAdapter()Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5c

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v1, "L2Q99TOJcURMOBK7mibMWk3Gkyoj0cp8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "bh6RAua9XdYQzRZgXDnYUJ30pnvEuGys"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ED;->getAdapter()Lcom/facebook/ads/redexgen/X/4Q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4Q;->A0D()I

    move-result v0

    if-lt p1, v0, :cond_48

    :cond_47
    return-void

    :cond_48
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ED;->A1F(I)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Lw;

    if-nez v1, :cond_53

    return-void

    :cond_53
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Lw;->AF7()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lw;->AF5(Lcom/facebook/ads/redexgen/X/NR;)V

    return-void

    :cond_5c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .registers 13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A08:Lcom/facebook/ads/redexgen/X/Nh;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nh;->A00(I)V

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A04:Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aS;->A0w(I)Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v4

    if-eqz v4, :cond_81

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    if-eq v0, p1, :cond_81

    iput p1, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7I;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_25

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7I;->A09()V

    :cond_25
    sget v0, Lcom/facebook/ads/redexgen/X/Np;->A00:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7I;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7I;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a6

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    :goto_3a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    if-eqz v0, :cond_58

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_b8

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v1, "kFih28rpO37RepskuaJrvvoNb65qRIkh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v5, :cond_8a

    :cond_58
    const/16 v2, 0x3d

    const/16 v1, 0x11

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c

    const/16 v1, 0x21

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_82

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A0M:Lcom/facebook/ads/redexgen/X/Jb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->setVisibility(I)V

    :cond_81
    :goto_81
    return-void

    :cond_82
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A0M:Lcom/facebook/ads/redexgen/X/Jb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->setVisibility(I)V

    goto :goto_81

    :cond_8a
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v6

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v7

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0z()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A01()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/NR;->setInfo(Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NV;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7I;->setAdDetailsToolBarClickListener(I)V

    goto :goto_6d

    :cond_a6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0J:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Np;->A00(Lcom/facebook/ads/redexgen/X/YA;Landroid/view/ViewGroup;Ljava/lang/String;)V

    goto :goto_3a

    :cond_b8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final A9C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 7

    const/16 v2, 0x4e

    const/16 v1, 0xe

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7I;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/F0;

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Td;->A0X(Lcom/facebook/ads/redexgen/X/5J;)V

    if-eqz v0, :cond_18

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7I;->A0F(Lcom/facebook/ads/redexgen/X/F0;)V

    :cond_18
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/7I;->A0E(ILandroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rw;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Rw;-><init>(Lcom/facebook/ads/redexgen/X/7I;Lcom/facebook/ads/redexgen/X/5J;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0N(Lcom/facebook/ads/redexgen/X/5H;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()I

    move-result v0

    if-lez v0, :cond_44

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Td;->A0V(I)V

    :cond_44
    return-void
.end method

.method public final ACJ(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->ACJ(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0Q()V

    :cond_a
    return-void
.end method

.method public final ACj(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->ACj(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0R()V

    :cond_a
    return-void
.end method

.method public final AD6(Lcom/facebook/ads/redexgen/X/PG;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->getLayoutManager()Lcom/facebook/ads/redexgen/X/ZC;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/redexgen/X/PG;->A03:Lcom/facebook/ads/redexgen/X/PG;

    if-ne p1, v0, :cond_22

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    if-gtz v0, :cond_1f

    const/4 v2, 0x0

    :goto_11
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4r;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4r;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ZC;->A21(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4r;I)V

    :goto_1b
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/7I;->setUpLayoutForCardAtIndex(I)V

    :cond_1e
    return-void

    :cond_1f
    add-int/lit8 v2, v0, -0x1

    goto :goto_11

    :cond_22
    iget v2, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A0E:I

    add-int/lit8 v0, v1, -0x1

    if-lt v2, v0, :cond_37

    add-int/lit8 v2, v1, -0x1

    :goto_2c
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4r;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4r;-><init>()V

    invoke-virtual {v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ZC;->A21(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4r;I)V

    goto :goto_1b

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c
.end method

.method public final AEt(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/S0;->A0X(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public getCloseButtonStyle()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7I;->AEt(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7I;->A0B()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    if-eqz v1, :cond_2f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    if-eqz v0, :cond_2f

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2O;->getLayoutManager()Lcom/facebook/ads/redexgen/X/ZC;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A1t(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A09:Lcom/facebook/ads/redexgen/X/S0;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A00:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/S0;->A0U(I)V

    :cond_2f
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7I;->A0A()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A07:Lcom/facebook/ads/redexgen/X/NR;

    if-eqz v1, :cond_3b

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0C(I)V

    :cond_3b
    return-void
.end method

.method public final onDestroy()V
    .registers 5

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Td;->onDestroy()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_60

    sget-object v2, Lcom/facebook/ads/redexgen/X/7I;->A0O:[Ljava/lang/String;

    const-string v1, "nCvA44nJ0TVVJ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A06:Lcom/facebook/ads/redexgen/X/2O;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Ir;->AFz(Landroid/view/View;)V

    :cond_2c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7I;->A0C:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NL;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A03(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0H:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A02(Lcom/facebook/ads/redexgen/X/LN;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NL;->A05()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/If;->A9J(Ljava/lang/String;Ljava/util/Map;)V

    :cond_50
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7I;->A0D()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0V()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0A:Lcom/facebook/ads/redexgen/X/Qa;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0D:Ljava/util/List;

    return-void

    :cond_60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7I;->A0H:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7I;->A0G:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/LN;->A06(Lcom/facebook/ads/redexgen/X/YA;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
