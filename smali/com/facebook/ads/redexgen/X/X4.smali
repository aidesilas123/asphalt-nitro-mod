###### Class com.facebook.ads.redexgen.X.X4 (com.facebook.ads.redexgen.X.X4)
.class public final Lcom/facebook/ads/redexgen/X/X4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bb;


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:[B

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/Gc;

.field public final A06:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WXHfHzHth2Al5uPNAeAj07mTCizYfL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ea4PVszhPWUkUOAzwMvLCDFSUaducjj7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YmMP3hbiPsyrKpNosY6PcrNT297v1Qrn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DJcyMwta"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hLB8mG9dKKyMH1LM5ESzC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Vr0ZnTk4fnCFSbIFCLxfH748g1DMsTn2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7kDa6eDxYJ9kj6HJXeCECzm6I99XwLPU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QseCjdkBkHi9C8DCiNRIrV91qCtwuZnL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/X4;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gc;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/X4;->A05:Lcom/facebook/ads/redexgen/X/Gc;

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/X4;->A02:J

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/X4;->A04:J

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A06:[B

    return-void
.end method

.method private A00(I)I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/X4;->A05(I)V

    return v0
.end method

.method private A01([BII)I
    .registers 7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:I

    const/4 v2, 0x0

    if-nez v0, :cond_6

    return v2

    :cond_6
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/X4;->A05(I)V

    return v1
.end method

.method private A02([BIIIZ)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A05:Lcom/facebook/ads/redexgen/X/Gc;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Gc;->read([BII)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1c

    if-nez p4, :cond_16

    if-eqz p5, :cond_16

    return v0

    :cond_16
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1c
    add-int/2addr p4, v1

    return p4

    :cond_1e
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method private A03(I)V
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_9

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/X4;->A02:J

    int-to-long v0, p1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/X4;->A02:J

    :cond_9
    return-void
.end method

.method private A04(I)V
    .registers 6

    iget v3, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    add-int/2addr v3, p1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    array-length v0, v1

    if-le v3, v0, :cond_1d

    array-length v0, v1

    mul-int/lit8 v2, v0, 0x2

    const/high16 v1, 0x10000

    add-int/2addr v1, v3

    const/high16 v0, 0x80000

    add-int/2addr v0, v3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(III)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    :cond_1d
    return-void
.end method

.method private A05(I)V
    .registers 8

    iget v5, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:I

    sub-int/2addr v5, p1

    iput v5, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    array-length v1, v2

    const/high16 v0, 0x80000

    sub-int/2addr v1, v0

    if-ge v5, v1, :cond_17

    const/high16 v0, 0x10000

    add-int/2addr v0, v5

    new-array v3, v0, [B

    :cond_17
    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    return-void
.end method


# virtual methods
.method public final A06(IZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move v3, p1

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/X4;->A04(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_d
    if-ge v4, v3, :cond_1e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    iget v2, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/X4;->A02([BIIIZ)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_1e
    iget v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A00:I

    const/4 v0, 0x1

    return v0
.end method

.method public final A07(IZ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/X4;->A00(I)I

    move-result v4

    :goto_4
    const/4 v0, -0x1

    if-ge v4, p1, :cond_1b

    if-eq v4, v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A06:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A06:[B

    neg-int v2, v4

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/X4;->A02([BIIIZ)I

    move-result v4

    goto :goto_4

    :cond_1b
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/X4;->A03(I)V

    if-eq v4, v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public final A3S(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/X4;->A06(IZ)Z

    return-void
.end method

.method public final A7B()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A04:J

    return-wide v0
.end method

.method public final A7V()J
    .registers 5

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/X4;->A02:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final A7a()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A02:J

    return-wide v0
.end method

.method public final ADl([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/X4;->ADm([BIIZ)Z

    return-void
.end method

.method public final ADm([BIIZ)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/X4;->A06(IZ)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    sub-int/2addr v0, p3

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    return v0
.end method

.method public final AEE([BIIZ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct {p0, v4, v5, v6}, Lcom/facebook/ads/redexgen/X/X4;->A01([BII)I

    move-result v7

    :goto_7
    const/4 v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/X4;->A07:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/X4;->A07:[Ljava/lang/String;

    const-string v1, "Jrnjt2kK808bOfAL2dwi4gGQEivMT1gd"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "BeMd7gkFpNMGNNjn1C0ltMDP7X04qF1j"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v7, v6, :cond_38

    if-eq v7, v3, :cond_38

    move-object v3, p0

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/X4;->A02([BIIIZ)I

    move-result v7

    goto :goto_7

    :cond_38
    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/X4;->A03(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/X4;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_53

    sget-object v2, Lcom/facebook/ads/redexgen/X/X4;->A07:[Ljava/lang/String;

    const-string v1, "kVyK5NlwbVR8i9TPL7EEmQ28yX1F3goU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v7, v3, :cond_56

    :goto_51
    const/4 v0, 0x1

    :goto_52
    return v0

    :cond_53
    if-eq v7, v3, :cond_56

    goto :goto_51

    :cond_56
    const/4 v0, 0x0

    goto :goto_52
.end method

.method public final AEm()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/X4;->A01:I

    return-void
.end method

.method public final AFb(I)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/X4;->A00(I)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/X4;->A06:[B

    const/4 v2, 0x0

    array-length v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/X4;->A02([BIIIZ)I

    move-result v0

    :cond_15
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/X4;->A03(I)V

    return v0
.end method

.method public final AFe(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/X4;->A07(IZ)Z

    return-void
.end method

.method public final read([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct {p0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/X4;->A01([BII)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/X4;->A02([BIIIZ)I

    move-result v0

    :cond_10
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/X4;->A03(I)V

    return v0
.end method

.method public final readFully([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/X4;->AEE([BIIZ)Z

    return-void
.end method
