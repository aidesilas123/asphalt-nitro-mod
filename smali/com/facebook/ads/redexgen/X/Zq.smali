###### Class com.facebook.ads.redexgen.X.C1529Zq (com.facebook.ads.redexgen.X.Zq)
.class public final Lcom/facebook/ads/redexgen/X/Zq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/20;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/InterstitialAd;

.field public A02:Lcom/facebook/ads/redexgen/X/1C;

.field public A03:Lcom/facebook/ads/redexgen/X/Ew;

.field public A04:Lcom/facebook/ads/redexgen/X/Yv;

.field public A05:Lcom/facebook/ads/redexgen/X/LN;

.field public A06:Z

.field public A07:Z

.field public final A08:Lcom/facebook/ads/redexgen/X/YA;

.field public final A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

.field public final A0A:Lcom/facebook/ads/redexgen/X/23;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Q9RghtL5kPMxXUG2hlpmHrVaJwYYGwGq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TIO3FaU0Mikock0w3rckrPhiuYRMfGhJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "k6SAISDvmHdOF1rkjeEeymm6HvDlJVR0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eDRhFd25R2oFsFg27vb0d5UADzs1KoZv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MaVPWgska1IH7XOKtPwNB8GdxIWUIxDt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dS1g8OO0fBonmOwqVSSlXi39LbvMIXQb"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JdFW5Fpsu4G"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QGzwgj8zvaLwI8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zq;->A0B()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Zq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zq;->A0D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/23;Lcom/facebook/ads/redexgen/X/2A;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:J

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/23;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zh;

    invoke-direct {v0, p3, p2, p0}, Lcom/facebook/ads/redexgen/X/Zh;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2A;Lcom/facebook/ads/redexgen/X/Zq;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A05:Lcom/facebook/ads/redexgen/X/LN;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Zq;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Zq;)Lcom/facebook/ads/InterstitialAd;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Zq;Lcom/facebook/ads/InterstitialAd;)Lcom/facebook/ads/InterstitialAd;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A01:Lcom/facebook/ads/InterstitialAd;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Zq;)Lcom/facebook/ads/InterstitialAdExtendedListener;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Zq;)Lcom/facebook/ads/redexgen/X/1C;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A02:Lcom/facebook/ads/redexgen/X/1C;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Zq;Lcom/facebook/ads/redexgen/X/1C;)Lcom/facebook/ads/redexgen/X/1C;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A02:Lcom/facebook/ads/redexgen/X/1C;

    return-object p1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Zq;)Lcom/facebook/ads/redexgen/X/Ew;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Zq;Lcom/facebook/ads/redexgen/X/Ew;)Lcom/facebook/ads/redexgen/X/Ew;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    return-object p1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Zq;)Lcom/facebook/ads/redexgen/X/23;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Zq;)Lcom/facebook/ads/redexgen/X/LN;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A05:Lcom/facebook/ads/redexgen/X/LN;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zq;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .registers 1

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zq;->A0B:[B

    return-void

    :array_a
    .array-data 1
        -0x3bt
        -0xet
        -0x5ct
        -0x1bt
        -0x18t
        -0x5ct
        -0x10t
        -0xdt
        -0x1bt
        -0x18t
        -0x5ct
        -0x13t
        -0x9t
        -0x5ct
        -0x1bt
        -0x10t
        -0xat
        -0x17t
        -0x1bt
        -0x18t
        -0x3t
        -0x5ct
        -0x13t
        -0xet
        -0x5ct
        -0xct
        -0xat
        -0xdt
        -0x15t
        -0xat
        -0x17t
        -0x9t
        -0x9t
        -0x4et
        -0x5ct
        -0x23t
        -0xdt
        -0x7t
        -0x5ct
        -0x9t
        -0x14t
        -0xdt
        -0x7t
        -0x10t
        -0x18t
        -0x5ct
        -0x5t
        -0x1bt
        -0x13t
        -0x8t
        -0x5ct
        -0x16t
        -0xdt
        -0xat
        -0x5ct
        -0x1bt
        -0x18t
        -0x30t
        -0xdt
        -0x1bt
        -0x18t
        -0x17t
        -0x18t
        -0x54t
        -0x53t
        -0x5ct
        -0x8t
        -0xdt
        -0x5ct
        -0x1at
        -0x17t
        -0x5ct
        -0x19t
        -0x1bt
        -0x10t
        -0x10t
        -0x17t
        -0x18t
        -0x4t
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x2dt
        0x1ft
        0x22t
        0x14t
        0x17t
        -0x2dt
        0x16t
        0x14t
        0x1ft
        0x1ft
        0x18t
        0x17t
        -0x2dt
        0x2at
        0x1bt
        0x1ct
        0x1ft
        0x18t
        -0x2dt
        0x26t
        0x1bt
        0x22t
        0x2at
        0x1ct
        0x21t
        0x1at
        -0x2dt
        0x1ct
        0x21t
        0x27t
        0x18t
        0x25t
        0x26t
        0x27t
        0x1ct
        0x27t
        0x1ct
        0x14t
        0x1ft
        -0x1ft
        0xdt
        0x1ct
        0x15t
    .end array-data
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Zq;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A07:Z

    return p1
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Zq;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A06:Z

    return p1
.end method


# virtual methods
.method public final A0E()J
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0D()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0F()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    if-eqz v1, :cond_1a

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zr;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zr;-><init>(Lcom/facebook/ads/redexgen/X/Zq;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0O(Lcom/facebook/ads/redexgen/X/0p;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0T(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A06:Z

    :cond_1a
    return-void
.end method

.method public final A0G()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A04:Lcom/facebook/ads/redexgen/X/Yv;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yv;->A02()V

    :cond_7
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdCompanionView;->getAdCompanionViewApi()Lcom/facebook/ads/internal/api/AdCompanionViewApi;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Yv;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Zq;->A04:Lcom/facebook/ads/redexgen/X/Yv;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    if-eqz v2, :cond_19

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A02:Lcom/facebook/ads/redexgen/X/1C;

    if-eqz v1, :cond_19

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/aS;

    if-eqz v0, :cond_19

    check-cast v1, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Yv;->A03(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;)V

    :cond_19
    return-void
.end method

.method public final A0I(Ljava/util/EnumSet;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:J

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A07:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    if-eqz v0, :cond_1c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Zq;->A0D:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A07:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A06:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0L:I

    const/16 v2, 0x4e

    const/16 v1, 0x34

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0A(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_CALLED_WHILE_SHOWING_AD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2i(JILjava/lang/String;)V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Zq;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v3

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v2

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/AdError;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_80
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    if-eqz v1, :cond_94

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zv;-><init>(Lcom/facebook/ads/redexgen/X/Zq;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0O(Lcom/facebook/ads/redexgen/X/0p;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0J()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    :cond_94
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v5, Lcom/facebook/ads/redexgen/X/1r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A09()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/JN;->A00(Landroid/util/DisplayMetrics;)Lcom/facebook/ads/redexgen/X/JL;

    move-result-object v7

    sget-object v8, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v9, Lcom/facebook/ads/redexgen/X/JJ;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v10, 0x1

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/1r;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JJ;ILjava/util/EnumSet;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A24(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ed

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A02(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ed

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zq;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_de

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_de
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zq;->A0C:[Ljava/lang/String;

    const-string v1, "6YCA3PHZSlLj0jmN2b2hvaW99ZyRMwjh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "7PoIPIeUN8KAt8vfreK3c69iBAU82q7R"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/23;->A0H(Ljava/lang/String;)V

    :cond_ed
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1r;->A06(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1r;->A07(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A03()Lcom/facebook/ads/RewardData;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1r;->A04(Lcom/facebook/ads/RewardData;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ew;

    invoke-direct {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ew;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1r;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zs;-><init>(Lcom/facebook/ads/redexgen/X/Zq;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0O(Lcom/facebook/ads/redexgen/X/0p;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/a9;->A0R(Ljava/lang/String;)V

    return-void
.end method

.method public final A0J()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0U()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final A0K()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A07:Z

    return v0
.end method

.method public final A0L()Z
    .registers 9

    sget-object v6, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A07:Z

    const/4 v5, 0x0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v3

    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2i(JILjava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return v5

    :cond_2a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A03:Lcom/facebook/ads/redexgen/X/Ew;

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v7

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0S:I

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->INTERSTITIAL_CONTROLLER_IS_NULL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x82

    const/4 v1, 0x3

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zq;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v6}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2i(JILjava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zq;->A09:Lcom/facebook/ads/InterstitialAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A0A:Lcom/facebook/ads/redexgen/X/23;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/23;->A01()Lcom/facebook/ads/InterstitialAd;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Lcom/facebook/ads/InterstitialAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return v5

    :cond_70
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0I()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zq;->A06:Z

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/Zq;->A07:Z

    return v0
.end method
