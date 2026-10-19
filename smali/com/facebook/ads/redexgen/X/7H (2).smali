###### Class com.facebook.ads.redexgen.X.C7H (com.facebook.ads.redexgen.X.7H)
.class public final Lcom/facebook/ads/redexgen/X/7H;
.super Lcom/facebook/ads/redexgen/X/Td;
.source ""


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:I

.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Lcom/facebook/ads/redexgen/X/aS;

.field public A04:Lcom/facebook/ads/redexgen/X/6Q;

.field public A05:Lcom/facebook/ads/redexgen/X/2O;

.field public A06:Lcom/facebook/ads/redexgen/X/Nh;

.field public A07:Lcom/facebook/ads/redexgen/X/S0;

.field public A08:Lcom/facebook/ads/redexgen/X/Qa;

.field public A09:Lcom/facebook/ads/redexgen/X/Qb;

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PC;",
            ">;"
        }
    .end annotation
.end field

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0E:Lcom/facebook/ads/redexgen/X/LN;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hEO5MspmmQwWZDjfO9hYkGtE8t8ljCUN"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "895GOd6GqHS2SDNwtQvAqIE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zBXblOu1CdgXx49mdyV8flA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GxqIbNjcrUQMSJiuMkyJv1mwkudVYaGP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "be3ZgXhlaup3yXbKLr41yKjcTusIQNjx"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "HLi8FTj59ZkYUe8FmXrpO0CEflvtIm0o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7bereGXxKpIS6kk2UNHV0kt11i4QSfeP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LRvrjmvhZNKPrr4qRukG9JYrfPQqD7wd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7H;->A0B()V

    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7H;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7H;->A0I:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7H;->A0J:I

    const/high16 v1, 0x42600000    # 56.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7H;->A0L:I

    const/high16 v1, 0x41400000    # 12.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/7H;->A0K:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Ey;)V
    .registers 9

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/Td;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0C:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A07:Z

    new-instance v2, Lcom/facebook/ads/redexgen/X/TQ;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/TQ;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0S()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v0, p1, v2, v1, p4}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MM;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lt;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A06:Lcom/facebook/ads/redexgen/X/PU;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7H;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/F0;)V
    .registers 7

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/ads/redexgen/X/Td;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0C:Z

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7H;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method private A00(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A07:Z

    if-eqz v0, :cond_15

    const/16 v2, 0xe

    const/16 v1, 0x19

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7H;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    return-object v0

    :cond_15
    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7H;->A09(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/aS;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7H;->A03:Lcom/facebook/ads/redexgen/X/aS;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/If;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/LN;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/Nh;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7H;->A06:Lcom/facebook/ads/redexgen/X/Nh;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/7H;)Lcom/facebook/ads/redexgen/X/Qb;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    return-object p0
.end method

.method public static A09(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/7H;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const-string v1, "I427OJiZERIl1pgFYs7VIJxgJMuHqTWY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "m1VK8a3APoHjuOOKlTc7gi9yCeUy6Tbh"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_3d

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_3d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/7H;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0A:Ljava/lang/String;

    return-object p0
.end method

.method public static A0B()V
    .registers 1

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7H;->A0F:[B

    return-void

    :array_a
    .array-data 1
        0x76t
        0x73t
        0x48t
        0x73t
        0x76t
        0x63t
        0x76t
        0x48t
        0x75t
        0x62t
        0x79t
        0x73t
        0x7bt
        0x72t
        0x75t
        0x62t
        0x70t
        0x66t
        0x75t
        0x63t
        0x62t
        0x63t
        0x51t
        0x6et
        0x63t
        0x62t
        0x68t
        0x46t
        0x63t
        0x43t
        0x66t
        0x73t
        0x66t
        0x45t
        0x72t
        0x69t
        0x63t
        0x6bt
        0x62t
    .end array-data
.end method

.method private final A0C()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2O;->removeAllViews()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->A1R()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A06:Lcom/facebook/ads/redexgen/X/Nh;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nh;->removeAllViews()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/7H;->A06:Lcom/facebook/ads/redexgen/X/Nh;

    :cond_21
    return-void
.end method

.method private final A0D(ILandroid/os/Bundle;)V
    .registers 27

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/7H;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    move/from16 v5, p1

    if-ne v5, v8, :cond_162

    const/16 v1, 0x11

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_17
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ku;->A03:Landroid/util/DisplayMetrics;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ku;->A03:Landroid/util/DisplayMetrics;

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v5, v8, :cond_151

    sget v1, Lcom/facebook/ads/redexgen/X/7H;->A0I:I

    mul-int/lit8 v1, v1, 0x4

    sub-int v2, v3, v1

    div-int/lit8 v1, v4, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v20, v3, 0x4

    :goto_42
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ro;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/Ro;-><init>(Lcom/facebook/ads/redexgen/X/7H;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A08:Lcom/facebook/ads/redexgen/X/Qa;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A08:Lcom/facebook/ads/redexgen/X/Qa;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Qb;

    invoke-direct {v2, v0, v8, v6, v1}, Lcom/facebook/ads/redexgen/X/Qb;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A00:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Qb;->A0W(I)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A01:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Qb;->A0X(I)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v6, Lcom/facebook/ads/redexgen/X/2O;

    invoke-direct {v6, v1}, Lcom/facebook/ads/redexgen/X/2O;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v6, v0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/2O;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/S0;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7H;->A0B:Ljava/util/List;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    move-object v7, v7

    move-object v8, v6

    move v9, v5

    move-object v10, v2

    move-object v11, v1

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/S0;-><init>(Lcom/facebook/ads/redexgen/X/2O;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Qb;Landroid/os/Bundle;)V

    iput-object v7, v0, Lcom/facebook/ads/redexgen/X/7H;->A07:Lcom/facebook/ads/redexgen/X/S0;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    new-instance v8, Lcom/facebook/ads/redexgen/X/Rq;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/7H;->A0B:Ljava/util/List;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/7H;->A03:Lcom/facebook/ads/redexgen/X/aS;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/7H;->A04:Lcom/facebook/ads/redexgen/X/6Q;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/7H;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Td;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v16

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7H;->A0A:Ljava/lang/String;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7H;->A07:Lcom/facebook/ads/redexgen/X/S0;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    move-object v6, v8

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    move/from16 v21, v5

    move/from16 v19, v3

    move/from16 v18, v4

    move-object/from16 v17, v7

    invoke-direct/range {v8 .. v23}, Lcom/facebook/ads/redexgen/X/Rq;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/util/List;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/Lt;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/S0;Lcom/facebook/ads/redexgen/X/Ls;)V

    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/ED;->setAdapter(Lcom/facebook/ads/redexgen/X/4Q;)V

    move-object/from16 v4, p0

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/2O;->getOnScrollListener()Lcom/facebook/ads/redexgen/X/4h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ED;->A1k(Lcom/facebook/ads/redexgen/X/4h;)V

    const/4 v0, 0x1

    if-ne v5, v0, :cond_cd

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/7H;->A07:Lcom/facebook/ads/redexgen/X/S0;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/7H;->A0F(Lcom/facebook/ads/redexgen/X/S0;)V

    :cond_cd
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    sget-object v1, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_16f

    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const-string v1, "pS0yYjaDPNGuTrfnUmeGhxtdEtLadoEJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "mwC7eMAbLdHre0yQkkMBVztsNAF33a9m"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/7H;->A06:Lcom/facebook/ads/redexgen/X/Nh;

    if-eqz v6, :cond_113

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_169

    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const-string v1, "7ZjVpxQcOo2BFfYt51qxyVC8jdlns0bj"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_113
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v6

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_147

    if-eqz v6, :cond_141

    :goto_130
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v2

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Ir;->AGA(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_141
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/7H;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/Td;->A0W(Landroid/view/View;ZI)V

    return-void

    :cond_147
    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const-string v1, "nKvQ299cRrmi8SltfoUYXILZ1CbfqCSq"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v6, :cond_141

    goto :goto_130

    :cond_151
    sget v2, Lcom/facebook/ads/redexgen/X/7H;->A0L:I

    sget v1, Lcom/facebook/ads/redexgen/X/7H;->A0H:I

    add-int/2addr v2, v1

    sget v1, Lcom/facebook/ads/redexgen/X/7H;->A0I:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v2, v1

    sub-int/2addr v4, v2

    sget v3, Lcom/facebook/ads/redexgen/X/7H;->A0I:I

    mul-int/lit8 v20, v3, 0x2

    goto/16 :goto_42

    :cond_162
    const/16 v1, 0x30

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_17

    :cond_169
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/aS;)V
    .registers 8

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7H;->A03:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0A:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A03:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0C()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A03:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0D()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A03:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A13()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0B:Ljava/util/List;

    const/4 v4, 0x0

    :goto_2a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_63

    sget-object v2, Lcom/facebook/ads/redexgen/X/7H;->A0G:[Ljava/lang/String;

    const-string v1, "1AHb04hcylshFNuVFPVd0IA840Fx90m0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_62

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/1D;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7H;->A0B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {v0, v4, v1, v3}, Lcom/facebook/ads/redexgen/X/PC;-><init>(IILcom/facebook/ads/redexgen/X/1D;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_62
    return-void

    :cond_63
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F(Lcom/facebook/ads/redexgen/X/S0;)V
    .registers 6

    new-instance v1, Lcom/facebook/ads/redexgen/X/EE;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/EE;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yw;->A0G(Lcom/facebook/ads/redexgen/X/ED;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rn;-><init>(Lcom/facebook/ads/redexgen/X/7H;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/S0;->A0Z(Lcom/facebook/ads/redexgen/X/OM;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Lcom/facebook/ads/redexgen/X/19;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nh;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Nh;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1M;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A06:Lcom/facebook/ads/redexgen/X/Nh;

    const/4 v1, -0x1

    sget v0, Lcom/facebook/ads/redexgen/X/7H;->A0J:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    sget v0, Lcom/facebook/ads/redexgen/X/7H;->A0K:I

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A06:Lcom/facebook/ads/redexgen/X/Nh;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Nh;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/LN;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/LN;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/7H;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0a()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/7H;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0b()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final A9C(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7H;->A00(Landroid/content/Intent;)Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/Td;->A0X(Lcom/facebook/ads/redexgen/X/5J;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/7H;->A0E(Lcom/facebook/ads/redexgen/X/aS;)V

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/7H;->A0D(ILandroid/os/Bundle;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rm;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Rm;-><init>(Lcom/facebook/ads/redexgen/X/7H;Lcom/facebook/ads/redexgen/X/5J;)V

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0N(Lcom/facebook/ads/redexgen/X/5H;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()I

    move-result v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A07:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A02()I

    move-result v1

    :cond_43
    if-lez v1, :cond_48

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Td;->A0V(I)V

    :cond_48
    return-void
.end method

.method public final ACJ(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->ACJ(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A07:Lcom/facebook/ads/redexgen/X/S0;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0Q()V

    :cond_a
    return-void
.end method

.method public final ACj(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->ACj(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A07:Lcom/facebook/ads/redexgen/X/S0;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/S0;->A0R()V

    return-void
.end method

.method public final AEt(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A07:Lcom/facebook/ads/redexgen/X/S0;

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
    .registers 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/7H;->AEt(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7H;->A0C()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/7H;->A0D(ILandroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 5

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Td;->onDestroy()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A05:Lcom/facebook/ads/redexgen/X/2O;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->AFz(Landroid/view/View;)V

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7H;->A0A:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NL;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A03(Lcom/facebook/ads/redexgen/X/Qb;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A02(Lcom/facebook/ads/redexgen/X/LN;)Lcom/facebook/ads/redexgen/X/NL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NL;->A05()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/If;->A9J(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/7H;->A0C()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0V()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A09:Lcom/facebook/ads/redexgen/X/Qb;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A08:Lcom/facebook/ads/redexgen/X/Qa;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0B:Ljava/util/List;

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7H;->A0E:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7H;->A0D:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1, v0, p1, p0, p0}, Lcom/facebook/ads/redexgen/X/LN;->A06(Lcom/facebook/ads/redexgen/X/YA;Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Td;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
