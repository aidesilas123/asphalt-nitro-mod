###### Class com.facebook.ads.redexgen.X.C1526Zn (com.facebook.ads.redexgen.X.Zn)
.class public final Lcom/facebook/ads/redexgen/X/Zn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/20;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:J

.field public A03:Lcom/facebook/ads/RewardedVideoAd;

.field public A04:Lcom/facebook/ads/redexgen/X/1C;

.field public A05:Lcom/facebook/ads/redexgen/X/EV;

.field public A06:Lcom/facebook/ads/redexgen/X/Yv;

.field public A07:Lcom/facebook/ads/redexgen/X/LN;

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

.field public final A0B:Lcom/facebook/ads/redexgen/X/27;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gd6Snq8TqC5qGLc"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5Vo8FrFWo5Fl4YG5W1yHT6ZfMsOXSACT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HYpFHiAeuVvng5d4eXQK0awgijL0SEef"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zgL9OdntC9Jt"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "c4pha1QVXZPHNWU"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "oPtBq8V8zceab2K03f0YSkruz1vfGvQp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tGZii7gSURWSZ1CI0FSKqsks"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YmWpveYB3lCv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zn;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zn;->A0B()V

    const-class v0, Lcom/facebook/ads/redexgen/X/Zn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zn;->A0E:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/27;Lcom/facebook/ads/redexgen/X/2A;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:J

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/27;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zg;

    invoke-direct {v0, p3, p2, p0, p1}, Lcom/facebook/ads/redexgen/X/Zg;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/2A;Lcom/facebook/ads/redexgen/X/Zn;Lcom/facebook/ads/redexgen/X/27;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LN;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A07:Lcom/facebook/ads/redexgen/X/LN;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Zn;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Zn;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A02:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/RewardedVideoAd;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A03:Lcom/facebook/ads/RewardedVideoAd;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Zn;Lcom/facebook/ads/RewardedVideoAd;)Lcom/facebook/ads/RewardedVideoAd;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A03:Lcom/facebook/ads/RewardedVideoAd;

    return-object p1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/1C;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A04:Lcom/facebook/ads/redexgen/X/1C;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Zn;Lcom/facebook/ads/redexgen/X/1C;)Lcom/facebook/ads/redexgen/X/1C;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A04:Lcom/facebook/ads/redexgen/X/1C;

    return-object p1
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/EV;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/27;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Zn;)Lcom/facebook/ads/redexgen/X/LN;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A07:Lcom/facebook/ads/redexgen/X/LN;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zn;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

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
    .registers 3

    const/16 v0, 0x70

    new-array v0, v0, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zn;->A0C:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zn;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zn;->A0D:[Ljava/lang/String;

    const-string v1, "OGOVhUIoezz1oHK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "xl2MkcRK0CWEWUY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    nop

    :array_2a
    .array-data 1
        0x78t
        0x57t
        0x19t
        0x58t
        0x5dt
        0x19t
        0x55t
        0x56t
        0x58t
        0x5dt
        0x19t
        0x50t
        0x4at
        0x19t
        0x58t
        0x55t
        0x4bt
        0x5ct
        0x58t
        0x5dt
        0x40t
        0x19t
        0x50t
        0x57t
        0x19t
        0x49t
        0x4bt
        0x56t
        0x5et
        0x4bt
        0x5ct
        0x4at
        0x4at
        0x17t
        0x19t
        0x60t
        0x56t
        0x4ct
        0x19t
        0x4at
        0x51t
        0x56t
        0x4ct
        0x55t
        0x5dt
        0x19t
        0x4et
        0x58t
        0x50t
        0x4dt
        0x19t
        0x5ft
        0x56t
        0x4bt
        0x19t
        0x58t
        0x5dt
        0x75t
        0x56t
        0x58t
        0x5dt
        0x5ct
        0x5dt
        0x11t
        0x10t
        0x19t
        0x4dt
        0x56t
        0x19t
        0x5bt
        0x5ct
        0x19t
        0x5at
        0x58t
        0x55t
        0x55t
        0x5ct
        0x5dt
        0x2ft
        0x18t
        0x18t
        0x5t
        0x18t
        0x4at
        0x6t
        0x5t
        0xbt
        0xet
        0x3t
        0x4t
        0xdt
        0x4at
        0x18t
        0xft
        0x1dt
        0xbt
        0x18t
        0xet
        0xft
        0xet
        0x4at
        0x1ct
        0x3t
        0xet
        0xft
        0x5t
        0x4at
        0xbt
        0xet
        0x5ct
        0x4dt
        0x54t
    .end array-data
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Zn;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zn;->A0E(Z)V

    return-void
.end method

.method private A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .registers 15

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    if-eqz v0, :cond_16

    sget-object v3, Lcom/facebook/ads/redexgen/X/Zn;->A0E:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0x4e

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A0E(Z)V

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    new-instance v5, Lcom/facebook/ads/redexgen/X/1r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/27;->A0C:Ljava/lang/String;

    sget-object v7, Lcom/facebook/ads/redexgen/X/JL;->A06:Lcom/facebook/ads/redexgen/X/JL;

    sget-object v8, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    sget-object v9, Lcom/facebook/ads/redexgen/X/JJ;->A07:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v10, 0x1

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/1r;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;Lcom/facebook/ads/internal/protocol/AdPlacementType;Lcom/facebook/ads/redexgen/X/JJ;I)V

    invoke-virtual {v5, p3}, Lcom/facebook/ads/redexgen/X/1r;->A08(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A24(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A06:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A02(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_68

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zn;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zn;->A0D:[Ljava/lang/String;

    const-string v1, "NRWBzlFLQPOGySbiiYXSLDN6"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iput-object v4, v3, Lcom/facebook/ads/redexgen/X/27;->A06:Ljava/lang/String;

    :cond_68
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A06:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1r;->A06(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A07:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/1r;->A07(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/EV;

    invoke-direct {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/EV;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1r;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zp;-><init>(Lcom/facebook/ads/redexgen/X/Zn;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0O(Lcom/facebook/ads/redexgen/X/0p;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/a9;->A0S(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    return-void
.end method

.method private A0E(Z)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    if-eqz v1, :cond_14

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zo;-><init>(Lcom/facebook/ads/redexgen/X/Zn;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/a9;->A0O(Lcom/facebook/ads/redexgen/X/0p;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/a9;->A0T(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    :cond_14
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Zn;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    return p1
.end method


# virtual methods
.method public final A0G()J
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0D()J

    move-result-wide v0

    return-wide v0

    :cond_9
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final A0H()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A0E(Z)V

    return-void
.end method

.method public final A0I()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A06:Lcom/facebook/ads/redexgen/X/Yv;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yv;->A02()V

    :cond_7
    return-void
.end method

.method public final A0J(Lcom/facebook/ads/RewardData;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/27;->A03:Lcom/facebook/ads/RewardData;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/EV;->A0V(Lcom/facebook/ads/RewardData;)V

    :cond_f
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/internal/api/AdCompanionView;)V
    .registers 5

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdCompanionView;->getAdCompanionViewApi()Lcom/facebook/ads/internal/api/AdCompanionViewApi;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Yv;

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Zn;->A06:Lcom/facebook/ads/redexgen/X/Yv;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A09:Lcom/facebook/ads/redexgen/X/YA;

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A04:Lcom/facebook/ads/redexgen/X/1C;

    if-eqz v0, :cond_15

    check-cast v0, Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yv;->A03(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;)V

    :cond_15
    return-void
.end method

.method public final A0L(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:J

    :try_start_6
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Zn;->A0D(Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;Z)V

    goto :goto_5f
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_a

    :catch_a
    move-exception v6

    sget-object v3, Lcom/facebook/ads/redexgen/X/Zn;->A0E:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v1, 0x1f

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0b:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v6}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x6d

    const/4 v1, 0x3

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Zn;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/27;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v2

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v5}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0S;->A2i(JILjava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    :goto_5f
    return-void
.end method

.method public final A0M()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

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

.method public final A0N()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    return v0
.end method

.method public final A0O(IJ)Z
    .registers 8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    const/4 v2, 0x0

    if-nez v0, :cond_13

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0A:Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A0B:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/Ad;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/AdError;->SHOW_CALLED_BEFORE_LOAD_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v3, v1, v0}, Lcom/facebook/ads/S2SRewardedVideoAdExtendedListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    return v2

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    if-eqz v0, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A02:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/1r;->A02(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/1r;->A03(J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A05:Lcom/facebook/ads/redexgen/X/EV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a9;->A0I()V

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    const/4 v0, 0x1

    return v0

    :cond_34
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Zn;->A08:Z

    return v2
.end method
