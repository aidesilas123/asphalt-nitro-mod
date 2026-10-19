###### Class com.facebook.ads.redexgen.X.VM (com.facebook.ads.redexgen.X.VM)
.class public final Lcom/facebook/ads/redexgen/X/VM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GV;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Landroid/net/Uri;

.field public A02:Ljava/io/InputStream;

.field public A03:Z

.field public final A04:Landroid/content/res/AssetManager;

.field public final A05:Lcom/facebook/ads/redexgen/X/Gy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Gy<",
            "-",
            "Lcom/facebook/ads/redexgen/X/VM;",
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

    const-string v0, "LZDHzUEPY8huLib8qPH1v7czaaxlCYVW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Hfajs1uaSYD8XiY9EEWii1aSJKbCXH1k"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "56ilEDtV1sbTjQDLh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Yd2dmsZ5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "tr3yrs0rtPd5aa0L"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Zl3VJckSqinxve9JbD33GDfHo4YeuNba"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VM;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VM;->A01()V

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
            "Lcom/facebook/ads/redexgen/X/VM;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A04:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VM;->A05:Lcom/facebook/ads/redexgen/X/Gy;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/VM;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/VM;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/VM;->A07:[Ljava/lang/String;

    const-string v1, "kcdTjQCUlglhSnU2yukjc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_36

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_36
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/VM;->A06:[B

    return-void

    :array_a
    .array-data 1
        0x64t
        0x6bt
        -0x63t
        -0x56t
        -0x60t
        -0x52t
        -0x55t
        -0x5bt
        -0x60t
        -0x65t
        -0x63t
        -0x51t
        -0x51t
        -0x5ft
        -0x50t
        0x6bt
    .end array-data
.end method


# virtual methods
.method public final A85()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A01:Landroid/net/Uri;

    return-object v0
.end method

.method public final ADb(Lcom/facebook/ads/redexgen/X/Gg;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GV;
        }
    .end annotation

    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A04:Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A01:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xf

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_3f

    const/16 v0, 0xf

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A04:Landroid/content/res/AssetManager;

    invoke-virtual {v0, v3, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/VM;->A02:Ljava/io/InputStream;

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A03:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_70

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    const-wide/16 v5, -0x1

    cmp-long v0, v1, v5

    if-eqz v0, :cond_52

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Gg;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J

    goto :goto_64

    :cond_3f
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VM;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_52
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A02:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J

    const-wide/32 v1, 0x7fffffff

    cmp-long v0, v3, v1

    if-nez v0, :cond_64

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_64} :catch_76

    :cond_64
    :goto_64
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/VM;->A03:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A05:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_6d

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Gy;->ADF(Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/Gg;)V

    :cond_6d
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J

    return-wide v0

    :cond_70
    :try_start_70
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_76} :catch_76

    :catch_76
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GV;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GV;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VM;->A01:Landroid/net/Uri;

    const/4 v2, 0x0

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A02:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_1b
    .catchall {:try_start_4 .. :try_end_b} :catchall_22

    :cond_b
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VM;->A02:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A03:Z

    if-eqz v0, :cond_1a

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VM;->A03:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A05:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_1a

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_1a
    return-void

    :catch_1b
    move-exception v1

    :try_start_1c
    new-instance v0, Lcom/facebook/ads/redexgen/X/GV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GV;-><init>(Ljava/io/IOException;)V

    throw v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v1

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/VM;->A02:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A03:Z

    if-eqz v0, :cond_32

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/VM;->A03:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A05:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_32

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Gy;->ADE(Ljava/lang/Object;)V

    :cond_32
    throw v1
.end method

.method public final read([BII)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/GV;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_e

    return v4

    :cond_e
    const-wide/16 v8, -0x1

    cmp-long v2, v0, v8

    if-nez v2, :cond_15

    goto :goto_1b

    :cond_15
    int-to-long v2, p3

    :try_start_16
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A02:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v4, :cond_35
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_61

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J

    cmp-long v0, v1, v8

    if-nez v0, :cond_2a

    return v4

    :cond_2a
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/GV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GV;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_35
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J

    cmp-long v0, v5, v8

    if-eqz v0, :cond_53

    int-to-long v3, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/VM;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_5b

    sget-object v2, Lcom/facebook/ads/redexgen/X/VM;->A07:[Ljava/lang/String;

    const-string v1, "Doxe12teItAf98KBLMhQOs4gzgBHzz"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/VM;->A00:J

    :cond_53
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VM;->A05:Lcom/facebook/ads/redexgen/X/Gy;

    if-eqz v0, :cond_5a

    invoke-interface {v0, p0, v7}, Lcom/facebook/ads/redexgen/X/Gy;->AAm(Ljava/lang/Object;I)V

    :cond_5a
    return v7

    :cond_5b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_61
    move-exception v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/GV;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/GV;-><init>(Ljava/io/IOException;)V

    throw v0
.end method
