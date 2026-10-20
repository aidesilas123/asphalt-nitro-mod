###### Class com.facebook.ads.redexgen.X.C1030Fz (com.facebook.ads.redexgen.X.Fz)
.class public final Lcom/facebook/ads/redexgen/X/Fz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/ttml/TtmlStyle$OptionalBoolean;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/ttml/TtmlStyle$FontSizeUnit;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/text/ttml/TtmlStyle$StyleFlags;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Landroid/text/Layout$Alignment;

.field public A09:Ljava/lang/String;

.field public A0A:Ljava/lang/String;

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/Fz;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EnH25CHWMSY6kl25xfmHDjH3RJCVhcCa"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "c9QwS3HStmnCaTv4XqOiovcAW3vqBlCk"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "yJ9YFZ76HfVljhtFvtfSYsYYLHoVkMB3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "y69MVLIQwTRqYQkH6ft3AFsQHNhuhuqd"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "HDxitRoDWw9zLH1l"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uTT6gRFq1HF7aES4vampCOqVAKYvWyzU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m9Eh3F3c5Q4haO7Pkkaf6ux3SCszBLsk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9FJhR48G617i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fz;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Fz;Z)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 7

    if-eqz p1, :cond_7c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Z

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A03:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0B(I)Lcom/facebook/ads/redexgen/X/Fz;

    :cond_f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    :cond_18
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    if-ne v0, v1, :cond_20

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    :cond_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    if-nez v0, :cond_28

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    :cond_28
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    if-ne v0, v1, :cond_30

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    :cond_30
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    if-ne v0, v1, :cond_38

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    :cond_38
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A08:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_40

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A08:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A08:Landroid/text/Layout$Alignment;

    :cond_40
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    if-ne v0, v1, :cond_6d

    iget v3, p1, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_60

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_60
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const-string v1, "7dqV6HxUrZiNBplekuLou9nhbRk7RVhU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A00:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:F

    :cond_6d
    if-eqz p2, :cond_7c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Z

    if-nez v0, :cond_7c

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Z

    if-eqz v0, :cond_7c

    iget v0, p1, Lcom/facebook/ads/redexgen/X/Fz;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A0A(I)Lcom/facebook/ads/redexgen/X/Fz;

    :cond_7c
    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fz;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

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
    .registers 4

    const/16 v0, 0x46

    new-array v3, v0, [B

    fill-array-data v3, :array_26

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_20

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const-string v1, "ykTASi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Fz;->A0E:[B

    return-void

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_26
    .array-data 1
        -0x20t
        -0x1t
        0x1t
        0x9t
        0x5t
        0x10t
        0xdt
        0x13t
        0xct
        0x2t
        -0x42t
        0x1t
        0xdt
        0xat
        0xdt
        0x10t
        -0x42t
        0x6t
        -0x1t
        0x11t
        -0x42t
        0xct
        0xdt
        0x12t
        -0x42t
        0x0t
        0x3t
        0x3t
        0xct
        -0x42t
        0x2t
        0x3t
        0x4t
        0x7t
        0xct
        0x3t
        0x2t
        -0x34t
        -0x78t
        -0x4ft
        -0x50t
        -0x4at
        0x62t
        -0x5bt
        -0x4ft
        -0x52t
        -0x4ft
        -0x4ct
        0x62t
        -0x56t
        -0x5dt
        -0x4bt
        0x62t
        -0x50t
        -0x4ft
        -0x4at
        0x62t
        -0x5ct
        -0x59t
        -0x59t
        -0x50t
        0x62t
        -0x5at
        -0x59t
        -0x58t
        -0x55t
        -0x50t
        -0x59t
        -0x5at
        0x70t
    .end array-data
.end method


# virtual methods
.method public final A03()F
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:F

    return v0
.end method

.method public final A04()I
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Z

    if-eqz v0, :cond_21

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Fz;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1b

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const-string v1, "KTxuuxMEH1VJoR6Md1"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    const/4 v2, 0x0

    const/16 v1, 0x26

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A05()I
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A03:I

    return v0

    :cond_7
    const/16 v2, 0x26

    const/16 v1, 0x20

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    return v0
.end method

.method public final A07()I
    .registers 6

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    const/4 v1, -0x1

    if-ne v4, v1, :cond_a

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne v4, v2, :cond_16

    const/4 v1, 0x1

    :goto_f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    if-ne v0, v2, :cond_14

    const/4 v3, 0x2

    :cond_14
    or-int/2addr v1, v3

    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public final A08()Landroid/text/Layout$Alignment;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A08:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final A09(F)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A00:F

    return-object p0
.end method

.method public final A0A(I)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 3

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A01:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Z

    return-object p0
.end method

.method public final A0B(I)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Lcom/facebook/ads/redexgen/X/Fz;

    const/4 v3, 0x1

    if-nez v0, :cond_23

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_6

    :cond_25
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fz;->A0F:[Ljava/lang/String;

    const-string v1, "pCA0IZ9lubeHZB9SkjDL2kYLsCYdHLPR"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A03:I

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Z

    return-object p0
.end method

.method public final A0C(I)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A04:I

    return-object p0
.end method

.method public final A0D(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A08:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/Fz;)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Fz;->A00(Lcom/facebook/ads/redexgen/X/Fz;Z)Lcom/facebook/ads/redexgen/X/Fz;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Lcom/facebook/ads/redexgen/X/Fz;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0A:Ljava/lang/String;

    return-object p0
.end method

.method public final A0H(Z)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Lcom/facebook/ads/redexgen/X/Fz;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A02:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0I(Z)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Lcom/facebook/ads/redexgen/X/Fz;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A05:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0J(Z)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Lcom/facebook/ads/redexgen/X/Fz;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0K(Z)Lcom/facebook/ads/redexgen/X/Fz;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0D:Lcom/facebook/ads/redexgen/X/Fz;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    return-object p0

    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0L()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A09:Ljava/lang/String;

    return-object v0
.end method

.method public final A0M()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0N()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0B:Z

    return v0
.end method

.method public final A0O()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fz;->A0C:Z

    return v0
.end method

.method public final A0P()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A0Q()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fz;->A07:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
