###### Class com.facebook.ads.redexgen.X.C07072f (com.facebook.ads.redexgen.X.2f)
.class public final Lcom/facebook/ads/redexgen/X/2f;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:[I

.field public static final A01:[J

.field public static final A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/2f;->A00:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/facebook/ads/redexgen/X/2f;->A01:[J

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(I)I
    .registers 1

    mul-int/lit8 p0, p0, 0x8

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/2f;->A01(I)I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static A01(I)I
    .registers 4

    const/4 v2, 0x4

    :goto_1
    const/16 v0, 0x20

    if-ge v2, v0, :cond_13

    const/4 v1, 0x1

    shl-int v0, v1, v2

    add-int/lit8 v0, v0, -0xc

    if-gt p0, v0, :cond_10

    shl-int/2addr v1, v2

    add-int/lit8 v0, v1, -0xc

    return v0

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_13
    return p0
.end method

.method public static A02([III)I
    .registers 7

    const/4 v3, 0x0

    add-int/lit8 v2, p1, -0x1

    :goto_3
    if-gt v3, v2, :cond_16

    add-int v0, v3, v2

    ushr-int/lit8 v1, v0, 0x1

    aget v0, p0, v1

    if-ge v0, p2, :cond_10

    add-int/lit8 v3, v1, 0x1

    goto :goto_3

    :cond_10
    if-le v0, p2, :cond_15

    add-int/lit8 v2, v1, -0x1

    goto :goto_3

    :cond_15
    return v1

    :cond_16
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A03([JIJ)I
    .registers 10

    const/4 v5, 0x0

    add-int/lit8 v4, p1, -0x1

    :goto_3
    if-gt v5, v4, :cond_1a

    add-int v0, v5, v4

    ushr-int/lit8 v3, v0, 0x1

    aget-wide v1, p0, v3

    cmp-long v0, v1, p2

    if-gez v0, :cond_12

    add-int/lit8 v5, v3, 0x1

    goto :goto_3

    :cond_12
    cmp-long v0, v1, p2

    if-lez v0, :cond_19

    add-int/lit8 v4, v3, -0x1

    goto :goto_3

    :cond_19
    return v3

    :cond_1a
    xor-int/lit8 v0, v5, -0x1

    return v0
.end method

.method public static A04(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_a
    const/4 p0, 0x1

    :goto_b
    return p0

    :cond_c
    const/4 p0, 0x0

    goto :goto_b
.end method
