###### Class com.facebook.ads.redexgen.X.WD (com.facebook.ads.redexgen.X.WD)
.class public final Lcom/facebook/ads/redexgen/X/WD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cv;


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/Ht;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/Cg;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Hg;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wYbCHe4PqE0rUTWdo8mFq0UBpfkRDoC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "CuNoFwrXbx7Fup1Bnz4crpheboHEAq61"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "i4a35YUA6bJnEiUQjLdSeulU0LA5VC2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DQj4nZO33GsRRuNygGqDxWwIbU"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NTzjfKAdqL5R4ni"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Zn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9Rh66LtnIoGSEkHARJ7O"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nCQ56kMXgmV4b9DPw80w9mtudgrGO1uA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WD;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cg;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/Cg;

    const/16 v0, 0xa

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A03:I

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/WD;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3b

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    const-string v1, "tGST5WGrXasfnynKry2Y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "X7BCEDGkhqj2a0M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_35

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_35
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01()V
    .registers 11

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A07(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A04:J

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A08:Z

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v9, 0x1e

    shl-long/2addr v1, v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A09:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A07:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ht;->A07(J)J

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/WD;->A09:Z

    :cond_81
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ht;->A07(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A04:J

    :cond_89
    return-void
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x89

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WD;->A0C:[B

    return-void

    :array_a
    .array-data 1
        -0x25t
        0x28t
        0x2at
        0x2dt
        0x20t
        -0x25t
        0x1dt
        0x34t
        0x2ft
        0x20t
        0x2et
        -0x2ct
        -0x17t
        -0x9t
        -0x2at
        -0x17t
        -0x1bt
        -0x18t
        -0x17t
        -0xat
        -0xet
        0xbt
        0x2t
        0x15t
        0xdt
        0x2t
        0x0t
        0x11t
        0x2t
        0x1t
        -0x43t
        0x10t
        0x11t
        -0x2t
        0xft
        0x11t
        -0x43t
        0x0t
        0xct
        0x1t
        0x2t
        -0x43t
        0xdt
        0xft
        0x2t
        0x3t
        0x6t
        0x15t
        -0x29t
        -0x43t
        0x28t
        0x41t
        0x38t
        0x4bt
        0x43t
        0x38t
        0x36t
        0x47t
        0x38t
        0x37t
        -0xdt
        0x46t
        0x47t
        0x34t
        0x45t
        0x47t
        -0xdt
        0x3ct
        0x41t
        0x37t
        0x3ct
        0x36t
        0x34t
        0x47t
        0x42t
        0x45t
        -0xdt
        0x45t
        0x38t
        0x34t
        0x37t
        0x3ct
        0x41t
        0x3at
        -0xdt
        0x38t
        0x4bt
        0x47t
        0x38t
        0x41t
        0x37t
        0x38t
        0x37t
        -0xdt
        0x3bt
        0x38t
        0x34t
        0x37t
        0x38t
        0x45t
        -0x2t
        0x17t
        0xet
        0x21t
        0x19t
        0xet
        0xct
        0x1dt
        0xet
        0xdt
        -0x37t
        0x1ct
        0x1dt
        0xat
        0x1bt
        0x1dt
        -0x37t
        0x12t
        0x17t
        0xdt
        0x12t
        0xct
        0xat
        0x1dt
        0x18t
        0x1bt
        -0x1dt
        -0x37t
        0xet
        0x21t
        0x19t
        0xet
        0xct
        0x1dt
        0xet
        0xdt
        -0x37t
    .end array-data
.end method

.method private A03(I)V
    .registers 3

    iput p1, p0, Lcom/facebook/ads/redexgen/X/WD;->A03:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:I

    return-void
.end method

.method private A04()Z
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A07(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v6

    const/4 v3, -0x1

    const/4 v2, 0x1

    if-eq v6, v2, :cond_3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x14

    const/16 v1, 0x1e

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0xb

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    return v5

    :cond_3d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A06:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A08:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A07:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A01:I

    if-nez v5, :cond_83

    iput v3, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    :goto_82
    return v2

    :cond_83
    add-int/lit8 v0, v5, 0x6

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    goto :goto_82
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z
    .registers 7

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:I

    sub-int v0, p3, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x1

    if-gtz v2, :cond_10

    return v1

    :cond_10
    if-nez p2, :cond_1f

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    :goto_15
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:I

    if-ne v0, p3, :cond_1d

    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c

    :cond_1f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:I

    invoke-virtual {p1, p2, v0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    goto :goto_15
.end method


# virtual methods
.method public final A4P(Lcom/facebook/ads/redexgen/X/Hh;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_16

    iget v6, p0, Lcom/facebook/ads/redexgen/X/WD;->A03:I

    const/16 v2, 0xb

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(III)Ljava/lang/String;

    move-result-object v5

    packed-switch v6, :pswitch_data_12c

    :goto_13
    :pswitch_13
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/WD;->A03(I)V

    :cond_16
    :goto_16
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lez v0, :cond_12b

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A03:I

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_138

    goto :goto_16

    :pswitch_23
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    goto :goto_16

    :pswitch_2b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    const/16 v0, 0x9

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A05(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WD;->A04()Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v5, 0x2

    :cond_3e
    invoke-direct {p0, v5}, Lcom/facebook/ads/redexgen/X/WD;->A03(I)V

    goto :goto_16

    :pswitch_42
    const/16 v1, 0xa

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A01:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0B:Lcom/facebook/ads/redexgen/X/Hg;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/WD;->A05(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WD;->A01:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/WD;->A05(Lcom/facebook/ads/redexgen/X/Hh;[BI)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WD;->A01()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/Cg;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A04:J

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/WD;->A06:Z

    invoke-interface {v5, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Cg;->ADj(JZ)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WD;->A03(I)V

    goto :goto_16

    :pswitch_6e
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8a
    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    const-string v1, "hjut4LIYfO6UEnzCC4LSiWMZuOq2ZkQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    if-ne v0, v3, :cond_b8

    :goto_95
    if-lez v5, :cond_a0

    sub-int/2addr v6, v5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0X(I)V

    :cond_a0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Cg;->A4O(Lcom/facebook/ads/redexgen/X/Hh;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    if-eq v0, v3, :cond_16

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cg;->ADi()V

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/WD;->A03(I)V

    goto/16 :goto_16

    :cond_b8
    sub-int v5, v6, v0

    goto :goto_95

    :pswitch_bb
    const/16 v2, 0x32

    const/16 v1, 0x32

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    :pswitch_ca
    iget v6, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_11c

    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    const-string v1, "iT6qZLxrsL5nFXzA5eMWRbmPpry"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v6, v3, :cond_115

    :goto_e8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x64

    const/16 v1, 0x25

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A02:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WD;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cg;->ADi()V

    goto/16 :goto_13

    :cond_11c
    sget-object v2, Lcom/facebook/ads/redexgen/X/WD;->A0D:[Ljava/lang/String;

    const-string v1, "yVWHAKGbYqdJQnId175P"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "7JSMzt33eVYw0UR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v6, v3, :cond_115

    goto :goto_e8

    :cond_12b
    return-void

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_bb
        :pswitch_ca
    .end packed-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
        :pswitch_42
        :pswitch_6e
    .end packed-switch
.end method

.method public final A8g(Lcom/facebook/ads/redexgen/X/Ht;Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WD;->A05:Lcom/facebook/ads/redexgen/X/Ht;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/Cg;->A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V

    return-void
.end method

.method public final AEv()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A00:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A09:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WD;->A0A:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cg;->AEv()V

    return-void
.end method
