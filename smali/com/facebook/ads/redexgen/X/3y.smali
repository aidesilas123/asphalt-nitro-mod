###### Class com.facebook.ads.redexgen.X.C07503y (com.facebook.ads.redexgen.X.3y)
.class public final Lcom/facebook/ads/redexgen/X/3y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/3y;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bULQ32o9JJN83aCucFVWf9xMaMFfdsau"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "BEVDZxUetTHXZyMQk8onv0fPj1ZBZ1Qa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0vYpub5LBkfCpAgXclsnPo1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "vVWBcEJQjEsfNalmzVe1r7miASaPIW1B"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "LFkzDQh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "g5RhG8eWHWtWI7ENz9qYtKd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "50dEOoYhOQRa91fvkd77j3svvS12NHRj"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eQbNRdF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/3y;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/3y;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/3y;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x5

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    if-nez v0, :cond_b

    new-instance v0, Lcom/facebook/ads/redexgen/X/3y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3y;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    :cond_b
    return-void
.end method

.method public static A02()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/3y;->A02:[B

    return-void

    nop

    :array_a
    .array-data 1
        -0x22t
        -0x22t
    .end array-data
.end method


# virtual methods
.method public final A03(I)I
    .registers 8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    const/16 v0, 0x40

    const-wide/16 v4, 0x1

    if-nez v1, :cond_1c

    if-lt p1, v0, :cond_11

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    :cond_11
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    shl-long v0, v4, p1

    sub-long/2addr v0, v4

    and-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    :cond_1c
    if-ge p1, v0, :cond_29

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    shl-long v0, v4, p1

    sub-long/2addr v0, v4

    and-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0

    :cond_29
    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A03(I)I

    move-result v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    add-int/2addr v2, v0

    return v2
.end method

.method public final A04()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3y;->A04()V

    :cond_b
    return-void
.end method

.method public final A05(I)V
    .registers 8

    const/16 v0, 0x40

    if-lt p1, v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    if-eqz v1, :cond_d

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A05(I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    const-wide/16 v4, 0x1

    shl-long/2addr v4, p1

    const-wide/16 v0, -0x1

    xor-long/2addr v4, v0

    and-long/2addr v2, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/3y;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    sget-object v4, Lcom/facebook/ads/redexgen/X/3y;->A03:[Ljava/lang/String;

    const-string v1, "FQtQPqX5zshXn4VmNwTVsnzPJS3Krcw4"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "mEVd87EgPvtBoIzzDeJnjIPIOSUL2jIs"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    goto :goto_d
.end method

.method public final A06(I)V
    .registers 6

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A06(I)V

    :goto_e
    return-void

    :cond_f
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    goto :goto_e
.end method

.method public final A07(IZ)V
    .registers 14

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/3y;->A07(IZ)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    const-wide/high16 v6, -0x8000000000000000L

    and-long/2addr v6, v4

    const-wide/16 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    cmp-long v0, v6, v1

    if-eqz v0, :cond_44

    const/4 v8, 0x1

    :goto_1d
    const-wide/16 v0, 0x1

    shl-long v6, v0, p1

    sub-long/2addr v6, v0

    and-long v2, v4, v6

    const-wide/16 v0, -0x1

    xor-long/2addr v0, v6

    and-long/2addr v4, v0

    shl-long/2addr v4, v10

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    if-eqz p2, :cond_40

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3y;->A06(I)V

    :goto_31
    if-nez v8, :cond_37

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    if-eqz v0, :cond_e

    :cond_37
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v9, v8}, Lcom/facebook/ads/redexgen/X/3y;->A07(IZ)V

    goto :goto_e

    :cond_40
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/3y;->A05(I)V

    goto :goto_31

    :cond_44
    const/4 v8, 0x0

    goto :goto_1d
.end method

.method public final A08(I)Z
    .registers 7

    const/16 v0, 0x40

    if-lt p1, v0, :cond_10

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    add-int/lit8 v0, p1, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(I)Z

    move-result v0

    return v0

    :cond_10
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    and-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final A09(I)Z
    .registers 17

    const/16 v0, 0x40

    move/from16 v2, p1

    if-lt v2, v0, :cond_12

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/3y;->A01()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    add-int/lit8 v0, v2, -0x40

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(I)Z

    move-result v0

    return v0

    :cond_12
    const-wide/16 v13, 0x1

    shl-long v11, v13, v2

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    and-long v3, v6, v11

    const-wide/16 v1, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4b

    const/4 v9, 0x1

    :goto_23
    const-wide/16 v4, -0x1

    xor-long v0, v11, v4

    and-long/2addr v6, v0

    iput-wide v6, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    sub-long/2addr v11, v13

    and-long v2, v6, v11

    xor-long/2addr v4, v11

    and-long/2addr v6, v4

    invoke-static {v6, v7, v10}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    if-eqz v0, :cond_4a

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/3y;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_45

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/3y;->A06(I)V

    :cond_45
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/3y;->A09(I)Z

    :cond_4a
    return v9

    :cond_4b
    const/4 v9, 0x0

    goto :goto_23
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    if-nez v0, :cond_2c

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/3y;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1b
    sget-object v4, Lcom/facebook/ads/redexgen/X/3y;->A03:[Ljava/lang/String;

    const-string v1, "hJ9KUEYMHtIt6rT1Ez0KfdL"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "B6CHA8tZa8vt0H5l4hWvu9Y"

    const/4 v0, 0x5

    aput-object v1, v4, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A01:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/3y;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/3y;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_55
    return-object v0
.end method
