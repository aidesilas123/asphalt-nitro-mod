###### Class com.facebook.ads.redexgen.X.QN (com.facebook.ads.redexgen.X.QN)
.class public final Lcom/facebook/ads/redexgen/X/QN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/QL;,
        Lcom/facebook/ads/redexgen/X/QM;
    }
.end annotation


# static fields
.field public static A09:Lcom/facebook/ads/redexgen/X/QN;

.field public static A0A:[B

.field public static final A0B:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Dy;

.field public A01:Lcom/facebook/ads/redexgen/X/H2;

.field public A02:Ljava/io/File;

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/QL;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/Y9;

.field public final A07:Lcom/facebook/ads/redexgen/X/Dr;

.field public final A08:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QN;->A0C()V

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;

    const/4 v1, 0x0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Vp;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QN;->A0B:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y9;Lcom/facebook/ads/redexgen/X/Dy;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A04:Landroid/os/Handler;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A05:Landroid/util/SparseArray;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QK;-><init>(Lcom/facebook/ads/redexgen/X/QN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A08:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/ads/redexgen/X/JM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/JM;-><init>(Lcom/facebook/ads/redexgen/X/QN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A07:Lcom/facebook/ads/redexgen/X/Dr;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QN;->A06:Lcom/facebook/ads/redexgen/X/Y9;

    if-eqz p2, :cond_2c

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QN;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0Q(Lcom/facebook/ads/redexgen/X/Dr;)V

    :cond_2c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A01()Lcom/facebook/ads/redexgen/X/Dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0P()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/QN;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/QN;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method private declared-synchronized A01()Lcom/facebook/ads/redexgen/X/Dy;
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    if-nez v0, :cond_36

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A03()Lcom/facebook/ads/redexgen/X/H2;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A02()Lcom/facebook/ads/redexgen/X/2P;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/E3;-><init>(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/Gb;)V

    new-instance v4, Lcom/facebook/ads/redexgen/X/Dy;

    const/16 v6, 0xa

    const/4 v7, 0x5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A06()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x34

    const/16 v1, 0xc

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v9, Lcom/facebook/ads/redexgen/X/QN;->A0B:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Dy;-><init>(Lcom/facebook/ads/redexgen/X/E3;IILjava/io/File;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/QN;->A00:Lcom/facebook/ads/redexgen/X/Dy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A07:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0Q(Lcom/facebook/ads/redexgen/X/Dr;)V

    :cond_36
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A00:Lcom/facebook/ads/redexgen/X/Dy;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object v0

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/2P;
    .registers 4

    const/16 v2, 0x4e

    const/4 v1, 0x3

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2P;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/2P;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Gy;)V

    return-object v0
.end method

.method private final declared-synchronized A03()Lcom/facebook/ads/redexgen/X/H2;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A01:Lcom/facebook/ads/redexgen/X/H2;

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A06()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x40

    const/16 v1, 0xe

    const/16 v0, 0x10

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A06:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0P(Landroid/content/Context;)J

    move-result-wide v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Am;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Am;-><init>(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uw;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Uw;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Uy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A01:Lcom/facebook/ads/redexgen/X/H2;

    :cond_2a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A01:Lcom/facebook/ads/redexgen/X/H2;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/VG;Lcom/facebook/ads/redexgen/X/H2;)Lcom/facebook/ads/redexgen/X/Uz;
    .registers 9

    new-instance v0, Lcom/facebook/ads/redexgen/X/Uz;

    new-instance v3, Lcom/facebook/ads/redexgen/X/VC;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/VC;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Uz;-><init>(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/GZ;ILcom/facebook/ads/redexgen/X/H4;)V

    return-object v0
.end method

.method public static declared-synchronized A05(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/QN;
    .registers 4

    const-class v2, Lcom/facebook/ads/redexgen/X/QN;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/QN;->A09:Lcom/facebook/ads/redexgen/X/QN;

    if-nez v0, :cond_f

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/QN;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/QN;-><init>(Lcom/facebook/ads/redexgen/X/Y9;Lcom/facebook/ads/redexgen/X/Dy;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/QN;->A09:Lcom/facebook/ads/redexgen/X/QN;

    :cond_f
    sget-object v0, Lcom/facebook/ads/redexgen/X/QN;->A09:Lcom/facebook/ads/redexgen/X/QN;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13

    monitor-exit v2

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private A06()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A02:Ljava/io/File;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A06:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Y9;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A02:Ljava/io/File;

    :cond_c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A02:Ljava/io/File;

    return-object v0
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/QN;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x67

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Y9;Landroid/net/Uri;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IP;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    return-object v6
    :try_end_23
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0u:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x51

    const/4 v1, 0x5

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return-object v6
.end method

.method private A09()V
    .registers 13

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A01()Lcom/facebook/ads/redexgen/X/Dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dy;->A0S()[Lcom/facebook/ads/redexgen/X/Dx;

    move-result-object v8

    array-length v7, v8

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v7, :cond_bd

    aget-object v5, v8, v6

    iget v4, v5, Lcom/facebook/ads/redexgen/X/Dx;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/QL;

    if-eqz v9, :cond_60

    iget v10, v5, Lcom/facebook/ads/redexgen/X/Dx;->A01:I

    const/4 v0, 0x2

    if-eq v10, v0, :cond_27

    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/Dx;->A03:J

    iget-wide v0, v9, Lcom/facebook/ads/redexgen/X/QL;->A00:J

    cmp-long v11, v2, v0

    if-lez v11, :cond_90

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf

    const/16 v1, 0x13

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Dx;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/QL;->A01:Lcom/facebook/ads/redexgen/X/QM;

    iget-boolean v0, v9, Lcom/facebook/ads/redexgen/X/QL;->A02:Z

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->AB7(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    :cond_60
    :goto_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x8

    const/4 v1, 0x7

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Dx;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    :cond_90
    const/4 v0, 0x4

    if-eq v10, v0, :cond_96

    const/4 v0, 0x3

    if-ne v10, v0, :cond_60

    :cond_96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    const/16 v1, 0xe

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v9, Lcom/facebook/ads/redexgen/X/QL;->A01:Lcom/facebook/ads/redexgen/X/QM;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Dx;->A05:Ljava/lang/Throwable;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->ABJ(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A05:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_60

    :cond_bd
    return-void
.end method

.method private A0A()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A03:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A03:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QN;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A08:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method private A0B()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QN;->A04:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A08:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/QN;->A03:Z

    return-void
.end method

.method public static A0C()V
    .registers 1

    const/16 v0, 0x56

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/QN;->A0A:[B

    return-void

    :array_a
    .array-data 1
        -0x67t
        -0x45t
        -0xet
        -0x13t
        -0x22t
        -0x14t
        -0x4dt
        -0x67t
        -0x45t
        -0x3t
        0x14t
        0xft
        0x0t
        0xet
        -0x45t
        -0x18t
        0x13t
        0x1bt
        0x12t
        0x10t
        0x13t
        0x5t
        0x8t
        0x9t
        0x8t
        -0x2et
        -0x3ct
        -0x9t
        0x18t
        0x5t
        0x18t
        0x9t
        -0x22t
        -0x3ct
        0x1bt
        0x48t
        0x48t
        0x45t
        0x48t
        0x4t
        -0xat
        0x29t
        0x4at
        0x37t
        0x4at
        0x3bt
        0x10t
        -0xat
        -0x2ct
        -0x1ft
        -0xdt
        -0x15t
        0x21t
        0x24t
        0x2et
        0x37t
        -0x13t
        0x21t
        0x23t
        0x34t
        0x29t
        0x2ft
        0x2et
        0x33t
        -0x28t
        -0x25t
        -0x1bt
        -0x12t
        -0x5ct
        -0x25t
        -0x1at
        -0x12t
        -0x1bt
        -0x1dt
        -0x1at
        -0x28t
        -0x25t
        -0x16t
        0x21t
        0x24t
        0x33t
        -0x28t
        -0x2at
        -0x28t
        -0x23t
        -0x26t
    .end array-data
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/QN;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A09()V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/QN;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A0B()V

    return-void
.end method


# virtual methods
.method public final A0F(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Uz;
    .registers 5

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A02()Lcom/facebook/ads/redexgen/X/2P;

    move-result-object v2

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/VG;

    invoke-direct {v1, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/VG;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gy;Lcom/facebook/ads/redexgen/X/Gb;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A03()Lcom/facebook/ads/redexgen/X/H2;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A04(Lcom/facebook/ads/redexgen/X/VG;Lcom/facebook/ads/redexgen/X/H2;)Lcom/facebook/ads/redexgen/X/Uz;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/QM;J)V
    .registers 13

    move-object v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QN;->A06:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/QN;->A08(Lcom/facebook/ads/redexgen/X/Y9;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/QN;->A0H(Ljava/lang/String;)Z

    move-result v6

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Vp;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/facebook/ads/redexgen/X/Vp;-><init>(Landroid/net/Uri;Z[BLjava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A01()Lcom/facebook/ads/redexgen/X/Dy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Dy;->A0O(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)I

    move-result v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/QN;->A05:Landroid/util/SparseArray;

    new-instance v2, Lcom/facebook/ads/redexgen/X/QL;

    const/4 v7, 0x0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/QL;-><init>(Lcom/facebook/ads/redexgen/X/QM;JZLcom/facebook/ads/redexgen/X/QK;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A0A()V

    return-void
.end method

.method public final A0H(Ljava/lang/String;)Z
    .registers 9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QN;->A03()Lcom/facebook/ads/redexgen/X/H2;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/H2;->A6B(Ljava/lang/String;JJ)J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
