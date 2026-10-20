###### Class com.facebook.ads.redexgen.X.C08618s (com.facebook.ads.redexgen.X.8s)
.class public final Lcom/facebook/ads/redexgen/X/8s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/8r;
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/8r;

.field public A01:Z

.field public final A02:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8s;->A02()V

    const/16 v0, 0x3e8

    sput v0, Lcom/facebook/ads/redexgen/X/8s;->A03:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8r;->A03(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/8r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_11

    :cond_19
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x19

    const/16 v1, 0x20

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8s;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/8r;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8r;->A04(Ljava/io/File;)Lcom/facebook/ads/redexgen/X/8r;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    return-object v0

    :cond_13
    const/16 v2, 0x56

    const/16 v1, 0x1c

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8s;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/8s;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x72

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/8s;->A04:[B

    return-void

    :array_a
    .array-data 1
        0x1bt
        0x36t
        0x3et
        0x41t
        0x3at
        0x39t
        -0xbt
        0x49t
        0x44t
        -0xbt
        0x39t
        0x3at
        0x41t
        0x3at
        0x49t
        0x3at
        -0xbt
        0x3bt
        0x3et
        0x41t
        0x3at
        -0xbt
        -0x4t
        -0x6t
        0x48t
        -0x3ft
        -0x1ct
        -0x19t
        -0x20t
        -0x65t
        -0x5et
        -0x60t
        -0x12t
        -0x5et
        -0x65t
        -0x1ct
        -0x12t
        -0x65t
        -0x17t
        -0x16t
        -0x11t
        -0x65t
        -0x24t
        -0x65t
        -0x13t
        -0x20t
        -0x24t
        -0x21t
        -0x24t
        -0x23t
        -0x19t
        -0x20t
        -0x65t
        -0x1ft
        -0x1ct
        -0x19t
        -0x20t
        0x18t
        0x3dt
        0x45t
        0x30t
        0x3bt
        0x38t
        0x33t
        -0x11t
        0x35t
        0x34t
        0x43t
        0x32t
        0x37t
        -0x11t
        0x42t
        0x43t
        0x30t
        0x41t
        0x43t
        -0x11t
        0x38t
        0x3dt
        0x33t
        0x34t
        0x47t
        0x9t
        -0x11t
        -0xct
        0x33t
        -0x42t
        -0x2ft
        -0x31t
        -0x25t
        -0x22t
        -0x30t
        -0x74t
        -0x2et
        -0x2bt
        -0x28t
        -0x2ft
        -0x74t
        -0x33t
        -0x28t
        -0x22t
        -0x2ft
        -0x33t
        -0x30t
        -0x1bt
        -0x74t
        -0x30t
        -0x2bt
        -0x21t
        -0x24t
        -0x25t
        -0x21t
        -0x2ft
        -0x30t
    .end array-data
.end method

.method private A03(IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8r;->A03:[J

    aput-wide p2, v0, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/8r;->A02(I)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    return-void
.end method

.method private A04(J[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A05()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->A00()Lcom/facebook/ads/redexgen/X/8r;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/8r;->A00:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06(I[BI[II)Lcom/facebook/ads/redexgen/X/8j;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/8s;->A00()Lcom/facebook/ads/redexgen/X/8r;

    move-result-object v9

    const/4 v4, 0x1

    move/from16 v5, p1

    if-ltz v5, :cond_7b

    move v8, v5

    const/4 v7, 0x0

    const-wide/16 v1, -0x1

    const/16 v16, 0x0

    :goto_10
    iget v0, v9, Lcom/facebook/ads/redexgen/X/8r;->A00:I

    move-object/from16 v11, p2

    move/from16 v6, p3

    if-lt v8, v0, :cond_19

    goto :goto_56

    :cond_19
    sub-int v3, v8, v5

    add-int v3, v3, p5

    move-object/from16 v10, p4

    array-length v0, v10

    if-lt v3, v0, :cond_23

    goto :goto_51

    :cond_23
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/8r;->A03:[J

    aget-wide v14, v0, v8

    iget v0, v9, Lcom/facebook/ads/redexgen/X/8r;->A00:I

    sub-int/2addr v0, v4

    if-ne v8, v0, :cond_2f

    iget-wide v3, v9, Lcom/facebook/ads/redexgen/X/8r;->A01:J

    goto :goto_35

    :cond_2f
    iget-object v3, v9, Lcom/facebook/ads/redexgen/X/8r;->A03:[J

    add-int/lit8 v0, v8, 0x1

    aget-wide v3, v3, v0

    :goto_35
    sub-long/2addr v3, v14

    const-wide/16 v12, -0x1

    cmp-long v0, v1, v12

    if-nez v0, :cond_3d

    move-wide v1, v14

    :cond_3d
    long-to-int v12, v3

    add-int/2addr v12, v7

    add-int/2addr v12, v6

    array-length v0, v11

    if-le v12, v0, :cond_44

    goto :goto_54

    :cond_44
    long-to-int v0, v3

    add-int/2addr v7, v0

    sub-int v6, v8, v5

    add-int v6, v6, p5

    long-to-int v0, v3

    aput v0, v10, v6

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    goto :goto_10

    :goto_51
    const/16 v16, 0x1

    goto :goto_56

    :goto_54
    const/16 v16, 0x1

    :goto_56
    if-le v8, v5, :cond_6b

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v11, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    sget-object v1, Lcom/facebook/ads/redexgen/X/8i;->A02:Lcom/facebook/ads/redexgen/X/8i;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8j;

    invoke-direct {v0, v1, v5, v8, v7}, Lcom/facebook/ads/redexgen/X/8j;-><init>(Lcom/facebook/ads/redexgen/X/8i;III)V
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_9b

    monitor-exit p0

    return-object v0

    :cond_6b
    if-eqz v16, :cond_6e

    goto :goto_71

    :cond_6e
    :try_start_6e
    sget-object v2, Lcom/facebook/ads/redexgen/X/8i;->A04:Lcom/facebook/ads/redexgen/X/8i;

    goto :goto_73

    :goto_71
    sget-object v2, Lcom/facebook/ads/redexgen/X/8i;->A03:Lcom/facebook/ads/redexgen/X/8i;

    :goto_73
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/8j;

    invoke-direct {v0, v2, v5, v5, v1}, Lcom/facebook/ads/redexgen/X/8j;-><init>(Lcom/facebook/ads/redexgen/X/8i;III)V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_9b

    monitor-exit p0

    return-object v0

    :cond_7b
    :try_start_7b
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/16 v2, 0x39

    const/16 v1, 0x1d

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8s;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9b
    .catchall {:try_start_7b .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A07()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    if-nez v0, :cond_a
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_14

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/8r;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A08()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Z

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8s;->A07()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_12
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_43

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8s;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/16 v2, 0x56

    const/16 v1, 0x1c

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8s;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_12 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09([B)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->A00()Lcom/facebook/ads/redexgen/X/8r;

    move-result-object v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8s;->A05()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/8s;->A03:I

    if-ne v1, v0, :cond_10
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_34

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_10
    :try_start_10
    iget v2, v5, Lcom/facebook/ads/redexgen/X/8r;->A00:I

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/8r;->A01:J

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/8s;->A03(IJ)V

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/8r;->A01:J

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/8s;->A04(J[B)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/8r;->A02:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    iget v0, v5, Lcom/facebook/ads/redexgen/X/8r;->A00:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v5, Lcom/facebook/ads/redexgen/X/8r;->A00:I

    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/8r;->A01:J

    array-length v0, p1

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/8r;->A01:J
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_34

    monitor-exit p0

    return v4

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method
