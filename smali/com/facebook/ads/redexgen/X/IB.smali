###### Class com.facebook.ads.redexgen.X.IB (com.facebook.ads.redexgen.X.IB)
.class public final Lcom/facebook/ads/redexgen/X/IB;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IA;,
        Lcom/facebook/ads/redexgen/X/I9;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:Z

.field public final A09:Landroid/view/WindowManager;

.field public final A0A:Lcom/facebook/ads/redexgen/X/I9;

.field public final A0B:Lcom/facebook/ads/redexgen/X/IA;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xjDjhxCoR5E9PaR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "vpLFoDls1yXd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "vp7lX6ix760xQFA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "plC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "mnLR5dwnrEQUmTikV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "t5Nzngx1C9ROF"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WJjUxBMWNKZwORVrQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "T20oC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IB;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IB;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/IB;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v2, 0x7

    const/4 v1, 0x6

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IB;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A09:Landroid/view/WindowManager;

    :goto_1a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_3a

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x11

    if-lt v1, v0, :cond_28

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IB;->A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/I9;

    move-result-object v3

    :cond_28
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/IB;->A0A:Lcom/facebook/ads/redexgen/X/I9;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IA;->A00()Lcom/facebook/ads/redexgen/X/IA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A0B:Lcom/facebook/ads/redexgen/X/IA;

    :goto_30
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A06:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A07:J

    return-void

    :cond_3a
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/IB;->A0A:Lcom/facebook/ads/redexgen/X/I9;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/IB;->A0B:Lcom/facebook/ads/redexgen/X/IA;

    goto :goto_30

    :cond_3f
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/IB;->A09:Landroid/view/WindowManager;

    goto :goto_1a
.end method

.method public static A00(JJJ)J
    .registers 11

    sub-long v2, p0, p2

    div-long/2addr v2, p4

    mul-long v0, p4, v2

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_16

    sub-long v3, p2, p4

    :goto_c
    sub-long v1, p2, p0

    sub-long/2addr p0, v3

    cmp-long v0, v1, p0

    if-gez v0, :cond_14

    :goto_13
    return-wide p2

    :cond_14
    move-wide p2, v3

    goto :goto_13

    :cond_16
    move-wide v3, p2

    sget-object v1, Lcom/facebook/ads/redexgen/X/IB;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/IB;->A0D:[Ljava/lang/String;

    const-string v1, "KRnDU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    add-long/2addr p2, p4

    goto :goto_c
.end method

.method private A01(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/I9;
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IB;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/facebook/ads/redexgen/X/I9;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/I9;-><init>(Lcom/facebook/ads/redexgen/X/IB;Landroid/hardware/display/DisplayManager;)V

    goto :goto_11
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/IB;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_9
    array-length v0, p1

    if-ge p0, v0, :cond_31

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v3, v0, -0x5b

    sget-object v1, Lcom/facebook/ads/redexgen/X/IB;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_24

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/IB;->A0D:[Ljava/lang/String;

    const-string v1, "fcjVOHbVEUruwwj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    int-to-byte v0, v3

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A09:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    float-to-double v2, v0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    double-to-long v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/IB;->A06:J

    const-wide/16 v0, 0x50

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x64

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/IB;->A07:J

    :cond_1e
    return-void
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/IB;->A0C:[B

    return-void

    :array_a
    .array-data 1
        -0xdt
        -0x8t
        0x2t
        -0x1t
        -0x5t
        -0x10t
        0x8t
        0x1dt
        0xft
        0x14t
        0xat
        0x15t
        0x1dt
    .end array-data
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/IB;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IB;->A03()V

    return-void
.end method

.method private A06(JJ)Z
    .registers 10

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A04:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A05:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x1312d00

    cmp-long v0, v3, v1

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public final A07(JJ)J
    .registers 23

    move-object/from16 v12, p0

    const-wide/16 v6, 0x3e8

    move-wide/from16 v10, p1

    mul-long/2addr v6, v10

    move-wide v14, v6

    move-wide/from16 v8, p3

    move-wide v2, v8

    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A08:Z

    if-eqz v0, :cond_3b

    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A02:J

    cmp-long v4, v10, v0

    if-eqz v4, :cond_20

    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A01:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A01:J

    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A03:J

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A00:J

    :cond_20
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A01:J

    const-wide/16 v16, 0x6

    const/4 v13, 0x0

    cmp-long v4, v0, v16

    if-ltz v4, :cond_74

    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/IB;->A04:J

    sub-long v16, v6, v4

    div-long v16, v16, v0

    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/IB;->A00:J

    add-long v4, v4, v16

    invoke-direct {v12, v4, v5, v8, v9}, Lcom/facebook/ads/redexgen/X/IB;->A06(JJ)Z

    move-result v0

    if-eqz v0, :cond_6c

    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/IB;->A08:Z

    :cond_3b
    :goto_3b
    iget-boolean v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A08:Z

    if-nez v0, :cond_4a

    iput-wide v6, v12, Lcom/facebook/ads/redexgen/X/IB;->A04:J

    iput-wide v8, v12, Lcom/facebook/ads/redexgen/X/IB;->A05:J

    const-wide/16 v0, 0x0

    iput-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A01:J

    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A08:Z

    :cond_4a
    iput-wide v10, v12, Lcom/facebook/ads/redexgen/X/IB;->A02:J

    iput-wide v14, v12, Lcom/facebook/ads/redexgen/X/IB;->A03:J

    iget-object v7, v12, Lcom/facebook/ads/redexgen/X/IB;->A0B:Lcom/facebook/ads/redexgen/X/IA;

    if-eqz v7, :cond_88

    iget-wide v4, v12, Lcom/facebook/ads/redexgen/X/IB;->A06:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    sget-object v1, Lcom/facebook/ads/redexgen/X/IB;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_7d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6c
    iget-wide v2, v12, Lcom/facebook/ads/redexgen/X/IB;->A05:J

    add-long/2addr v2, v4

    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A04:J

    sub-long/2addr v2, v0

    move-wide v14, v4

    goto :goto_3b

    :cond_74
    invoke-direct {v12, v6, v7, v8, v9}, Lcom/facebook/ads/redexgen/X/IB;->A06(JJ)Z

    move-result v0

    if-eqz v0, :cond_3b

    iput-boolean v13, v12, Lcom/facebook/ads/redexgen/X/IB;->A08:Z

    goto :goto_3b

    :cond_7d
    sget-object v6, Lcom/facebook/ads/redexgen/X/IB;->A0D:[Ljava/lang/String;

    const-string v1, "GMIC0"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    cmp-long v0, v4, v8

    if-nez v0, :cond_89

    :cond_88
    return-wide v2

    :cond_89
    iget-wide v4, v7, Lcom/facebook/ads/redexgen/X/IA;->A04:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_90

    return-wide v2

    :cond_90
    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A06:J

    move-wide v10, v0

    move-wide v6, v2

    move-wide v8, v4

    invoke-static/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/IB;->A00(JJJ)J

    move-result-wide v2

    iget-wide v0, v12, Lcom/facebook/ads/redexgen/X/IB;->A07:J

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public final A08()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A0A:Lcom/facebook/ads/redexgen/X/I9;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I9;->A01()V

    :cond_b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A0B:Lcom/facebook/ads/redexgen/X/IA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IA;->A07()V

    :cond_10
    return-void
.end method

.method public final A09()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A08:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A09:Landroid/view/WindowManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A0B:Lcom/facebook/ads/redexgen/X/IA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IA;->A06()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IB;->A0A:Lcom/facebook/ads/redexgen/X/I9;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/I9;->A00()V

    :cond_13
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IB;->A03()V

    :cond_16
    return-void
.end method
