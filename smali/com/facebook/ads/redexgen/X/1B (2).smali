###### Class com.facebook.ads.redexgen.X.C1B (com.facebook.ads.redexgen.X.1B)
.class public final Lcom/facebook/ads/redexgen/X/1B;
.super Lcom/facebook/ads/redexgen/X/3E;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HY;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/XJ;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:J

.field public A06:Landroid/media/MediaFormat;

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/AQ;

.field public final A0D:Lcom/facebook/ads/redexgen/X/AW;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2QlMa6qwn7PgdSN4l85jvs7nWajl1MES"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7IDLWOxlh1sFSIB31zRzFYQ7PMnWp72Y"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sIqK"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "BoflpFUQeBwwM6pd17Qd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rQg4TubfQMsXj8fsx3Kc9qFAo71Wl6cI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0mBM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Xb0wUTlMwSXhcbJOEuklFsawZUYnk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6gVYRFlBQUgMJoz7eJC1LBuasB8Ybt5d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1B;->A06()V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/AC;[Lcom/facebook/ads/redexgen/X/AJ;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/D4;",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/AR;",
            "Lcom/facebook/ads/redexgen/X/AC;",
            "[",
            "Lcom/facebook/ads/redexgen/X/AJ;",
            ")V"
        }
    .end annotation

    new-instance v7, Lcom/facebook/ads/redexgen/X/XL;

    move-object/from16 v0, p8

    invoke-direct {v7, p7, v0}, Lcom/facebook/ads/redexgen/X/XL;-><init>(Lcom/facebook/ads/redexgen/X/AC;[Lcom/facebook/ads/redexgen/X/AJ;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/1B;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/AW;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/AR;Lcom/facebook/ads/redexgen/X/AW;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/D4;",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/AR;",
            "Lcom/facebook/ads/redexgen/X/AW;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/3E;-><init>(ILcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0B:Landroid/content/Context;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    new-instance v0, Lcom/facebook/ads/redexgen/X/AQ;

    invoke-direct {v0, p5, p6}, Lcom/facebook/ads/redexgen/X/AQ;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/AR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/XJ;-><init>(Lcom/facebook/ads/redexgen/X/1B;Lcom/facebook/ads/redexgen/X/Ak;)V

    invoke-interface {p7, v0}, Lcom/facebook/ads/redexgen/X/AW;->AFJ(Lcom/facebook/ads/redexgen/X/AU;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 8

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_3c

    const/16 v2, 0xf

    const/16 v1, 0x16

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v4, 0x1

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-ne v1, v0, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_38

    const/16 v2, 0x25

    const/16 v1, 0x19

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v4, 0x0

    :cond_38
    if-eqz v4, :cond_3c

    const/4 v0, -0x1

    return v0

    :cond_3c
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A09:I

    return v0
.end method

.method private final A01(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/1B;->A00(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    return v0
.end method

.method private final A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;
    .registers 8

    new-instance v3, Landroid/media/MediaFormat;

    invoke-direct {v3}, Landroid/media/MediaFormat;-><init>()V

    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/DA;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    const/16 v2, 0x63

    const/16 v1, 0xe

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p3}, Lcom/facebook/ads/redexgen/X/DA;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_55

    const/16 v2, 0x75

    const/16 v1, 0x8

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_55
    return-object v3
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1B;)Lcom/facebook/ads/redexgen/X/AQ;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1B;->A8q()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A6Y(Z)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A08:Z

    if-eqz v0, :cond_1a

    :goto_14
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A08:Z

    :cond_19
    return-void

    :cond_1a
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_14
.end method

.method public static A06()V
    .registers 1

    const/16 v0, 0x97

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/1B;->A0E:[B

    return-void

    :array_a
    .array-data 1
        0x25t
        0x27t
        0x32t
        0x44t
        0x39t
        0x2ft
        0x29t
        0x44t
        0xbt
        0xbt
        0x9t
        0x44t
        0xet
        0xft
        0x9t
        0x6t
        0x4t
        0x11t
        0x67t
        0x2et
        0x26t
        0x26t
        0x2et
        0x25t
        0x2ct
        0x67t
        0x3bt
        0x28t
        0x3et
        0x67t
        0x2dt
        0x2ct
        0x2at
        0x26t
        0x2dt
        0x2ct
        0x3bt
        0x6ft
        0x60t
        0x6at
        0x7ct
        0x61t
        0x67t
        0x6at
        0x20t
        0x7dt
        0x61t
        0x68t
        0x7at
        0x79t
        0x6ft
        0x7ct
        0x6bt
        0x20t
        0x62t
        0x6bt
        0x6ft
        0x60t
        0x6ct
        0x6ft
        0x6dt
        0x65t
        0x6ct
        0x78t
        0x69t
        0x64t
        0x62t
        0x22t
        0x7ft
        0x6ct
        0x7at
        0x3dt
        0x36t
        0x3ft
        0x30t
        0x30t
        0x3bt
        0x32t
        0x73t
        0x3dt
        0x31t
        0x2bt
        0x30t
        0x2at
        0x3bt
        0x36t
        0x21t
        0x3ct
        0x3ft
        0x27t
        0x36t
        0xdt
        0x0t
        0x17t
        0xat
        0x14t
        0x9t
        0x11t
        0x0t
        0x52t
        0x5et
        0x47t
        0x12t
        0x56t
        0x51t
        0x4ft
        0x4at
        0x4bt
        0x12t
        0x4ct
        0x56t
        0x45t
        0x5at
        0x3t
        0x7t
        0x3t
        0xbt
        0x2ft
        0x2dt
        0x36t
        0x30t
        0x2dt
        0x36t
        0x2bt
        0x26t
        0x7dt
        0x6ft
        0x63t
        0x7et
        0x62t
        0x6bt
        0x23t
        0x7ct
        0x6ft
        0x7at
        0x6bt
        0x1dt
        0xft
        0x3t
        0x1dt
        0x1bt
        0x0t
        0x9t
        0x48t
        0x57t
        0x40t
        0x5dt
        0x54t
        0x5et
        0x46t
        0x57t
    .end array-data
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/1B;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A08:Z

    return p1
.end method

.method public static A08(Ljava/lang/String;)Z
    .registers 4

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x18

    if-ge v1, v0, :cond_73

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    const/16 v2, 0x88

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x8f

    const/16 v1, 0x8

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x54

    const/4 v1, 0x7

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    sget-object p0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x5b

    const/16 v1, 0x8

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_75

    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const-string v1, "opGrTNmI0QvRBzLgsKXfoISibxDPDheH"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz p0, :cond_73

    :cond_71
    const/4 v0, 0x1

    :goto_72
    return v0

    :cond_73
    const/4 v0, 0x0

    goto :goto_72

    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A09(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ha;->A00(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/AW;->A8p(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final A12()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->AEO()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_42

    :try_start_5
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A12()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_34

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Au;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A04(Lcom/facebook/ads/redexgen/X/Au;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const-string v1, "oD9vMZ2y7vvHJ8P8Vn8jWHJMMQFHYWzQ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :catchall_34
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Au;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A04(Lcom/facebook/ads/redexgen/X/Au;)V

    throw v2

    :catchall_42
    move-exception v2

    :try_start_43
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A12()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_53

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Au;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A04(Lcom/facebook/ads/redexgen/X/Au;)V

    throw v2

    :catchall_53
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Au;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A04(Lcom/facebook/ads/redexgen/X/Au;)V

    throw v2
.end method

.method public final A13()V
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A13()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->ADs()V

    return-void
.end method

.method public final A14()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1B;->A05()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->pause()V

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A14()V

    return-void
.end method

.method public final A15(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A15(JZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->reset()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A08:Z

    return-void
.end method

.method public final A16(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3E;->A16(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A05(Lcom/facebook/ads/redexgen/X/Au;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A11()Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v0

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9t;->A00:I

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/AW;->A5R(I)V

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->A54()V

    goto :goto_17
.end method

.method public final A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public final A1B(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/D4;",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    move-object/from16 v5, p3

    iget-object v9, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/Ha;->A09(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_c

    return v3

    :cond_c
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v8, 0x15

    if-lt v0, v8, :cond_45

    const/16 v13, 0x20

    :goto_14
    iget-object v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Dl;->A0x(Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z

    move-result v12

    const/4 v11, 0x4

    if-eqz v12, :cond_4d

    invoke-direct {p0, v9}, Lcom/facebook/ads/redexgen/X/1B;->A09(Ljava/lang/String;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_47

    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const-string v1, "6sleKLNQpbvHoKVWyK7EUP7qImvC8hiJ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v4, :cond_4d

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/D4;->A7U()Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    if-eqz v0, :cond_4d

    or-int/lit8 v0, v13, 0x8

    or-int/2addr v0, v11

    return v0

    :cond_45
    const/4 v13, 0x0

    goto :goto_14

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4d
    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_68

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->A8p(I)Z

    move-result v0

    if-eqz v0, :cond_71

    :cond_68
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Lcom/facebook/ads/redexgen/X/AW;->A8p(I)Z

    move-result v0

    if-nez v0, :cond_72

    :cond_71
    return v10

    :cond_72
    const/4 v6, 0x0

    iget-object v2, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    if-eqz v2, :cond_86

    const/4 v1, 0x0

    :goto_78
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    if-ge v1, v0, :cond_86

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A03:Z

    or-int/2addr v6, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_78

    :cond_86
    invoke-interface {p1, v9, v6}, Lcom/facebook/ads/redexgen/X/D4;->A6f(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v4

    if-nez v4, :cond_96

    if-eqz v6, :cond_95

    invoke-interface {p1, v9, v3}, Lcom/facebook/ads/redexgen/X/D4;->A6f(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    if-eqz v0, :cond_95

    const/4 v10, 0x2

    :cond_95
    return v10

    :cond_96
    if-nez v12, :cond_99

    return v7

    :cond_99
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-lt v0, v8, :cond_d1

    iget v6, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_da

    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const-string v1, "YbsTws3ypMFNM7ai4KKw1OCVUgQ1r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Svs1q3oiD8cOh72XtRNv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v1, -0x1

    if-eq v6, v1, :cond_c5

    :goto_bd
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A0G(I)Z

    move-result v0

    if-eqz v0, :cond_d2

    :cond_c5
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    if-eq v0, v1, :cond_d1

    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A0F(I)Z

    move-result v0

    if-eqz v0, :cond_d2

    :cond_d1
    const/4 v3, 0x1

    :cond_d2
    if-eqz v3, :cond_d8

    :goto_d4
    or-int/lit8 v0, v13, 0x8

    or-int/2addr v0, v11

    return v0

    :cond_d8
    const/4 v11, 0x3

    goto :goto_d4

    :cond_da
    const/4 v1, -0x1

    if-eq v6, v1, :cond_c5

    goto :goto_bd
.end method

.method public final A1E(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Cy;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1B;->A09(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/D4;->A7U()Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A1E(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    return-object v0
.end method

.method public final A1H()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->ADt()V

    return-void
    :try_end_6
    .catch Lcom/facebook/ads/redexgen/X/AV; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0
.end method

.method public final A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1B;->A06:Landroid/media/MediaFormat;

    if-eqz v3, :cond_3c

    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    sget-object v2, Lcom/facebook/ads/redexgen/X/1B;->A0F:[Ljava/lang/String;

    const-string v1, "rkxX"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "9ODr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ha;->A00(Ljava/lang/String;)I

    move-result v3

    iget-object p2, p0, Lcom/facebook/ads/redexgen/X/1B;->A06:Landroid/media/MediaFormat;

    goto :goto_3e

    :cond_3c
    iget v3, p0, Lcom/facebook/ads/redexgen/X/1B;->A04:I

    :goto_3e
    const/16 v2, 0x47

    const/16 v1, 0xd

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A09:Z

    if-eqz v0, :cond_71

    const/4 v1, 0x6

    if-ne v4, v1, :cond_71

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:I

    if-ge v0, v1, :cond_71

    new-array v7, v0, [I

    const/4 v1, 0x0

    :goto_68
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:I

    if-ge v1, v0, :cond_72

    aput v1, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_71
    const/4 v7, 0x0

    :cond_72
    :try_start_72
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    const/4 v6, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:I

    iget v9, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:I

    invoke-interface/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/AW;->A4M(IIII[III)V

    return-void
    :try_end_7d
    .catch Lcom/facebook/ads/redexgen/X/AS; {:try_start_72 .. :try_end_7d} :catch_7d

    :catch_7d
    move-exception v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0
.end method

.method public final A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3E;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/AQ;->A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0A:I

    :goto_1c
    iput v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A04:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A00:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A02:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A03:I

    return-void

    :cond_2b
    const/4 v0, 0x2

    goto :goto_1c
.end method

.method public final A1M(Lcom/facebook/ads/redexgen/X/XE;)V
    .registers 7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A07:Z

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ap;->A03()Z

    move-result v0

    if-nez v0, :cond_21

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v1, 0x7a120

    cmp-long v0, v3, v1

    if-lez v0, :cond_1e

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:J

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A07:Z

    :cond_21
    return-void
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/Cy;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Landroid/media/MediaCrypto;)V
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A19()[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/1B;->A01(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1B;->A08(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A09:Z

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0A:Z

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A01:Ljava/lang/String;

    if-nez v0, :cond_47

    const/16 v2, 0x3e

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v1

    :goto_24
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A01:I

    invoke-direct {p0, p3, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A02(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;I)Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v3, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0A:Z

    if-eqz v0, :cond_44

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1B;->A06:Landroid/media/MediaFormat;

    const/16 v2, 0x71

    const/4 v1, 0x4

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1B;->A04(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return-void

    :cond_44
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A06:Landroid/media/MediaFormat;

    goto :goto_43

    :cond_47
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/Cy;->A01:Ljava/lang/String;

    goto :goto_24
.end method

.method public final A1O(Ljava/lang/String;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0C:Lcom/facebook/ads/redexgen/X/AQ;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/AQ;->A06(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0A:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_e

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return v2

    :cond_e
    if-eqz p11, :cond_20

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A08:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A08:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->A8K()V

    return v2

    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0, p6, p9, p10}, Lcom/facebook/ads/redexgen/X/AW;->A8H(Ljava/nio/ByteBuffer;J)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p5, p7, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A06:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A06:I

    return v2

    :cond_33
    return v1
    :try_end_34
    .catch Lcom/facebook/ads/redexgen/X/AT; {:try_start_20 .. :try_end_34} :catch_34
    .catch Lcom/facebook/ads/redexgen/X/AV; {:try_start_20 .. :try_end_34} :catch_36

    :catch_34
    move-exception v1

    goto :goto_37

    :catch_36
    move-exception v1

    :goto_37
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A0y()I

    move-result v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9K;->A01(Ljava/lang/Exception;I)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    throw v0
.end method

.method public final A7F()Lcom/facebook/ads/redexgen/X/HY;
    .registers 1

    return-object p0
.end method

.method public final A7Z()Lcom/facebook/ads/redexgen/X/9f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->A7Z()Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    return-object v0
.end method

.method public final A7c()J
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A7t()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1B;->A05()V

    :cond_a
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A05:J

    return-wide v0
.end method

.method public final A8L(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    packed-switch p1, :pswitch_data_1c

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dl;->A8L(ILjava/lang/Object;)V

    :goto_6
    return-void

    :pswitch_7
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/AW;->setVolume(F)V

    goto :goto_6

    :pswitch_13
    check-cast p2, Lcom/facebook/ads/redexgen/X/AB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/AW;->AF8(Lcom/facebook/ads/redexgen/X/AB;)V

    goto :goto_6

    nop

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_7
        :pswitch_13
    .end packed-switch
.end method

.method public final A8q()Z
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A8q()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->A8q()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final A90()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/AW;->A8P()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A90()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final AFP(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1B;->A0D:Lcom/facebook/ads/redexgen/X/AW;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/AW;->AFP(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/9f;

    move-result-object v0

    return-object v0
.end method
