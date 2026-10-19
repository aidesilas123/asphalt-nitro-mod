###### Class com.facebook.ads.redexgen.X.VL (com.facebook.ads.redexgen.X.VL)
.class public final Lcom/facebook/ads/redexgen/X/VL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GY;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/FileInputStream;

.field public A04:Z

.field public final A05:Landroid/content/ContentResolver;

.field public final A06:Lcom/facebook/ads/redexgen/X/Gy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/VL;",
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

    const-string v0, "LByWpbEPJA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7zBd1gTQe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KuygTrv8nulqhNSWOngA1uKtSEuZHgRN"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Njgdt1gsnhQwK4o"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BeNPg2roj36bAWsP0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RQRmVWofVgKwOSOG8v2k1lAFTXU782LE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "P3wGsXlJvJ2cmEHDxz1oaqJg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cQN91p4HTGgxD32"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VL;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Gy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/VL;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A05:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VL;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x68

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

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/VL;->A07:[B

    return-void

    :array_a
    .array-data 1
        0x4dt
        0x61t
        0x7bt
        0x62t
        0x6at
        0x2et
        0x60t
        0x61t
        0x7at
        0x2et
        0x61t
        0x7et
        0x6bt
        0x60t
        0x2et
        0x68t
        0x67t
        0x62t
        0x6bt
        0x2et
        0x6at
        0x6bt
        0x7dt
        0x6dt
        0x7ct
        0x67t
        0x7et
        0x7at
        0x61t
        0x7ct
        0x2et
        0x68t
        0x61t
        0x7ct
        0x34t
        0x2et
        0x58t
    .end array-data
.end method


# virtual methods
.method public final A85()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/Gg;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GY;
        }
    .end annotation

    :try_start_0
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A05:Landroid/content/ContentResolver;

    const/16 v2, 0x24

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:Ljava/io/FileInputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_7b

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-eqz v0, :cond_47

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J

    goto :goto_6e

    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    cmp-long v0, v1, v3

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-nez v0, :cond_64

    :goto_61
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J

    goto :goto_6e

    :cond_64
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long v3, v5, v0

    goto :goto_61

    :cond_6b
    sub-long/2addr v1, v5

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6e} :catch_a3

    :goto_6e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_78

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gy;->ADF(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Gg;)V

    :cond_78
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J

    return-wide v0

    :cond_7b
    :try_start_7b
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x24

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_a3} :catch_a3

    :catch_a3
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GY;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GY;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:Landroid/net/Uri;

    const/4 v2, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:Ljava/io/FileInputStream;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_3c
    .catchall {:try_start_4 .. :try_end_b} :catchall_43

    :cond_b
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:Ljava/io/FileInputStream;

    :try_start_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_24
    .catchall {:try_start_d .. :try_end_14} :catchall_2b

    :cond_14
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    if-eqz v0, :cond_23

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_23

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_23
    return-void

    :catch_24
    move-exception v1

    :try_start_25
    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GY;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v1

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    if-eqz v0, :cond_3b

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_3b

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_3b
    throw v1

    :catch_3c
    move-exception v1

    :try_start_3d
    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GY;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v1

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:Ljava/io/FileInputStream;

    :try_start_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_5d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_64

    :cond_4d
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    if-eqz v0, :cond_5c

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_5c

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_5c
    throw v1

    :catch_5d
    move-exception v1

    :try_start_5e
    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GY;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v1

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    if-eqz v0, :cond_74

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_74

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_74
    throw v1
.end method

.method public final read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GY;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J

    const-wide/16 v3, 0x0

    const/4 v5, -0x1

    cmp-long v2, v0, v3

    if-nez v2, :cond_e

    return v5

    :cond_e
    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_15

    goto :goto_1b

    :cond_15
    int-to-long v2, p3

    :try_start_16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ne v3, v5, :cond_54
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_a1

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3d
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    const-string v1, "iixlGiSV2y9Sj4FhSzJ8n8KndyylS"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    cmp-long v0, v3, v6

    if-nez v0, :cond_49

    return v5

    :cond_49
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GY;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_54
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_9c

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    const-string v1, "YPxf1aEs9O2Lc7g4LGclNCu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_71

    :goto_6d
    int-to-long v0, v3

    sub-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:J

    :cond_71
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_8d

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    const-string v1, "Oz3XLfSc2A979xkKdF0NMgeVRm8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_8c

    :goto_89
    invoke-interface {v4, p0, v3}, Lcom/facebook/ads/redexgen/X/Gy;->AAm(Ljava/lang/Object;I)V

    :cond_8c
    return v3

    :cond_8d
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A08:[Ljava/lang/String;

    const-string v1, "uqZ1tM2xm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "4bkl7P4p23vj4jNsoeIfag2n"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_8c

    goto :goto_89

    :cond_9c
    cmp-long v0, v4, v6

    if-eqz v0, :cond_71

    goto :goto_6d

    :catch_a1
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GY;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
