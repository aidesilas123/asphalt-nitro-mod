###### Class com.facebook.ads.redexgen.X.V4 (com.facebook.ads.redexgen.X.V4)
.class public final Lcom/facebook/ads/redexgen/X/V4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gx;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/content/res/AssetFileDescriptor;

.field public A02:Landroid/net/Uri;

.field public A03:Ljava/io/InputStream;

.field public A04:Z

.field public final A05:Landroid/content/res/Resources;

.field public final A06:Lcom/facebook/ads/redexgen/X/Gy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/V4;",
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

    const-string v0, "CpiOlZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ukFexlYSIMwQqH0UvFPWGqG0YthdqpHq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2yw2Gs2GC2jxZI0Hgcr1UjVZgWf7BNvx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "7SwPVGS0jIrCQlvIcpAA6U9bhm4jPR5r"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "7pQ8HXcSNS6Xqd33VYljkiTEbCcLAkDq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kKrkJSZnynA87WgMdnYScFfJH7qszUrQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lo5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kH5jcAc5XMYXCXQVRoC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/V4;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/V4;->A01()V

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
            "Lcom/facebook/ads/redexgen/X/V4;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A05:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/V4;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

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

    const/16 v0, 0x51

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/V4;->A07:[B

    return-void

    :array_a
    .array-data 1
        -0x9t
        0xat
        0x18t
        0x14t
        0x1at
        0x17t
        0x8t
        0xat
        -0x3bt
        0xet
        0x9t
        0xat
        0x13t
        0x19t
        0xet
        0xbt
        0xet
        0xat
        0x17t
        -0x3bt
        0x12t
        0x1at
        0x18t
        0x19t
        -0x3bt
        0x7t
        0xat
        -0x3bt
        0x6t
        0x13t
        -0x3bt
        0xet
        0x13t
        0x19t
        0xat
        0xct
        0xat
        0x17t
        -0x2dt
        0x5t
        0x2t
        -0x7t
        -0x30t
        0x1dt
        0x25t
        0x23t
        0x24t
        -0x30t
        0x25t
        0x23t
        0x15t
        -0x30t
        0x23t
        0x13t
        0x18t
        0x15t
        0x1dt
        0x15t
        -0x30t
        0x22t
        0x11t
        0x27t
        0x22t
        0x15t
        0x23t
        0x1ft
        0x25t
        0x22t
        0x13t
        0x15t
        0x24t
        0x13t
        0x29t
        0x24t
        0x17t
        0x25t
        0x21t
        0x27t
        0x24t
        0x15t
        0x17t
    .end array-data
.end method


# virtual methods
.method public final A85()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:Landroid/net/Uri;

    return-object v0
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/Gg;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gx;
        }
    .end annotation

    :try_start_0
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:Landroid/net/Uri;

    const/16 v2, 0x46

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a8
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_b8

    :try_start_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_22} :catch_99
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_b8

    :try_start_22
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A05:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_93

    iget-wide v4, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5b

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:J

    goto :goto_86

    :cond_5b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_60} :catch_b8

    move-result-wide v6

    cmp-long v5, v6, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/V4;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_76

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_76
    sget-object v4, Lcom/facebook/ads/redexgen/X/V4;->A08:[Ljava/lang/String;

    const-string v1, "nEQCtk"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    if-nez v5, :cond_80

    goto :goto_84

    :cond_80
    :try_start_80
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    sub-long v2, v6, v0

    :goto_84
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:J
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_86} :catch_b8

    :goto_86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_90

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gy;->ADF(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Gg;)V

    :cond_90
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:J

    return-wide v0

    :cond_93
    :try_start_93
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :catch_99
    const/4 v2, 0x0

    const/16 v1, 0x27

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    const/16 v2, 0x27

    const/16 v1, 0x1f

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/V4;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_b8} :catch_b8

    :catch_b8
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gx;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A02:Landroid/net/Uri;

    const/4 v2, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_3c
    .catchall {:try_start_4 .. :try_end_b} :catchall_43

    :cond_b
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:Ljava/io/InputStream;

    :try_start_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_24
    .catchall {:try_start_d .. :try_end_14} :catchall_2b

    :cond_14
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    if-eqz v0, :cond_23

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_23

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_23
    return-void

    :catch_24
    move-exception v1

    :try_start_25
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v1

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    if-eqz v0, :cond_3b

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_3b

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_3b
    throw v1

    :catch_3c
    move-exception v1

    :try_start_3d
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v1

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:Ljava/io/InputStream;

    :try_start_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_5d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_64

    :cond_4d
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    if-eqz v0, :cond_5c

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_5c

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_5c
    throw v1

    :catch_5d
    move-exception v1

    :try_start_5e
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v1

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/V4;->A01:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    if-eqz v0, :cond_74

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_74

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_74
    throw v1
.end method

.method public final read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Gx;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:J

    const-wide/16 v6, 0x0

    sget-object v3, Lcom/facebook/ads/redexgen/X/V4;->A08:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v3, v3, v2

    const/16 v2, 0x18

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x77

    if-eq v3, v2, :cond_64

    sget-object v4, Lcom/facebook/ads/redexgen/X/V4;->A08:[Ljava/lang/String;

    const-string v3, "oumASG"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    const/4 v5, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_24

    return v5

    :cond_24
    const-wide/16 v6, -0x1

    cmp-long v2, v0, v6

    if-nez v2, :cond_2b

    goto :goto_31

    :cond_2b
    int-to-long v2, p3

    :try_start_2c
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_31
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A03:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_4b
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_39} :catch_5d

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:J

    cmp-long v0, v1, v6

    if-nez v0, :cond_40

    return v5

    :cond_40
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_4b
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_55

    int-to-long v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/V4;->A00:J

    :cond_55
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V4;->A06:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_5c

    invoke-interface {v0, p0, v4}, Lcom/facebook/ads/redexgen/X/Gy;->AAm(Ljava/lang/Object;I)V

    :cond_5c
    return v4

    :catch_5d
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Gx;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Gx;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_64
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
