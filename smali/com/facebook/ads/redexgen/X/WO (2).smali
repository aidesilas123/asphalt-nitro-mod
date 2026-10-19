###### Class com.facebook.ads.redexgen.X.WO (com.facebook.ads.redexgen.X.WO)
.class public final Lcom/facebook/ads/redexgen/X/WO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ba;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Lcom/facebook/ads/redexgen/X/Bd;

.field public static final A07:I


# instance fields
.field public A00:Z

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/WN;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zdP8mq1V4qx9ZCdsfAD4NG7cLFVpQAAe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "koAkuIv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "fyRTvmHGGGsRl9BV6D3JToZwd0QymLEV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ol6FmQC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pWzJ4KWOtVeOprDRKRooJjLfCIz1i7Yl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FaGWZpOEFJ3DEiDU22ljd64Ld5pUV9HD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "txEKQBUTk3v9kOkzxdvVTnLo1IME9gDG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VQ1knBpCfCAoSCLl3kVfN2N5wBdN5LBp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WO;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WO;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WO;->A06:Lcom/facebook/ads/redexgen/X/Bd;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WO;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/WO;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/WO;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WO;->A01:J

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WN;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A02:Lcom/facebook/ads/redexgen/X/WN;

    const/16 v1, 0xc8

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/WO;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3d

    sget-object v2, Lcom/facebook/ads/redexgen/X/WO;->A05:[Ljava/lang/String;

    const-string v1, "6nR4pRT1Z5KTQHbqvhpghrBhlvQkSoKV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "SkXTa4uQceGhkSQtr6wVij7rDC15CMq5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_37

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x43

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WO;->A04:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x42t
        0x4ft
        0x38t
    .end array-data
.end method


# virtual methods
.method public final A8e(Lcom/facebook/ads/redexgen/X/Bc;)V
    .registers 6

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WO;->A02:Lcom/facebook/ads/redexgen/X/WN;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cu;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Cu;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/X0;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/X0;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AEx(Lcom/facebook/ads/redexgen/X/Bj;)V

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

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/16 v0, 0xc8

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Bb;->read([BII)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0X(I)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:Z

    if-nez v0, :cond_27

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WO;->A02:Lcom/facebook/ads/redexgen/X/WN;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WO;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/WN;->ADj(JZ)V

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:Z

    :cond_27
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WO;->A02:Lcom/facebook/ads/redexgen/X/WN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WN;->A4O(Lcom/facebook/ads/redexgen/X/Hh;)V

    return v4
.end method

.method public final AEw(JJ)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A02:Lcom/facebook/ads/redexgen/X/WN;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WN;->AEv()V

    return-void
.end method

.method public final AFg(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v2, 0xa

    new-instance v5, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    new-instance v4, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([B)V

    const/4 v3, 0x0

    :goto_f
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v8, 0x0

    invoke-interface {p1, v0, v8, v2}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/WO;->A07:I

    if-eq v1, v0, :cond_77

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    move v7, v3

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_29
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v0, 0x2

    invoke-interface {p1, v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    const v1, 0xfff6

    and-int/2addr v1, v0

    const v0, 0xfff0

    if-eq v1, v0, :cond_51

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    add-int/lit8 v7, v7, 0x1

    sub-int v1, v7, v3

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_4d

    return v8

    :cond_4d
    invoke-interface {p1, v7}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    goto :goto_29

    :cond_51
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x4

    if-lt v2, v1, :cond_5c

    const/16 v0, 0xbc

    if-le v6, v0, :cond_5c

    const/4 v0, 0x1

    return v0

    :cond_5c
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {p1, v0, v8, v1}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    const/16 v0, 0xe

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A07(I)V

    const/16 v0, 0xd

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    const/4 v0, 0x6

    if-gt v1, v0, :cond_70

    return v8

    :cond_70
    add-int/lit8 v0, v1, -0x6

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    add-int/2addr v6, v1

    goto :goto_29

    :cond_77
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0D()I

    move-result v1

    add-int/lit8 v0, v1, 0xa

    add-int/2addr v3, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    goto :goto_f
.end method
