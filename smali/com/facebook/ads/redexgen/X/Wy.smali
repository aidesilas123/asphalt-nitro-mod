###### Class com.facebook.ads.redexgen.X.C1460Wy (com.facebook.ads.redexgen.X.Wy)
.class public final Lcom/facebook/ads/redexgen/X/Wy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ba;


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/Bd;

.field public static final A0A:I

.field public static final A0B:[B

.field public static final A0C:[B

.field public static final A0D:[I

.field public static final A0E:[I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Bm;

.field public A04:Z

.field public A05:Z

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ovn62aUcwqSIvWTqoELg4J4D8wHkUDmq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ycr5XQrqBi4bqXq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "xp8qJzBZ1bRZYruPJEcRAHgYPTR5RYjX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "i3q4o3QoTWkNmhcyfYOgrV6edePVNuRX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "3foLzBlJQPuSe9je9cnopJfCpNuQ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jIofLs5qujimwrYxWQlB52zkZNTbvGhY"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Oin2hfMzoDcJa9P29jyigMxfd8hffyV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DiUz7SyfwAQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wy;->A05()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wz;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wy;->A09:Lcom/facebook/ads/redexgen/X/Bd;

    const/16 v1, 0x10

    new-array v0, v1, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wy;->A0D:[I

    new-array v3, v1, [I

    fill-array-data v3, :array_92

    sput-object v3, Lcom/facebook/ads/redexgen/X/Wy;->A0E:[I

    const/16 v2, 0xc

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0i(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wy;->A0B:[B

    const/16 v2, 0x12

    const/16 v1, 0x9

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0i(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wy;->A0C:[B

    const/16 v0, 0x8

    aget v0, v3, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Wy;->A0A:I

    return-void

    :array_6e
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_92
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A06:[B

    return-void
.end method

.method private A00(I)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wy;->A07(I)Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35

    const/16 v1, 0xc

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:Z

    if-eqz v0, :cond_69

    const/16 v4, 0x69

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_5a

    :goto_2c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_32
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/facebook/ads/redexgen/X/Wy;->A0E:[I

    aget v0, v0, p1

    :goto_3a
    return v0

    :cond_3b
    sget-object v3, Lcom/facebook/ads/redexgen/X/Wy;->A0D:[I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_4b

    goto :goto_2c

    :cond_4b
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const-string v1, "W5GqdpRCUv4UTAd2FZcqfYNQbOUH"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "vSYrWd8JkI4l23w"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget v0, v3, p1

    goto :goto_3a

    :cond_5a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const-string v1, "wEjTIiVmShi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_72

    :cond_69
    const/16 v2, 0x67

    const/4 v1, 0x2

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v0

    :goto_72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Bb;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wy;->A06:[B

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A06:[B

    aget-byte v4, v0, v1

    and-int/lit16 v0, v4, 0x83

    if-gtz v0, :cond_1b

    shr-int/lit8 v0, v4, 0x3

    and-int/lit8 v0, v0, 0xf

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A00(I)I

    move-result v0

    return v0

    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x41

    const/16 v1, 0x26

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Bb;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    const/4 v3, -0x1

    if-nez v0, :cond_f

    :try_start_5
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wy;->A01(Lcom/facebook/ads/redexgen/X/Bb;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:I

    goto :goto_d
    :try_end_c
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_c} :catch_c

    :catch_c
    return v3

    :goto_d
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    :cond_f
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wy;->A03:Lcom/facebook/ads/redexgen/X/Bm;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    const/4 v0, 0x1

    invoke-interface {v2, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->AEq(Lcom/facebook/ads/redexgen/X/Bb;IZ)I

    move-result v1

    if-ne v1, v3, :cond_1b

    return v3

    :cond_1b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    const/4 v4, 0x0

    if-lez v0, :cond_24

    return v4

    :cond_24
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Wy;->A03:Lcom/facebook/ads/redexgen/X/Bm;

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Wy;->A02:J

    const/4 v8, 0x1

    iget v9, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wy;->A02:J

    const-wide/16 v0, 0x4e20

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wy;->A02:J

    return v4
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_36

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x68

    int-to-byte v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_30

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const-string v1, "o17bMTHd2bo"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_30
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .registers 16

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A04:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A04:Z

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:Z

    if-eqz v3, :cond_31

    const/16 v2, 0x75

    const/16 v1, 0xc

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v4

    :goto_15
    if-eqz v3, :cond_2e

    const/16 v9, 0x3e80

    :goto_19
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wy;->A03:Lcom/facebook/ads/redexgen/X/Bm;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    sget v7, Lcom/facebook/ads/redexgen/X/Wy;->A0A:I

    const/4 v8, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v3 .. v14}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A06(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    :cond_2d
    return-void

    :cond_2e
    const/16 v9, 0x1f40

    goto :goto_19

    :cond_31
    const/16 v2, 0x6b

    const/16 v1, 0xa

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_15
.end method

.method public static A05()V
    .registers 4

    const/16 v0, 0x81

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const-string v1, "iWdi7SFZoODeZbEJMl3L6ntPbKeDMNvO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0wFRuzGYIju4XbKNAoPYNxHAh615x32s"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    fill-array-data v3, :array_2a

    sput-object v3, Lcom/facebook/ads/redexgen/X/Wy;->A07:[B

    return-void

    nop

    :array_2a
    .array-data 1
        -0x59t
        -0x13t
        -0x7t
        -0x18t
        -0xct
        -0x14t
        -0x59t
        -0x5t
        0x0t
        -0x9t
        -0x14t
        -0x59t
        -0x41t
        -0x43t
        -0x23t
        -0x17t
        -0x12t
        -0x5at
        -0x11t
        -0x13t
        0xdt
        0x19t
        0x1et
        -0x7t
        0x23t
        0xet
        -0x2at
        0xet
        0x3at
        0x40t
        0x37t
        0x2ft
        -0x15t
        0x39t
        0x3at
        0x3ft
        -0x15t
        0x31t
        0x34t
        0x39t
        0x2ft
        -0x15t
        0xct
        0x18t
        0x1dt
        -0x15t
        0x33t
        0x30t
        0x2ct
        0x2ft
        0x30t
        0x3dt
        -0x7t
        0x25t
        0x48t
        0x48t
        0x41t
        0x43t
        0x3dt
        0x48t
        -0x4t
        0x1dt
        0x29t
        0x2et
        -0x4t
        0x24t
        0x49t
        0x51t
        0x3ct
        0x47t
        0x44t
        0x3ft
        -0x5t
        0x4bt
        0x3ct
        0x3ft
        0x3ft
        0x44t
        0x49t
        0x42t
        -0x5t
        0x3dt
        0x44t
        0x4ft
        0x4et
        -0x5t
        0x41t
        0x4at
        0x4dt
        -0x5t
        0x41t
        0x4dt
        0x3ct
        0x48t
        0x40t
        -0x5t
        0x43t
        0x40t
        0x3ct
        0x3ft
        0x40t
        0x4dt
        -0x5t
        -0x35t
        -0x41t
        -0x22t
        -0x37t
        0x43t
        0x57t
        0x46t
        0x4bt
        0x51t
        0x11t
        0x15t
        0x49t
        0x52t
        0x52t
        -0x3t
        0x11t
        0x0t
        0x5t
        0xbt
        -0x35t
        -0x3t
        0x9t
        0xet
        -0x37t
        0x13t
        -0x2t
    .end array-data
.end method

.method private A06(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:Z

    if-nez v0, :cond_e

    const/16 v0, 0xc

    if-lt p1, v0, :cond_c

    const/16 v0, 0xe

    if-le p1, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private A07(I)Z
    .registers 3

    if-ltz p1, :cond_14

    const/16 v0, 0xf

    if-gt p1, v0, :cond_14

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wy;->A08(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wy;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private A08(I)Z
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:Z

    if-eqz v0, :cond_28

    const/16 v0, 0xa

    if-lt p1, v0, :cond_26

    const/16 v3, 0xd

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wy;->A08:[Ljava/lang/String;

    const-string v1, "qMGeUOCLNxoOBJxwE1u31s5i7NTepy4l"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-le p1, v3, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A0B:[B

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Wy;->A0A(Lcom/facebook/ads/redexgen/X/Bb;[B)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:Z

    array-length v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    return v2

    :cond_11
    sget-object v1, Lcom/facebook/ads/redexgen/X/Wy;->A0C:[B

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Wy;->A0A(Lcom/facebook/ads/redexgen/X/Bb;[B)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Wy;->A05:Z

    array-length v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    return v2

    :cond_20
    return v3
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Bb;[B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    array-length v0, p2

    new-array v2, v0, [B

    const/4 v1, 0x0

    array-length v0, p2

    invoke-interface {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-static {v2, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A8e(Lcom/facebook/ads/redexgen/X/Bc;)V
    .registers 5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/X0;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AEx(Lcom/facebook/ads/redexgen/X/Bj;)V

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A03:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    return-void
.end method

.method public final AE9(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wy;->A09(Lcom/facebook/ads/redexgen/X/Bb;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_10
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wy;->A04()V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wy;->A02(Lcom/facebook/ads/redexgen/X/Bb;)I

    move-result v0

    return v0

    :cond_18
    const/16 v2, 0x1b

    const/16 v1, 0x1a

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wy;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final AEw(JJ)V
    .registers 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A02:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wy;->A00:I

    return-void
.end method

.method public final AFg(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wy;->A09(Lcom/facebook/ads/redexgen/X/Bb;)Z

    move-result v0

    return v0
.end method
