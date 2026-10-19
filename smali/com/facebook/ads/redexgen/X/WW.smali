###### Class com.facebook.ads.redexgen.X.WW (com.facebook.ads.redexgen.X.WW)
.class public final Lcom/facebook/ads/redexgen/X/WW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ba;


# static fields
.field public static A03:[B

.field public static final A04:Lcom/facebook/ads/redexgen/X/Bd;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Bc;

.field public A01:Lcom/facebook/ads/redexgen/X/CW;

.field public A02:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WW;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WX;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WX;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WW;->A04:Lcom/facebook/ads/redexgen/X/Bd;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Hh;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WW;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x25

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

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WW;->A03:[B

    return-void

    :array_a
    .array-data 1
        0x6ct
        -0x79t
        -0x71t
        -0x6et
        -0x75t
        -0x76t
        0x46t
        -0x66t
        -0x6bt
        0x46t
        -0x76t
        -0x75t
        -0x66t
        -0x75t
        -0x68t
        -0x6dt
        -0x71t
        -0x6ct
        -0x75t
        0x46t
        -0x78t
        -0x71t
        -0x66t
        -0x67t
        -0x66t
        -0x68t
        -0x75t
        -0x79t
        -0x6dt
        0x46t
        -0x66t
        -0x61t
        -0x6at
        -0x75t
    .end array-data
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v2, Lcom/facebook/ads/redexgen/X/CS;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/CS;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/facebook/ads/redexgen/X/CS;->A03(Lcom/facebook/ads/redexgen/X/Bb;Z)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_13

    iget v1, v2, Lcom/facebook/ads/redexgen/X/CS;->A04:I

    const/4 v0, 0x2

    and-int/2addr v1, v0

    if-eq v1, v0, :cond_14

    :cond_13
    return v4

    :cond_14
    iget v1, v2, Lcom/facebook/ads/redexgen/X/CS;->A00:I

    const/16 v0, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v1, v2}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {p1, v0, v4, v2}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WW;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WY;->A04(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    if-eqz v0, :cond_38

    new-instance v0, Lcom/facebook/ads/redexgen/X/WY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WY;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A01:Lcom/facebook/ads/redexgen/X/CW;

    :goto_37
    return v3

    :cond_38
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WW;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WT;->A06(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/facebook/ads/redexgen/X/WT;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WT;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A01:Lcom/facebook/ads/redexgen/X/CW;

    goto :goto_37

    :cond_4a
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WW;->A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WV;->A04(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/facebook/ads/redexgen/X/WV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WV;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A01:Lcom/facebook/ads/redexgen/X/CW;

    goto :goto_37

    :cond_5c
    return v4
.end method


# virtual methods
.method public final A8e(Lcom/facebook/ads/redexgen/X/Bc;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WW;->A00:Lcom/facebook/ads/redexgen/X/Bc;

    return-void
.end method

.method public final AE9(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A01:Lcom/facebook/ads/redexgen/X/CW;

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WW;->A03(Lcom/facebook/ads/redexgen/X/Bb;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    :cond_d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A02:Z

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WW;->A00:Lcom/facebook/ads/redexgen/X/Bc;

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A00:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WW;->A01:Lcom/facebook/ads/redexgen/X/CW;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A00:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CW;->A06(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Bm;)V

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/WW;->A02:Z

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A01:Lcom/facebook/ads/redexgen/X/CW;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/CW;->A02(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I

    move-result v0

    return v0

    :cond_2e
    const/4 v2, 0x0

    const/16 v1, 0x22

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WW;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final AEw(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WW;->A01:Lcom/facebook/ads/redexgen/X/CW;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/CW;->A05(JJ)V

    :cond_7
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

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WW;->A03(Lcom/facebook/ads/redexgen/X/Bb;)Z

    move-result v0

    return v0
    :try_end_5
    .catch Lcom/facebook/ads/redexgen/X/9d; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    const/4 v0, 0x0

    return v0
.end method
