###### Class com.facebook.ads.redexgen.X.C0959De (com.facebook.ads.redexgen.X.De)
.class public final Lcom/facebook/ads/redexgen/X/De;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/HK;

.field public final A01:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/De;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/io/File;

    new-instance v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/HK;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Lcom/facebook/ads/redexgen/X/HK;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/De;->A02:[B

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

.method public static A01()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/De;->A02:[B

    return-void

    :array_a
    .array-data 1
        -0x65t
        -0x4ct
        -0x47t
        -0x45t
        -0x4at
        -0x4at
        -0x4bt
        -0x48t
        -0x46t
        -0x55t
        -0x56t
        0x66t
        -0x59t
        -0x57t
        -0x46t
        -0x51t
        -0x4bt
        -0x4ct
        0x66t
        -0x54t
        -0x51t
        -0x4et
        -0x55t
        0x66t
        -0x44t
        -0x55t
        -0x48t
        -0x47t
        -0x51t
        -0x4bt
        -0x4ct
        -0x80t
        0x66t
    .end array-data
.end method


# virtual methods
.method public final varargs A02([Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HK;->A03()Lcom/facebook/ads/redexgen/X/HJ;

    move-result-object v1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v3, v0

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v0, p1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v1, p1

    :goto_16
    if-ge v2, v1, :cond_20

    aget-object v0, p1, v2

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;Ljava/io/OutputStream;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/HK;->A06(Ljava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2a

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    return-void

    :catchall_2a
    move-exception v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    throw v0
.end method

.method public final varargs A03([Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;)[Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A01:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    return-object v0

    :cond_c
    const/4 v4, 0x0

    :try_start_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/De;->A00:Lcom/facebook/ads/redexgen/X/HK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HK;->A04()Ljava/io/InputStream;

    move-result-object v4

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-gtz v5, :cond_34

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v2, v3, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v3, :cond_30

    invoke-static {p1, v6}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;->A00([Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction$Deserializer;Ljava/io/InputStream;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/offline/DownloadAction;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_25
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_54

    :cond_30
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    return-object v2

    :cond_34
    :try_start_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/De;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0X(Ljava/io/Closeable;)V

    throw v0
.end method
