###### Class com.facebook.ads.redexgen.X.XB (com.facebook.ads.redexgen.X.XB)
.class public final Lcom/facebook/ads/redexgen/X/XB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Az;,
        Lcom/facebook/ads/redexgen/X/B0;,
        Lcom/facebook/ads/redexgen/X/B1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/ads/redexgen/X/BL;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/BJ<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/os/HandlerThread;

.field public A03:Lcom/facebook/ads/redexgen/X/Az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/XB<",
            "TT;>.PostRequestHandler;"
        }
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/BH;

.field public A05:Lcom/facebook/ads/redexgen/X/BL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public A06:Ljava/lang/Object;

.field public A07:Ljava/lang/Object;

.field public A08:[B

.field public A09:[B

.field public final A0A:Lcom/facebook/ads/redexgen/X/B0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/XB<",
            "TT;>.PostResponseHandler;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/BV;

.field public final A0C:Ljava/util/UUID;

.field public final A0D:I

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/B1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/B1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A0G:Lcom/facebook/ads/redexgen/X/B7;

.field public final A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

.field public final A0I:Lcom/facebook/ads/redexgen/X/BR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/BR<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uQUfDqzhtv2TEfF5ErUwTUru4TZb3y9r"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Tl0hhVUFPPlUVXrrXAgT1phq5Y1870jG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HsvEKssxmSZ10qjOSm6w6MmWGLuRxxq7"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RRlXFcbfMO2PvOuBXchDACh7boJ4mCH9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7xiHj3yO3zbCG5YWXi9fkMnCOt343i"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "LdJPi6TRHARXjQG7Ef48CiURnDQxO4BC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "abcggVaWrh85SzZKtbF9Hz68lxkZOGh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I6iBxKBCu2jt9neSbJF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/XB;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lcom/facebook/ads/redexgen/X/BR;Lcom/facebook/ads/redexgen/X/B1;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;I[BLjava/util/HashMap;Lcom/facebook/ads/redexgen/X/BV;Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/B7;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lcom/facebook/ads/redexgen/X/BR<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/B1<",
            "TT;>;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;",
            "I[B",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/BV;",
            "Landroid/os/Looper;",
            "Lcom/facebook/ads/redexgen/X/B7;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/XB;->A0C:Ljava/util/UUID;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/XB;->A0F:Lcom/facebook/ads/redexgen/X/B1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/XB;->A0E:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    if-nez p6, :cond_45

    :goto_f
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/XB;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/XB;->A0J:Ljava/util/HashMap;

    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/XB;->A0B:Lcom/facebook/ads/redexgen/X/BV;

    iput p11, p0, Lcom/facebook/ads/redexgen/X/XB;->A0D:I

    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/XB;->A0G:Lcom/facebook/ads/redexgen/X/B7;

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/B0;

    invoke-direct {v0, p0, p9}, Lcom/facebook/ads/redexgen/X/B0;-><init>(Lcom/facebook/ads/redexgen/X/XB;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0A:Lcom/facebook/ads/redexgen/X/B0;

    const/16 v2, 0x11

    const/16 v1, 0x11

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Az;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/Az;-><init>(Lcom/facebook/ads/redexgen/X/XB;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/Az;

    return-void

    :cond_45
    const/4 p4, 0x0

    goto :goto_f
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/XB;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0D:I

    return p0
.end method

.method private A01()J
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/9E;->A05:Ljava/util/UUID;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0C:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_10
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/BZ;->A01(Lcom/facebook/ads/redexgen/X/BJ;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    sget-object v4, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x5

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_47

    sget-object v4, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "kwmCjQVSEE2MSEtk5P0J6XyfUzOepuN"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "iy4DUBbCBKkWs1QdyI1n8wUj9ER6POyN"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03()V
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_10

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/BU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BU;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/Exception;)V

    :cond_10
    return-void
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x8c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/XB;->A0K:[B

    return-void

    :array_a
    .array-data 1
        0x29t
        0x8t
        0xbt
        0xct
        0x18t
        0x1t
        0x19t
        0x29t
        0x1ft
        0x0t
        0x3et
        0x8t
        0x1et
        0x1et
        0x4t
        0x2t
        0x3t
        0x70t
        0x46t
        0x59t
        0x66t
        0x51t
        0x45t
        0x41t
        0x51t
        0x47t
        0x40t
        0x7ct
        0x55t
        0x5at
        0x50t
        0x58t
        0x51t
        0x46t
        0x2ct
        0x1bt
        0x1bt
        0x6t
        0x1bt
        0x49t
        0x1dt
        0x1bt
        0x10t
        0x0t
        0x7t
        0xet
        0x49t
        0x1dt
        0x6t
        0x49t
        0x1bt
        0xct
        0x1at
        0x1dt
        0x6t
        0x1bt
        0xct
        0x49t
        0x3et
        0x0t
        0xdt
        0xct
        0x1ft
        0x0t
        0x7t
        0xct
        0x49t
        0x2t
        0xct
        0x10t
        0x1at
        0x47t
        0x4bt
        0x62t
        0x62t
        0x68t
        0x6dt
        0x6at
        0x61t
        0x24t
        0x68t
        0x6dt
        0x67t
        0x61t
        0x6at
        0x77t
        0x61t
        0x24t
        0x6ct
        0x65t
        0x77t
        0x24t
        0x61t
        0x7ct
        0x74t
        0x6dt
        0x76t
        0x61t
        0x60t
        0x24t
        0x6bt
        0x76t
        0x24t
        0x73t
        0x6dt
        0x68t
        0x68t
        0x24t
        0x61t
        0x7ct
        0x74t
        0x6dt
        0x76t
        0x61t
        0x24t
        0x77t
        0x6bt
        0x6bt
        0x6at
        0x2at
        0x24t
        0x56t
        0x61t
        0x69t
        0x65t
        0x6dt
        0x6at
        0x6dt
        0x6at
        0x63t
        0x24t
        0x77t
        0x61t
        0x67t
        0x6bt
        0x6at
        0x60t
        0x77t
        0x3et
        0x24t
    .end array-data
.end method

.method private A05(IZ)V
    .registers 13

    const/4 v0, 0x3

    move v8, p1

    if-ne v8, v0, :cond_18

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    if-eqz v0, :cond_1b

    iget-object v6, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    iget-object v7, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A02:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    iget-object v3, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A01:Ljava/lang/String;

    goto :goto_39

    :cond_18
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    goto :goto_6

    :cond_1b
    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_72

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "HiRVbgHs01WUsvKQWWbzdKShVEXCb4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "rsxdpsdulfr8NHFIQbC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    :goto_39
    :try_start_39
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/XB;->A0J:Ljava/util/HashMap;

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/BR;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Lcom/facebook/ads/redexgen/X/X8;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/XB;->A06:Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/Az;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, p2}, Lcom/facebook/ads/redexgen/X/Az;->A02(ILjava/lang/Object;Z)V

    goto :goto_61
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_62

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/XB;->A09(Ljava/lang/Exception;)V

    :goto_61
    return-void

    :cond_62
    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "yinyKCIX8OHy4tbAh09wDu9TYn4QapKY"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "YH01MZvN3itOxbtS4y7wvPRo5LdL3aoc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/XB;->A09(Ljava/lang/Exception;)V

    goto :goto_61

    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/XB;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XB;->A0B(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/XB;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/XB;->A0A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private A08(Ljava/lang/Exception;)V
    .registers 4

    new-instance v0, Lcom/facebook/ads/redexgen/X/BH;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/BH;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A04:Lcom/facebook/ads/redexgen/X/BH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0G:Lcom/facebook/ads/redexgen/X/B7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/B7;->A04(Ljava/lang/Exception;)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_14

    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    :cond_14
    return-void
.end method

.method private A09(Ljava/lang/Exception;)V
    .registers 3

    instance-of v0, p1, Landroid/media/NotProvisionedException;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0F:Lcom/facebook/ads/redexgen/X/B1;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/B1;->AE4(Lcom/facebook/ads/redexgen/X/XB;)V

    :goto_9
    return-void

    :cond_a
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method private A0A(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A06:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A0D()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A06:Ljava/lang/Object;

    instance-of v3, p2, Ljava/lang/Exception;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_97

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "9JnvKkphvxmLuhmX98tw0qe05owUNTRp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ft4SvIUq5otQylphxMLwb1JjgU4mSaGo"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_36

    check-cast p2, Ljava/lang/Exception;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/XB;->A09(Ljava/lang/Exception;)V

    return-void

    :cond_36
    :try_start_36
    check-cast p2, [B

    iget v4, p0, Lcom/facebook/ads/redexgen/X/XB;->A0E:I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3a} :catch_92

    const/4 v3, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_59

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "bP0m20ptfIMRFe5YkcUw3xf0jvGpYKsJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "kVN8Is4OR8esdUtwldSwhPSVBOCGQMXU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_6f

    goto :goto_62

    :cond_59
    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "aqi8N0zhP27f6NVz8lVl4dA11qd5ZCKR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_6f

    :goto_62
    :try_start_62
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/BR;->provideKeyResponse([B[B)[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0G:Lcom/facebook/ads/redexgen/X/B7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/B7;->A01()V

    goto :goto_96

    :cond_6f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/BR;->provideKeyResponse([B[B)[B

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A0E:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_82

    if-nez v1, :cond_89

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    if-eqz v0, :cond_89

    :cond_82
    if-eqz v2, :cond_89

    array-length v0, v2

    if-eqz v0, :cond_89

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    :cond_89
    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0G:Lcom/facebook/ads/redexgen/X/B7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/B7;->A00()V

    goto :goto_96
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_92} :catch_92

    :catch_92
    move-exception v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A09(Ljava/lang/Exception;)V

    :goto_96
    return-void

    :cond_97
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A07:Ljava/lang/Object;

    if-ne p1, v0, :cond_28

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A0D()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_29

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "7g5olCk59crpyXcTpohub2paBJQfOBC8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2f

    :cond_28
    return-void

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A07:Ljava/lang/Object;

    instance-of v0, p2, Ljava/lang/Exception;

    if-eqz v0, :cond_6b

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XB;->A0F:Lcom/facebook/ads/redexgen/X/B1;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5e

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "avEJwbhwMRn38jmRQBD1FC49w8wW0nz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "XMN7l9eNtKuFM3Fev0Kexs32ktc0Cq6l"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {v3, p2}, Lcom/facebook/ads/redexgen/X/B1;->ACc(Ljava/lang/Exception;)V

    return-void

    :cond_5e
    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "QkoncgzFytlqAAhEJ0Qlx7x4X03bYeDS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast p2, Ljava/lang/Exception;

    invoke-interface {v3, p2}, Lcom/facebook/ads/redexgen/X/B1;->ACc(Ljava/lang/Exception;)V

    return-void

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    check-cast p2, [B

    invoke-interface {v0, p2}, Lcom/facebook/ads/redexgen/X/BR;->provideProvisionResponse([B)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_78

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0F:Lcom/facebook/ads/redexgen/X/B1;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/B1;->ACb()V

    return-void

    :catch_78
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0F:Lcom/facebook/ads/redexgen/X/B1;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/B1;->ACc(Ljava/lang/Exception;)V

    return-void
.end method

.method private A0C(Z)V
    .registers 9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0E:I

    const/4 v6, 0x2

    packed-switch v0, :pswitch_data_a2

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    if-nez v0, :cond_10

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/XB;->A05(IZ)V

    goto :goto_6

    :cond_10
    iget v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A0E()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A01()J

    move-result-wide v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0E:I

    if-nez v0, :cond_46

    const-wide/16 v1, 0x3c

    cmp-long v0, v3, v1

    if-gtz v0, :cond_46

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x48

    const/16 v1, 0x44

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/XB;->A05(IZ)V

    goto :goto_6

    :cond_46
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gtz v0, :cond_55

    new-instance v0, Lcom/facebook/ads/redexgen/X/BU;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/BU;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/Exception;)V

    goto :goto_6

    :cond_55
    iput v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0G:Lcom/facebook/ads/redexgen/X/B7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/B7;->A02()V

    goto :goto_6

    :pswitch_5d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    if-nez v0, :cond_65

    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/XB;->A05(IZ)V

    goto :goto_6

    :cond_65
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A0E()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v6, p1}, Lcom/facebook/ads/redexgen/X/XB;->A05(IZ)V

    goto :goto_6

    :pswitch_6f
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A0E()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_90

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_90
    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "tKB853gw0QxIoSbJdPpwjheJWY3E7MZE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "oZWJSNTcJkrmOm7J4lVwlLSneItLKulz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/XB;->A05(IZ)V

    goto/16 :goto_6

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_5d
        :pswitch_6f
    .end packed-switch
.end method

.method private A0D()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    const/4 v0, 0x4

    if-ne v1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private A0E()Z
    .registers 6

    :try_start_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A08:[B

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BR;->restoreKeys([B[B)V

    const/4 v0, 0x1

    return v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    move-exception v4

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x22

    const/16 v1, 0x26

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XB;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return v0
.end method

.method private A0F(Z)Z
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A0D()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    return v2

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BR;->openSession()[B

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BR;->createMediaCrypto([B)Lcom/facebook/ads/redexgen/X/BL;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A05:Lcom/facebook/ads/redexgen/X/BL;

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    return v2
    :try_end_1c
    .catch Landroid/media/NotProvisionedException; {:try_start_8 .. :try_end_1c} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1c} :catch_4a

    :catch_1c
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_43

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "hcP5iGmUCTCBubOCm4y34akhSFLITz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "kkACDG4miePlwwqXadR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz p1, :cond_46

    :goto_3d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0F:Lcom/facebook/ads/redexgen/X/B1;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/B1;->AE4(Lcom/facebook/ads/redexgen/X/XB;)V

    goto :goto_69

    :cond_43
    if-eqz p1, :cond_46

    goto :goto_3d

    :cond_46
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/Exception;)V

    goto :goto_69

    :catch_4a
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_6b

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "3MIbmxUKwpHsMOPA0O36aL8zgPm2spB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "QZdNO4E2RTzuGVfMqJkx34O55UWQfpPY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/Exception;)V

    :goto_69
    const/4 v0, 0x0

    return v0

    :cond_6b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0G()V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:I

    if-ne v0, v1, :cond_16

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    if-ne v0, v1, :cond_d

    return-void

    :cond_d
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/XB;->A0F(Z)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/XB;->A0C(Z)V

    :cond_16
    return-void
.end method

.method public final A0H()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0F(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0C(Z)V

    :cond_b
    return-void
.end method

.method public final A0I()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/BR;->getProvisionRequest()Lcom/facebook/ads/redexgen/X/X7;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/XB;->A07:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/Az;

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/Az;->A02(ILjava/lang/Object;Z)V

    return-void
.end method

.method public final A0J(I)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A0D()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    packed-switch p1, :pswitch_data_1e

    :goto_a
    return-void

    :pswitch_b
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0F:Lcom/facebook/ads/redexgen/X/B1;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/B1;->AE4(Lcom/facebook/ads/redexgen/X/XB;)V

    goto :goto_a

    :pswitch_14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XB;->A0C(Z)V

    goto :goto_a

    :pswitch_19
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/XB;->A03()V

    goto :goto_a

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public final A0K(Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XB;->A08(Ljava/lang/Exception;)V

    return-void
.end method

.method public final A0L()Z
    .registers 8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:I

    const/4 v6, 0x1

    sub-int/2addr v1, v6

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A00:I

    const/4 v0, 0x0

    if-nez v1, :cond_57

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0A:Lcom/facebook/ads/redexgen/X/B0;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/B0;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/Az;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Az;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A03:Lcom/facebook/ads/redexgen/X/Az;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A02:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A02:Landroid/os/HandlerThread;

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A05:Lcom/facebook/ads/redexgen/X/BL;

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A04:Lcom/facebook/ads/redexgen/X/BH;

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A06:Ljava/lang/Object;

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A07:Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    if-eqz v4, :cond_50

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_51

    sget-object v2, Lcom/facebook/ads/redexgen/X/XB;->A0L:[Ljava/lang/String;

    const-string v1, "deu86LfLTKjM93IlTO01zYKbww8cuOj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ojEkjq8yeaej09Uo0dOQA5yJgKQBg80C"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-interface {v3, v4}, Lcom/facebook/ads/redexgen/X/BR;->closeSession([B)V

    iput-object v5, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    :cond_50
    return v6

    :cond_51
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_57
    return v0
.end method

.method public final A0M([B)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A04:[B

    :goto_6
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final A0N([B)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public final A6q()Lcom/facebook/ads/redexgen/X/BH;
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A04:Lcom/facebook/ads/redexgen/X/BH;

    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final A7G()Lcom/facebook/ads/redexgen/X/BL;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A05:Lcom/facebook/ads/redexgen/X/BL;

    return-object v0
.end method

.method public final A7t()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A01:I

    return v0
.end method

.method public final AE5()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XB;->A09:[B

    if-nez v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XB;->A0I:Lcom/facebook/ads/redexgen/X/BR;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/BR;->queryKeyStatus([B)Ljava/util/Map;

    move-result-object v0

    goto :goto_5
.end method
