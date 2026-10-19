###### Class com.facebook.ads.redexgen.X.C1453Wr (com.facebook.ads.redexgen.X.Wr)
.class public final Lcom/facebook/ads/redexgen/X/Wr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Br;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mkv/DefaultEbmlReader$ElementState;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/Bu;

.field public final A04:Lcom/facebook/ads/redexgen/X/Bz;

.field public final A05:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/Br;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "S6y5l6jxI9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6mnEH66ZFffSlH4yeHJS8qNG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YOAMbMDgHDJdJlquETda64yXe2Dsnigk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hsyrHKVntalAWTsGKMDD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "vPfGZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fU8euoLNwl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "f8hQ6WKdo4yu3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0USUeFTSnT76dGHmDwgcSkrJJgtZvyOb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wr;->A05()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A06:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A05:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bz;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Lcom/facebook/ads/redexgen/X/Bz;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Bb;I)D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wr;->A02(Lcom/facebook/ads/redexgen/X/Bb;I)J

    move-result-wide v1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_e

    long-to-int v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    :goto_d
    return-wide v0

    :cond_e
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    goto :goto_d
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Bb;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A06:[B

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A06:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A00(I)I

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_2b

    if-gt v4, v1, :cond_2b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A06:[B

    invoke-static {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/Bz;->A01([BIZ)J

    move-result-wide v2

    long-to-int v1, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Bu;->A8v(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1, v4}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    int-to-long v0, v1

    return-wide v0

    :cond_2b
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    goto :goto_3
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Bb;I)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A06:[B

    const/4 v0, 0x0

    invoke-interface {p1, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, p2, :cond_19

    const/16 v0, 0x8

    shl-long/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A06:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_19
    return-wide v3
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x28

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/Bb;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p2, :cond_b

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    new-array v2, p2, [B

    const/4 v1, 0x0

    invoke-interface {p1, v2, v1, p2}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    :goto_11
    if-lez p2, :cond_1c

    add-int/lit8 v0, p2, -0x1

    aget-byte v0, v2, v0

    if-nez v0, :cond_1c

    add-int/lit8 p2, p2, -0x1

    goto :goto_11

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v1, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x54

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wr;->A07:[B

    return-void

    :array_a
    .array-data 1
        0x7ct
        -0x5ft
        -0x57t
        -0x6ct
        -0x61t
        -0x64t
        -0x69t
        0x53t
        -0x68t
        -0x61t
        -0x68t
        -0x60t
        -0x68t
        -0x5ft
        -0x59t
        0x53t
        -0x59t
        -0x54t
        -0x5dt
        -0x68t
        0x53t
        -0x64t
        -0x3ft
        -0x37t
        -0x4ct
        -0x41t
        -0x44t
        -0x49t
        0x73t
        -0x47t
        -0x41t
        -0x3et
        -0x4ct
        -0x39t
        0x73t
        -0x3at
        -0x44t
        -0x33t
        -0x48t
        -0x73t
        0x73t
        -0x1bt
        0xat
        0x12t
        -0x3t
        0x8t
        0x5t
        0x0t
        -0x44t
        0x5t
        0xat
        0x10t
        0x1t
        0x3t
        0x1t
        0xet
        -0x44t
        0xft
        0x5t
        0x16t
        0x1t
        -0x2at
        -0x44t
        -0x7ft
        -0x5et
        -0x60t
        -0x69t
        -0x64t
        -0x6bt
        0x4et
        -0x6dt
        -0x66t
        -0x6dt
        -0x65t
        -0x6dt
        -0x64t
        -0x5et
        0x4et
        -0x5ft
        -0x69t
        -0x58t
        -0x6dt
        0x68t
        0x4et
    .end array-data
.end method


# virtual methods
.method public final A8f(Lcom/facebook/ads/redexgen/X/Bu;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    return-void
.end method

.method public final AEB(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_b5

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    :goto_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_b8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A08:[Ljava/lang/String;

    const-string v1, "iTM85rd"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Br;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Br;->A01(Lcom/facebook/ads/redexgen/X/Br;)J

    move-result-wide v1

    cmp-long v0, v7, v1

    if-ltz v0, :cond_4c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Br;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Br;->A00(Lcom/facebook/ads/redexgen/X/Br;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bu;->A5S(I)V

    return v5

    :cond_4c
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    if-nez v0, :cond_6d

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Lcom/facebook/ads/redexgen/X/Bz;

    const/4 v0, 0x4

    invoke-virtual {v1, p1, v5, v6, v0}, Lcom/facebook/ads/redexgen/X/Bz;->A05(Lcom/facebook/ads/redexgen/X/Bb;ZZI)J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v0, v1, v3

    if-nez v0, :cond_61

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wr;->A01(Lcom/facebook/ads/redexgen/X/Bb;)J

    move-result-wide v1

    :cond_61
    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_68

    return v6

    :cond_68
    long-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    :cond_6d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    if-ne v0, v5, :cond_7e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Lcom/facebook/ads/redexgen/X/Bz;

    const/16 v0, 0x8

    invoke-virtual {v1, p1, v6, v5, v0}, Lcom/facebook/ads/redexgen/X/Bz;->A05(Lcom/facebook/ads/redexgen/X/Bb;ZZI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    :cond_7e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bu;->A6l(I)I

    move-result v4

    const-wide/16 v7, 0x8

    packed-switch v4, :pswitch_data_1bc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x15

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A03(III)Ljava/lang/String;

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

    :pswitch_ab
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    long-to-int v0, v1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    goto/16 :goto_a

    :cond_b5
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_b8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_be
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v9

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    add-long v0, v9, v2

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Wr;->A05:Ljava/util/ArrayDeque;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    const/4 v3, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Br;

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/facebook/ads/redexgen/X/Br;-><init>(IJLcom/facebook/ads/redexgen/X/Bp;)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    iget-wide v11, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    invoke-interface/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Bu;->AFj(IJJ)V

    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    return v5

    :pswitch_df
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    cmp-long v0, v1, v7

    if-gtz v0, :cond_f4

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A02(Lcom/facebook/ads/redexgen/X/Bb;I)J

    move-result-wide v0

    invoke-interface {v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Bu;->A8j(IJ)V

    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    return v5

    :cond_f4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x29

    const/16 v1, 0x16

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_117
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v1, v3

    if-gtz v0, :cond_12f

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    long-to-int v0, v1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A04(Lcom/facebook/ads/redexgen/X/Bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Bu;->AFr(ILjava/lang/String;)V

    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    return v5

    :cond_12f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    const/16 v1, 0x15

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_151
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    long-to-int v0, v1

    invoke-interface {v4, v3, v0, p1}, Lcom/facebook/ads/redexgen/X/Bu;->A3y(IILcom/facebook/ads/redexgen/X/Bb;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wr;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x53

    if-eq v1, v0, :cond_173

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A08:[Ljava/lang/String;

    const-string v1, "x8X2xTnJq9Kheln0ABdW7PO8kghsREvE"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    return v5

    :cond_173
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wr;->A08:[Ljava/lang/String;

    const-string v1, "mGqeeb15RRoJ11oGs7LhfnjQvY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    return v5

    :pswitch_17d
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    const-wide/16 v1, 0x4

    cmp-long v0, v3, v1

    if-eqz v0, :cond_189

    cmp-long v0, v3, v7

    if-nez v0, :cond_198

    :cond_189
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Wr;->A03:Lcom/facebook/ads/redexgen/X/Bu;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:I

    long-to-int v0, v3

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A00(Lcom/facebook/ads/redexgen/X/Bb;I)D

    move-result-wide v0

    invoke-interface {v7, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Bu;->A5f(ID)V

    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    return v5

    :cond_198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x15

    const/16 v1, 0x14

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wr;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A02:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_be
        :pswitch_df
        :pswitch_117
        :pswitch_151
        :pswitch_17d
    .end packed-switch
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A05:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A04:Lcom/facebook/ads/redexgen/X/Bz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A06()V

    return-void
.end method
