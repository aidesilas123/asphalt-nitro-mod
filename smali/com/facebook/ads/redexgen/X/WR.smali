###### Class com.facebook.ads.redexgen.X.WR (com.facebook.ads.redexgen.X.WR)
.class public final Lcom/facebook/ads/redexgen/X/WR;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/WQ;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "89ZAS4gKAvfsCOhGFLRndaPlzH5Jylu0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WDj0w8iYShPhw5JkNLQVjMzFidij1YMB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "SZD8V9ebG6DMCxkEToUDQHseHkwYH45y"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "flB69VC8Ebs69L5nDVZVAs6kLxLMfW9p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Dc9Giep11FBAOEJK"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fiVRhSZcsaoyqUlEeIiHO4czNXpaN55t"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "HHz5E2PDkz6p7na9zQig"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GASwop9kiLfFsL9tAHZWlbr16muWtU3x"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WR;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WR;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/WR;->A06:Lcom/facebook/ads/redexgen/X/Bd;

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/WR;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/WR;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/WQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/WQ;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:Lcom/facebook/ads/redexgen/X/WQ;

    const/16 v1, 0xae2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WR;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x46

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
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_24

    sput-object v0, Lcom/facebook/ads/redexgen/X/WR;->A04:[B

    sget-object v1, Lcom/facebook/ads/redexgen/X/WR;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    sget-object v2, Lcom/facebook/ads/redexgen/X/WR;->A05:[Ljava/lang/String;

    const-string v1, "Dcf"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-void

    :array_24
    .array-data 1
        -0x8t
        -0xdt
        -0x1et
    .end array-data
.end method


# virtual methods
.method public final A8e(Lcom/facebook/ads/redexgen/X/Bc;)V
    .registers 6

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:Lcom/facebook/ads/redexgen/X/WQ;

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cu;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Cu;-><init>(II)V

    invoke-virtual {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/WQ;->A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

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

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/16 v0, 0xae2

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Bb;->read([BII)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_f

    return v0

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0X(I)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:Z

    if-nez v0, :cond_27

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:Lcom/facebook/ads/redexgen/X/WQ;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A01:J

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/WQ;->ADj(JZ)V

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:Z

    :cond_27
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:Lcom/facebook/ads/redexgen/X/WQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/WQ;->A4O(Lcom/facebook/ads/redexgen/X/Hh;)V

    return v4
.end method

.method public final AEw(JJ)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A00:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WR;->A02:Lcom/facebook/ads/redexgen/X/WQ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/WQ;->AEv()V

    return-void
.end method

.method public final AFg(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v4, 0xa

    new-instance v3, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v3, v4}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    const/4 v2, 0x0

    :goto_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v4}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/WR;->A07:I

    if-eq v1, v0, :cond_5a

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    move v5, v2

    const/4 v4, 0x0

    :goto_21
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v0, 0x5

    invoke-interface {p1, v1, v6, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v1

    const/16 v0, 0xb77

    if-eq v1, v0, :cond_43

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    add-int/lit8 v5, v5, 0x1

    sub-int v1, v5, v2

    const/16 v0, 0x2000

    if-lt v1, v0, :cond_3f

    return v6

    :cond_3f
    invoke-interface {p1, v5}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    goto :goto_21

    :cond_43
    add-int/lit8 v4, v4, 0x1

    const/4 v0, 0x4

    if-lt v4, v0, :cond_4a

    const/4 v0, 0x1

    return v0

    :cond_4a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A8;->A05([B)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_54

    return v6

    :cond_54
    add-int/lit8 v0, v1, -0x5

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    goto :goto_21

    :cond_5a
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0D()I

    move-result v1

    add-int/lit8 v0, v1, 0xa

    add-int/2addr v2, v0

    invoke-interface {p1, v1}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    goto :goto_8
.end method
