###### Class com.facebook.ads.redexgen.X.C1605b5 (com.facebook.ads.redexgen.X.b5)
.class public final Lcom/facebook/ads/redexgen/X/b5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0K;


# static fields
.field public static A07:Ljava/lang/String;

.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Ljava/io/InputStream;

.field public A02:Ljava/net/HttpURLConnection;

.field public final A03:Ljava/lang/String;

.field public volatile A04:I

.field public volatile A05:I

.field public volatile A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0sQYFfkZHHeVMKUBSEw8nV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OMjsYZjecgzBPFsO2qu9DXSbxh5JXpo7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "UT2rHb55ERwVxNOqpRWPVvfe1UkWVyPP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dnZnJ0uYb7k8tLcQy7f3QyFDUQrwjEiR"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "oxpcdWRNT0kUjhHWpmvIkR5l"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "M5dLDfrAE2TxcxVuZGCd0hZ7u7RiqVG3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YVmAwTI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "30bRwIya64cDsyZ9K4ZP4bQrXzvqCneG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/b5;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/b5;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/b5;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/b5;->A07:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/0I;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/b5;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A05:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/0J;->A00(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/b5;->A06:Ljava/lang/String;

    return-void
.end method

.method private A00(Ljava/net/HttpURLConnection;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_9

    :goto_8
    return v1

    :cond_9
    const/16 v0, 0xce

    if-ne p3, v0, :cond_f

    add-int/2addr v1, p2

    goto :goto_8

    :cond_f
    iget v1, p0, Lcom/facebook/ads/redexgen/X/b5;->A05:I

    goto :goto_8
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/b5;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    array-length v0, p0

    if-ge p1, v0, :cond_33

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5d

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/b5;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_2d

    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A09:[Ljava/lang/String;

    const-string v1, "xmylGJpTyqy6yVXTtCE3KaogQJsBWdto"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_2d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02(II)Ljava/net/HttpURLConnection;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/ads/redexgen/X/b7;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xea

    const/16 v1, 0x10

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-lez p1, :cond_e2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x13

    const/16 v1, 0xd

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xf

    const/4 v1, 0x4

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    if-lez p1, :cond_8b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x142

    const/4 v1, 0x6

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x32

    const/4 v1, 0x1

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xfa

    const/4 v1, 0x5

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    if-lez p2, :cond_93

    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_93
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, p0, Lcom/facebook/ads/redexgen/X/b5;->A04:I

    const/16 v7, 0x12d

    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_10d

    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A09:[Ljava/lang/String;

    const-string v1, "PLgwygtF0FJvu0SiSas8utQP577qcxnM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "YPLv6eSsZkmOoYsRk43xhT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v3, v7, :cond_c4

    const/16 v0, 0x12e

    if-eq v3, v0, :cond_c4

    const/16 v0, 0x12f

    if-ne v3, v0, :cond_e0

    :cond_c4
    const/4 v3, 0x1

    :goto_c5
    if-eqz v3, :cond_da

    const/16 v2, 0xe2

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_da
    const/4 v0, 0x5

    if-gt v4, v0, :cond_ec

    if-nez v3, :cond_3

    return-object v5

    :cond_e0
    const/4 v3, 0x0

    goto :goto_c5

    :cond_e2
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_33

    :cond_ec
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x125

    const/16 v1, 0x14

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A03()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b7;
        }
    .end annotation

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xff

    const/16 v1, 0x17

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x2710

    :try_start_21
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A02(II)Ljava/net/HttpURLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A05:I

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A06:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v4, Lcom/facebook/ads/redexgen/X/b5;->A07:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4a

    const/16 v1, 0x12

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x139

    const/16 v1, 0x9

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x20

    const/16 v1, 0x12

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A05:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_80} :catch_80
    .catchall {:try_start_21 .. :try_end_80} :catchall_d1

    :catch_80
    move-exception v5

    :try_start_81
    sget-object v4, Lcom/facebook/ads/redexgen/X/b5;->A07:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x81

    const/16 v1, 0x19

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_81 .. :try_end_a3} :catchall_d1

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/0I;->A05(Ljava/io/Closeable;)V

    if-eqz v7, :cond_ca

    goto :goto_c7

    :goto_a9
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/0I;->A05(Ljava/io/Closeable;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A09:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_cb

    sget-object v2, Lcom/facebook/ads/redexgen/X/b5;->A09:[Ljava/lang/String;

    const-string v1, "wXbsZKrVFoHdOYHZfC25A956bVUh0jFV"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v7, :cond_ca

    :goto_c7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ca
    return-void

    :cond_cb
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catchall_d1
    move-exception v0

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/0I;->A05(Ljava/io/Closeable;)V

    if-eqz v7, :cond_da

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_da
    throw v0
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x149

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/b5;->A08:[B

    return-void

    :array_a
    .array-data 1
        -0x41t
        0x8t
        0x12t
        -0x41t
        0x8t
        0xdt
        0x13t
        0x4t
        0x11t
        0x11t
        0x14t
        0xft
        0x13t
        0x4t
        0x3t
        -0x41t
        0x13t
        0xet
        -0x41t
        -0x2dt
        0x2at
        0x1ct
        0x27t
        0x1bt
        -0x2dt
        0x22t
        0x19t
        0x19t
        0x26t
        0x18t
        0x27t
        -0x2dt
        -0x13t
        -0x1ft
        0x24t
        0x30t
        0x2ft
        0x35t
        0x26t
        0x2ft
        0x35t
        -0x12t
        0x2dt
        0x26t
        0x2ft
        0x28t
        0x35t
        0x29t
        -0x5t
        -0x1ft
        -0x64t
        -0x54t
        -0x6et
        -0x2bt
        -0x1ft
        -0x20t
        -0x20t
        -0x29t
        -0x2bt
        -0x1at
        -0x25t
        -0x1ft
        -0x20t
        -0x6et
        -0x25t
        -0x1bt
        -0x6et
        -0x2dt
        -0x2ct
        -0x1bt
        -0x29t
        -0x20t
        -0x1at
        -0x6dt
        0x8t
        0x34t
        0x33t
        0x39t
        0x2at
        0x33t
        0x39t
        -0x1bt
        0x2et
        0x33t
        0x2bt
        0x34t
        -0x1bt
        0x2bt
        0x34t
        0x37t
        -0x1bt
        0x25t
        -0x1t
        0x2ct
        0x2ct
        0x29t
        0x2ct
        -0x26t
        0x1et
        0x23t
        0x2dt
        0x1dt
        0x29t
        0x28t
        0x28t
        0x1ft
        0x1dt
        0x2et
        0x23t
        0x28t
        0x21t
        -0x26t
        0x2t
        0x2et
        0x2et
        0x2at
        0xft
        0x2ct
        0x26t
        -0x3t
        0x29t
        0x28t
        0x28t
        0x1ft
        0x1dt
        0x2et
        0x23t
        0x29t
        0x28t
        -0x11t
        0x1ct
        0x1ct
        0x19t
        0x1ct
        -0x36t
        0x10t
        0xft
        0x1et
        0xdt
        0x12t
        0x13t
        0x18t
        0x11t
        -0x36t
        0x13t
        0x18t
        0x10t
        0x19t
        -0x36t
        0x10t
        0x1ct
        0x19t
        0x17t
        -0x36t
        -0x1ft
        0xet
        0xet
        0xbt
        0xet
        -0x44t
        0xbt
        0xct
        0x1t
        0xat
        0x5t
        0xat
        0x3t
        -0x44t
        -0x1t
        0xbt
        0xat
        0xat
        0x1t
        -0x1t
        0x10t
        0x5t
        0xbt
        0xat
        -0x44t
        0x2t
        0xbt
        0xet
        -0x44t
        0xat
        0x37t
        0x37t
        0x34t
        0x37t
        -0x1bt
        0x37t
        0x2at
        0x26t
        0x29t
        0x2et
        0x33t
        0x2ct
        -0x1bt
        0x29t
        0x26t
        0x39t
        0x26t
        -0x1bt
        0x2bt
        0x37t
        0x34t
        0x32t
        -0x1bt
        -0x32t
        -0x6t
        -0x6t
        -0xat
        -0x25t
        -0x8t
        -0xet
        -0x27t
        -0xbt
        -0x5t
        -0x8t
        -0x17t
        -0x15t
        0x1t
        -0x5t
        -0x8t
        -0xet
        -0x3dt
        -0x53t
        -0x26t
        -0x3t
        -0xft
        -0x11t
        0x2t
        -0x9t
        -0x3t
        -0x4t
        0x12t
        0x33t
        0x28t
        0x31t
        -0x1dt
        0x26t
        0x32t
        0x31t
        0x31t
        0x28t
        0x26t
        0x37t
        0x2ct
        0x32t
        0x31t
        -0x1dt
        -0x15t
        -0x6t
        0x7t
        0x0t
        -0x2t
        -0x35t
        -0x22t
        -0x26t
        -0x23t
        -0x67t
        -0x24t
        -0x18t
        -0x19t
        -0x13t
        -0x22t
        -0x19t
        -0x13t
        -0x67t
        -0x1et
        -0x19t
        -0x21t
        -0x18t
        -0x67t
        -0x21t
        -0x15t
        -0x18t
        -0x1at
        -0x67t
        0xft
        0x22t
        0x1et
        0x21t
        0x26t
        0x2bt
        0x24t
        -0x23t
        0x30t
        0x2ct
        0x32t
        0x2ft
        0x20t
        0x22t
        -0x23t
        0x1bt
        0x36t
        0x36t
        -0x19t
        0x34t
        0x28t
        0x35t
        0x40t
        -0x19t
        0x39t
        0x2ct
        0x2bt
        0x30t
        0x39t
        0x2ct
        0x2at
        0x3bt
        0x3at
        0x1t
        -0x19t
        -0x9t
        -0x2ft
        -0x49t
        0x4t
        0x0t
        0x4t
        -0x4t
        -0x2ft
        -0x49t
        0x3et
        0x55t
        0x50t
        0x41t
        0x4ft
        0x19t
        0x31t
    .end array-data
.end method

.method private final A05(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b7;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/b5;->A02(II)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A06:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v1, 0x2000

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A01:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A00(Ljava/net/HttpURLConnection;II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A05:I

    return-void
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_28

    :catch_28
    move-exception v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x9a

    const/16 v1, 0x1d

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x13

    const/16 v1, 0xd

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final A06()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A04:I

    return v0
.end method

.method public final ADc(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b7;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A00:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A05(II)V

    return-void
.end method

.method public final close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b7;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A02:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_19

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_19
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_8} :catch_8

    :catch_8
    move-exception v3

    const/16 v2, 0x5c

    const/16 v1, 0x25

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public final declared-synchronized length()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b7;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/b5;->A05:I

    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/b5;->A03()V

    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A05:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read([B)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/b7;
        }
    .end annotation

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/b5;->A01:Ljava/io/InputStream;

    const/16 v2, 0xb7

    const/16 v1, 0x18

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_60

    :try_start_e
    array-length v1, p1

    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
    :try_end_15
    .catch Ljava/io/InterruptedIOException; {:try_start_e .. :try_end_15} :catch_2f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_15

    :catch_15
    move-exception v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2f
    move-exception v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x116

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FT;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/FT;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x33

    const/16 v1, 0x17

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/b7;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/b7;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xcf

    const/16 v1, 0x13

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b5;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x148

    const/4 v1, 0x1

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/b5;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
