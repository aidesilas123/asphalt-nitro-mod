###### Class com.facebook.ads.redexgen.X.C1063Hi (com.facebook.ads.redexgen.X.Hi)
.class public final Lcom/facebook/ads/redexgen/X/Hi;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BtHKr"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GAfuq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1TcIbYyYGpE6Ekv4glvvfZz9bC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "q9fmd3d0ImW5Daxca"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ooOXUvpeMSptobOLnq6qd7gNdq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VwsWXVZM3brBJlmy9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pSziVAe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "zUHU2CyO73eexnRwL2LOOWJW4Jr0bcWv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Hi;->A08([BII)V

    return-void
.end method

.method private A00()I
    .registers 4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v0

    if-nez v0, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x1

    shl-int v1, v0, v2

    sub-int/2addr v1, v0

    if-lez v2, :cond_16

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A05(I)I

    move-result v0

    :goto_14
    add-int/2addr v1, v0

    return v1

    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private A01()V
    .registers 6

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    if-ltz v4, :cond_2c

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_2e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const-string v1, "f06qvbC"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "HuIz9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-lt v4, v3, :cond_27

    if-ne v4, v3, :cond_2c

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    if-nez v0, :cond_2c

    :cond_27
    const/4 v0, 0x1

    :goto_28
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    return-void

    :cond_2c
    const/4 v0, 0x0

    goto :goto_28

    :cond_2e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(I)Z
    .registers 7

    const/4 v0, 0x2

    if-gt v0, p1, :cond_58

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:I

    if-ge p1, v0, :cond_58

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:[B

    aget-byte v4, v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const-string v1, "Jod3dkhqFQ8qWj2s5"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "0zxF2BZpdiUX5xaGz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x3

    if-ne v4, v0, :cond_58

    add-int/lit8 v0, p1, -0x2

    aget-byte v0, v3, v0

    if-nez v0, :cond_58

    add-int/lit8 v0, p1, -0x1

    aget-byte v3, v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5a

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const-string v1, "lQKXp2Z"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Kosug"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_58

    const/4 v0, 0x1

    :goto_57
    return v0

    :cond_58
    const/4 v0, 0x0

    goto :goto_57

    :cond_5a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A03()I
    .registers 4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A00()I

    move-result v2

    rem-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_f

    const/4 v1, -0x1

    :goto_9
    add-int/lit8 v0, v2, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v1, v0

    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public final A04()I
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A00()I

    move-result v0

    return v0
.end method

.method public final A05(I)I
    .registers 11

    const/4 v8, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    :goto_6
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    const/4 v7, 0x2

    const/16 v4, 0x8

    if-le v5, v4, :cond_29

    add-int/lit8 v2, v5, -0x8

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v2

    or-int/2addr v8, v0

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_23
    add-int/2addr v1, v7

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    goto :goto_6

    :cond_27
    const/4 v7, 0x1

    goto :goto_23

    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:[B

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    aget-byte v0, v0, v3

    and-int/lit16 v6, v0, 0xff

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_49

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_49
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const-string v1, "CI85ryy9UuGcWp4q0bXmx78DrLL4QG6i"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    rsub-int/lit8 v0, v5, 0x8

    shr-int/2addr v6, v0

    or-int/2addr v8, v6

    rsub-int/lit8 v1, p1, 0x20

    const/4 v0, -0x1

    ushr-int/2addr v0, v1

    and-int/2addr v8, v0

    if-ne v5, v4, :cond_69

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    :goto_66
    add-int/2addr v3, v7

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    :cond_69
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A01()V

    return v8

    :cond_6d
    const/4 v7, 0x1

    goto :goto_66
.end method

.method public final A06()V
    .registers 4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_1b

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v2, 0x2

    :cond_18
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    :cond_1b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A01()V

    return-void
.end method

.method public final A07(I)V
    .registers 8

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    div-int/lit8 v0, p1, 0x8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v4, p1

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    const/4 v0, 0x7

    if-le v4, v0, :cond_40

    add-int/lit8 v5, v1, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A04:[Ljava/lang/String;

    const-string v1, "WKnUhbHg5PXpVOXLjQbslPOixC"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "5elOCNAU3UTje1WUqtoqjArHkZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    add-int/lit8 v0, v4, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    :cond_40
    add-int/lit8 v1, v3, 0x1

    :goto_42
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    if-gt v1, v0, :cond_57

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Hi;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_54

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    add-int/lit8 v1, v1, 0x2

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_57
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A01()V

    return-void
.end method

.method public final A08([BII)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:[B

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A01()V

    return-void
.end method

.method public final A09()Z
    .registers 8

    iget v6, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    iget v5, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    const/4 v4, 0x0

    :goto_5
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:I

    if-ge v1, v0, :cond_14

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A0A()Z

    move-result v0

    if-nez v0, :cond_14

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_14
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:I

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne v3, v0, :cond_2e

    const/4 v0, 0x1

    :goto_1d
    iput v6, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    if-nez v0, :cond_2d

    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    return v2

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final A0A()Z
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    aget-byte v2, v1, v0

    const/16 v1, 0x80

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    shr-int/2addr v1, v0

    and-int/2addr v2, v1

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A06()V

    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final A0B(I)Z
    .registers 7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    div-int/lit8 v0, p1, 0x8

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    add-int/2addr v4, v0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:I

    add-int/2addr v3, p1

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr v3, v0

    const/4 v0, 0x7

    if-le v3, v0, :cond_14

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_14
    add-int/lit8 v2, v1, 0x1

    :goto_16
    const/4 v1, 0x1

    if-gt v2, v4, :cond_29

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:I

    if-ge v4, v0, :cond_29

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Hi;->A02(I)Z

    move-result v0

    if-eqz v0, :cond_27

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x2

    :cond_27
    add-int/2addr v2, v1

    goto :goto_16

    :cond_29
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:I

    if-lt v4, v0, :cond_31

    if-ne v4, v0, :cond_32

    if-nez v3, :cond_32

    :cond_31
    :goto_31
    return v1

    :cond_32
    const/4 v1, 0x0

    goto :goto_31
.end method
