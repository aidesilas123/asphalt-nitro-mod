###### Class com.facebook.ads.redexgen.X.SM (com.facebook.ads.redexgen.X.SM)
.class public final Lcom/facebook/ads/redexgen/X/SM;
.super Lcom/facebook/ads/redexgen/X/Ow;
.source ""


# static fields
.field public static A0W:[B

.field public static A0X:[Ljava/lang/String;

.field public static final A0Y:I

.field public static final A0Z:I

.field public static final A0a:I

.field public static final A0b:I

.field public static final A0c:I

.field public static final A0d:I

.field public static final A0e:I

.field public static final A0f:I

.field public static final A0g:I

.field public static final A0h:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1M;

.field public A01:Lcom/facebook/ads/redexgen/X/Kn;

.field public A02:Lcom/facebook/ads/redexgen/X/Pj;

.field public A03:Lcom/facebook/ads/redexgen/X/JX;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:I

.field public final A09:I

.field public final A0A:I

.field public final A0B:I

.field public final A0C:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0D:Lcom/facebook/ads/redexgen/X/NR;

.field public final A0E:Lcom/facebook/ads/redexgen/X/T3;

.field public final A0F:Lcom/facebook/ads/redexgen/X/P0;

.field public final A0G:Lcom/facebook/ads/redexgen/X/PS;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Pa;

.field public final A0I:Lcom/facebook/ads/redexgen/X/RX;

.field public final A0J:Lcom/facebook/ads/redexgen/X/76;

.field public final A0K:Lcom/facebook/ads/redexgen/X/Ob;

.field public final A0L:Lcom/facebook/ads/redexgen/X/Nn;

.field public final A0M:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0N:Lcom/facebook/ads/redexgen/X/MI;

.field public final A0O:Lcom/facebook/ads/redexgen/X/MA;

.field public final A0P:Lcom/facebook/ads/redexgen/X/M9;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/K2;

.field public final A0R:Lcom/facebook/ads/redexgen/X/Jr;

.field public final A0S:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0T:Lcom/facebook/ads/redexgen/X/JT;

.field public final A0U:Z

.field public final A0V:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YuhgBsbCJ4GENG72FYuTSQ3UxVCmrs0t"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RSfzcHToFNO8jc1tX2m0S0AZ0vbf9kKl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lGjhRdALEILVIUsiuWCm6MXJK2R8L6Co"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wXQvDYR5huLQKlTsBS5mG0rN7ygrQvR2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AYgBJnzxyMi9rrwHO3oB8yOhTSWVLxNu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3k2Jytm7iEKA6X2jmmGhgFSNDYaf4AHR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/SM;->A0X:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/SM;->A0D()V

    const/high16 v1, 0x42400000    # 48.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0b:I

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2d;->A01(II)I

    move-result v2

    sput v2, Lcom/facebook/ads/redexgen/X/SM;->A0Z:I

    const/high16 v1, 0x41d00000    # 26.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0g:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0h:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0d:I

    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0e:I

    const/high16 v1, 0x41000000    # 8.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0c:I

    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0f:I

    const/16 v0, 0x5a

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/2d;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0a:I

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/SM;->A0Y:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/MM;ILcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/In;IIIZIZZZLcom/facebook/ads/redexgen/X/P0;)V
    .registers 36

    move-object/from16 v3, p0

    move-object/from16 v9, p0

    move-object/from16 v5, p1

    move-object v10, v5

    move-object/from16 v4, p2

    move-object v12, v4

    move/from16 v16, p16

    move-object/from16 v13, p3

    move/from16 v15, p15

    move-object/from16 v11, p5

    move/from16 v14, p6

    move-object/from16 v17, p7

    invoke-direct/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/Ow;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MM;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;IZZLcom/facebook/ads/redexgen/X/Lt;)V

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A04:Z

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A05:Z

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A07:Z

    new-instance v12, Lcom/facebook/ads/redexgen/X/8x;

    invoke-direct {v12, v3}, Lcom/facebook/ads/redexgen/X/8x;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    iput-object v12, v3, Lcom/facebook/ads/redexgen/X/SM;->A0O:Lcom/facebook/ads/redexgen/X/MA;

    new-instance v11, Lcom/facebook/ads/redexgen/X/8q;

    invoke-direct {v11, v3}, Lcom/facebook/ads/redexgen/X/8q;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    iput-object v11, v3, Lcom/facebook/ads/redexgen/X/SM;->A0N:Lcom/facebook/ads/redexgen/X/MI;

    new-instance v10, Lcom/facebook/ads/redexgen/X/8l;

    invoke-direct {v10, v3}, Lcom/facebook/ads/redexgen/X/8l;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    iput-object v10, v3, Lcom/facebook/ads/redexgen/X/SM;->A0M:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v9, Lcom/facebook/ads/redexgen/X/8X;

    invoke-direct {v9, v3}, Lcom/facebook/ads/redexgen/X/8X;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    iput-object v9, v3, Lcom/facebook/ads/redexgen/X/SM;->A0P:Lcom/facebook/ads/redexgen/X/M9;

    new-instance v8, Lcom/facebook/ads/redexgen/X/8E;

    invoke-direct {v8, v3}, Lcom/facebook/ads/redexgen/X/8E;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    iput-object v8, v3, Lcom/facebook/ads/redexgen/X/SM;->A0K:Lcom/facebook/ads/redexgen/X/Ob;

    new-instance v7, Lcom/facebook/ads/redexgen/X/8C;

    invoke-direct {v7, v3}, Lcom/facebook/ads/redexgen/X/8C;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    iput-object v7, v3, Lcom/facebook/ads/redexgen/X/SM;->A0L:Lcom/facebook/ads/redexgen/X/Nn;

    iput-object v5, v3, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jr;

    move-object/from16 v1, p8

    invoke-direct {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/Jr;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/In;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0R:Lcom/facebook/ads/redexgen/X/Jr;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0S:Lcom/facebook/ads/redexgen/X/Jb;

    move/from16 v0, p13

    iput v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0A:I

    move/from16 v0, p14

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0V:Z

    move/from16 v0, p9

    iput v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A09:I

    move/from16 v2, p10

    iput v2, v3, Lcom/facebook/ads/redexgen/X/SM;->A0B:I

    move-object/from16 v0, p17

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0F:Lcom/facebook/ads/redexgen/X/P0;

    move/from16 v0, p11

    iput v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A08:I

    move/from16 v0, p12

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0U:Z

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PS;

    invoke-direct {v0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/PS;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0G:Lcom/facebook/ads/redexgen/X/PS;

    const/4 v0, 0x1

    if-ne v2, v0, :cond_140

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    :goto_8e
    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/1M;

    new-instance v6, Lcom/facebook/ads/redexgen/X/RX;

    invoke-direct {v6, v5}, Lcom/facebook/ads/redexgen/X/RX;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v6, v3, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v2

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/8a;

    const/4 v0, 0x0

    aput-object v12, v1, v0

    const/4 v0, 0x1

    aput-object v11, v1, v0

    const/4 v0, 0x2

    aput-object v10, v1, v0

    const/4 v0, 0x3

    aput-object v9, v1, v0

    const/4 v0, 0x4

    aput-object v8, v1, v0

    const/4 v0, 0x5

    aput-object v7, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/8Z;->A03([Lcom/facebook/ads/redexgen/X/8a;)V

    invoke-virtual {v13}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/facebook/ads/redexgen/X/76;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/RX;Ljava/lang/String;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0J:Lcom/facebook/ads/redexgen/X/76;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SM;->A0C()V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A08()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/RX;->setVideoURI(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SM;->A0B()V

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SM;->A05()Lcom/facebook/ads/redexgen/X/Sz;

    move-result-object v8

    iput-object v8, v3, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    const/16 v7, 0x190

    const/16 v1, 0x64

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/JT;

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/facebook/ads/redexgen/X/JT;-><init>(Landroid/view/View;III)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0T:Lcom/facebook/ads/redexgen/X/JT;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/JT;->A3U(ZZ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/K2;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/K2;-><init>(Z)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SM;->A0E()V

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/NR;->getCTAButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    iput-object v1, v3, Lcom/facebook/ads/redexgen/X/SM;->A0E:Lcom/facebook/ads/redexgen/X/T3;

    const/16 v0, 0x3e9

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SM;->A0A()V

    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SM;->A09()V

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/NR;->bringToFront()V

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v2, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->AGA(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_123
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/IP;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13c

    new-instance v7, Lcom/facebook/ads/redexgen/X/Pa;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v0, v7

    move-object v9, v4

    move-object v10, v6

    move-object v8, v5

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Pa;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/RX;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0H:Lcom/facebook/ads/redexgen/X/Pa;

    :goto_13b
    return-void

    :cond_13c
    const/4 v0, 0x0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/SM;->A0H:Lcom/facebook/ads/redexgen/X/Pa;

    goto :goto_13b

    :cond_140
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A00()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    goto/16 :goto_8e
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/SM;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0A:I

    return p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/SM;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/SM;->A09:I

    return p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/Sz;
    .registers 17

    move-object/from16 v0, p0

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1C;->A0O()Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x25

    const/16 v2, 0xe

    const/16 v1, 0x7d

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/SM;->A08(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pm;->A04:Lcom/facebook/ads/redexgen/X/Pm;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Pm;->A02()Ljava/lang/String;

    move-result-object v10

    :goto_2a
    new-instance v4, Lcom/facebook/ads/redexgen/X/Sz;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    sget v6, Lcom/facebook/ads/redexgen/X/SM;->A0b:I

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1K;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/1I;->A05:Lcom/facebook/ads/redexgen/X/1I;

    if-ne v2, v1, :cond_9c

    const/4 v7, 0x1

    :goto_43
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/SM;->getColors()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v8

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1N;->A06()Z

    move-result v9

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/Ow;->A07:Lcom/facebook/ads/redexgen/X/If;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Ow;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Ow;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/Ow;->A08:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v15

    invoke-direct/range {v4 .. v15}, Lcom/facebook/ads/redexgen/X/Sz;-><init>(Lcom/facebook/ads/redexgen/X/YA;IZLcom/facebook/ads/redexgen/X/1M;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V

    const/16 v1, 0x3f0

    invoke-static {v1, v4}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    iget v1, v0, Lcom/facebook/ads/redexgen/X/SM;->A0B:I

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/Sz;->A0C(I)V

    invoke-virtual {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/SM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v5

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v6

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0z()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1X;->A01()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Sz;->setInfo(Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NV;)V

    return-object v4

    :cond_9c
    const/4 v7, 0x0

    goto :goto_43

    :cond_9e
    const/4 v4, 0x0

    const/16 v2, 0x25

    const/16 v1, 0x3a

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/SM;->A08(III)Ljava/lang/String;

    move-result-object v10

    goto :goto_2a
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/SM;)Lcom/facebook/ads/redexgen/X/P0;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0F:Lcom/facebook/ads/redexgen/X/P0;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/SM;)Lcom/facebook/ads/redexgen/X/RX;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/SM;->A0W:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A09()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0S:Lcom/facebook/ads/redexgen/X/Jb;

    sget v0, Lcom/facebook/ads/redexgen/X/SM;->A0Z:I

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A06(II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0S:Lcom/facebook/ads/redexgen/X/Jb;

    sget v0, Lcom/facebook/ads/redexgen/X/SM;->A0h:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Jb;->setPadding(IIII)V

    sget v0, Lcom/facebook/ads/redexgen/X/SM;->A0g:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0S:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/SM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private A0A()V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0R:Lcom/facebook/ads/redexgen/X/Jr;

    sget v0, Lcom/facebook/ads/redexgen/X/SM;->A0d:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Jr;->setPadding(IIII)V

    sget v0, Lcom/facebook/ads/redexgen/X/SM;->A0e:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/facebook/ads/redexgen/X/Ls;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/SM;->A0c:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/SM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0R:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/SM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private A0B()V
    .registers 4

    new-instance v2, Lcom/facebook/ads/redexgen/X/SP;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/SP;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0L(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/SM;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private A0C()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0S:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0R:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/6j;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/6j;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6j;->setImage(Ljava/lang/String;)V

    :cond_3f
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6Z;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6Z;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    return-void
.end method

.method public static A0D()V
    .registers 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/SM;->A0W:[B

    return-void

    :array_a
    .array-data 1
        -0x37t
        -0x2bt
        -0x2dt
        -0x6ct
        -0x34t
        -0x39t
        -0x37t
        -0x35t
        -0x38t
        -0x2bt
        -0x2bt
        -0x2ft
        -0x6ct
        -0x39t
        -0x36t
        -0x27t
        -0x6ct
        -0x31t
        -0x2ct
        -0x26t
        -0x35t
        -0x28t
        -0x27t
        -0x26t
        -0x31t
        -0x26t
        -0x31t
        -0x39t
        -0x2et
        -0x6ct
        -0x37t
        -0x2et
        -0x31t
        -0x37t
        -0x2ft
        -0x35t
        -0x36t
        0x1bt
        0xet
        0x20t
        0xat
        0x1bt
        0xdt
        0xet
        0xdt
        0x8t
        0x1ft
        0x12t
        0xdt
        0xet
        0x18t
    .end array-data
.end method

.method private final A0E()V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->getExpandableLayout()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_70

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A03:Lcom/facebook/ads/redexgen/X/JX;

    if-eqz v1, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/K2;->A0I(Lcom/facebook/ads/redexgen/X/Q6;)V

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v8

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->getCTAButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v4

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/1M;->A09(Z)I

    move-result v2

    const/16 v6, 0x12c

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JV;

    invoke-direct {v0, v4, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/JV;-><init>(Landroid/view/View;III)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/K2;->A0I(Lcom/facebook/ads/redexgen/X/Q6;)V

    sget v2, Lcom/facebook/ads/redexgen/X/SM;->A0Z:I

    sget v0, Lcom/facebook/ads/redexgen/X/SM;->A0a:I

    sget v1, Lcom/facebook/ads/redexgen/X/SM;->A0Y:I

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v8, v3}, Lcom/facebook/ads/redexgen/X/1M;->A08(Z)I

    move-result v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A05(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->getCTAButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JY;

    invoke-direct {v0, v1, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/JY;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/K2;->A0I(Lcom/facebook/ads/redexgen/X/Q6;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    const/16 v2, 0x96

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/JW;

    invoke-direct {v0, v5, v2, v1}, Lcom/facebook/ads/redexgen/X/JW;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/K2;->A0I(Lcom/facebook/ads/redexgen/X/Q6;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/K2;->A9D(Lcom/facebook/ads/redexgen/X/RX;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    const/16 v0, 0x8fc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/K2;->A0H(I)V

    :cond_70
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/SM;Lcom/facebook/ads/redexgen/X/71;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/SM;->A0G(Lcom/facebook/ads/redexgen/X/71;)V

    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/71;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getState()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A02:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v2, Lcom/facebook/ads/redexgen/X/SO;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/SO;-><init>(Lcom/facebook/ads/redexgen/X/SM;Lcom/facebook/ads/redexgen/X/71;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/SM;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/SM;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SM;->A07:Z

    return p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/SM;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0V:Z

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/SM;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SM;->A07:Z

    return p1
.end method


# virtual methods
.method public final A0K()V
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A07()Z

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->AFz(Landroid/view/View;)V

    :cond_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0H:Lcom/facebook/ads/redexgen/X/Pa;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pa;->A0A()V

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v3

    const/4 v0, 0x6

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8a;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0O:Lcom/facebook/ads/redexgen/X/MA;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0N:Lcom/facebook/ads/redexgen/X/MI;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0M:Lcom/facebook/ads/redexgen/X/MU;

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0P:Lcom/facebook/ads/redexgen/X/M9;

    aput-object v0, v2, v4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0K:Lcom/facebook/ads/redexgen/X/Ob;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0L:Lcom/facebook/ads/redexgen/X/Nn;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8Z;->A04([Lcom/facebook/ads/redexgen/X/8a;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0H(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0V()V

    :cond_57
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0J:Lcom/facebook/ads/redexgen/X/76;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0g()V

    new-array v4, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    aput-object v0, v4, v5

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SM;->A0S:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/SM;->A0X:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8c

    sget-object v2, Lcom/facebook/ads/redexgen/X/SM;->A0X:[Ljava/lang/String;

    const-string v1, "4e1dr9g4n9kT22ZIdoKy0n8REVoGbgbF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    aput-object v3, v4, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0R:Lcom/facebook/ads/redexgen/X/Jr;

    aput-object v0, v4, v7

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/LV;->A0Z([Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A0B:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0V()V

    return-void

    :cond_8c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0L()V
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0C:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4C()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/SM;->A04:Z

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0T(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0H(Landroid/view/View;)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    const/4 v6, 0x0

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0S:Lcom/facebook/ads/redexgen/X/Jb;

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0R:Lcom/facebook/ads/redexgen/X/Jr;

    const/4 v5, 0x2

    aput-object v0, v1, v5

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LV;->A0Z([Landroid/view/View;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0G:Lcom/facebook/ads/redexgen/X/PS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0E:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PS;->A03(Lcom/facebook/ads/redexgen/X/T3;)Landroid/util/Pair;

    move-result-object v2

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    const/16 v0, 0x44d

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ox;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/PR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_b4

    :goto_49
    iget v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A08:I

    if-nez v0, :cond_79

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0U:Z

    if-eqz v0, :cond_79

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0V:Z

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0F:Lcom/facebook/ads/redexgen/X/P0;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/P0;->AG5()V

    :cond_5a
    new-instance v1, Lcom/facebook/ads/redexgen/X/Kn;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/SM;->A0A:I

    const/high16 v3, 0x42c80000    # 100.0f

    const-wide/16 v4, 0x64

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/SN;

    invoke-direct {v7, p0}, Lcom/facebook/ads/redexgen/X/SN;-><init>(Lcom/facebook/ads/redexgen/X/SM;)V

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/Kn;-><init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Km;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Kn;->A08()Z

    :goto_78
    return-void

    :cond_79
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/SM;->A05:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0F:Lcom/facebook/ads/redexgen/X/P0;

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/P0;->ACw(Z)V

    goto :goto_78

    :pswitch_81
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/NR;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/facebook/ads/redexgen/X/Ls;->A00:I

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/SM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_49

    :pswitch_9d
    new-array v1, v3, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LV;->A0Z([Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/facebook/ads/redexgen/X/SM;->A0f:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/SM;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_49

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_81
        :pswitch_9d
    .end packed-switch
.end method

.method public final A0M()V
    .registers 4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pj;->A02:Lcom/facebook/ads/redexgen/X/Pj;

    const/16 v0, 0x14

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    return-void
.end method

.method public final A0N(Z)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A07()Z

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0i()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getVideoStartReason()Lcom/facebook/ads/redexgen/X/Pj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A02:Lcom/facebook/ads/redexgen/X/Pj;

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/SM;->A06:Z

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    const/4 v1, 0x0

    const/16 v0, 0xd

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0e(ZI)V

    return-void
.end method

.method public final A0O(Z)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A06()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SM;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    sget-object v1, Lcom/facebook/ads/redexgen/X/SM;->A0X:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/SM;->A0X:[Ljava/lang/String;

    const-string v1, "pObqmm4LdTsqTcUgL7kozPbufRCkwYZC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "5szeP9lNqMFVM0rzjOQcuK8NUDwg7u3G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Kn;->A08()Z

    :cond_30
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A04:Z

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getState()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    if-eq v1, v0, :cond_4f

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SM;->A02:Lcom/facebook/ads/redexgen/X/Pj;

    if-eqz v2, :cond_4f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A06:Z

    if-eqz v0, :cond_48

    if-eqz p1, :cond_4f

    :cond_48
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0I:Lcom/facebook/ads/redexgen/X/RX;

    const/16 v0, 0x13

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_4f
    return-void
.end method

.method public final A0P()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A08:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0O()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A04:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public final A0Q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A04:Z

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/1M;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/1M;

    return-object v0
.end method

.method public getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/Oz;
    .registers 10

    new-instance v2, Lcom/facebook/ads/redexgen/X/Oz;

    const/4 v3, 0x1

    sget v4, Lcom/facebook/ads/redexgen/X/Oz;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T3;->A08(Lcom/facebook/ads/redexgen/X/aS;)Z

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A07(Z)I

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Oz;-><init>(ZILcom/facebook/ads/redexgen/X/1M;ZILjava/lang/String;)V

    return-object v2
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/LN;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A08:Lcom/facebook/ads/redexgen/X/LN;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A04:Z

    if-nez v0, :cond_2b

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/1M;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0E:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Na;->setViewShowsOverMedia(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0E:Lcom/facebook/ads/redexgen/X/T3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/1M;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/1M;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0C(I)V

    :cond_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ow;->A05:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/SM;->A0X:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_46

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_46
    sget-object v2, Lcom/facebook/ads/redexgen/X/SM;->A0X:[Ljava/lang/String;

    const-string v1, "uYIsd2DhsQ91Wp0xmXJ9348eeMLtSRMf"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A00()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    goto :goto_16
.end method

.method public final onLayout(ZIIII)V
    .registers 11

    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ow;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0D:Lcom/facebook/ads/redexgen/X/NR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->getExpandableLayout()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_29

    if-eqz p1, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A03:Lcom/facebook/ads/redexgen/X/JX;

    if-nez v0, :cond_29

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v2, 0x0

    const/16 v0, 0x12c

    new-instance v1, Lcom/facebook/ads/redexgen/X/JX;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/JX;-><init>(Landroid/view/View;III)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A03:Lcom/facebook/ads/redexgen/X/JX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/K2;->A0I(Lcom/facebook/ads/redexgen/X/Q6;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A0Q:Lcom/facebook/ads/redexgen/X/K2;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K2;->A0G()V

    :cond_29
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ow;->onWindowFocusChanged(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SM;->A0O(Z)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/SM;->A0N(Z)V

    goto :goto_9
.end method
