###### Class com.facebook.ads.redexgen.X.CX (com.facebook.ads.redexgen.X.CX)
.class public final Lcom/facebook/ads/redexgen/X/CX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1Xip6MK3UX39SbdrhQxDlLsVDK2jyOlR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AU2BHKQnn2fYqPG5g1tvrnNHtccLtsvW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5fujN1flEc5Me9dyDOpwJW6OKLh1geLG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "d2hyRAFooTRyki1bdAaACMGjhokH1kbm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1id0n4LmWumjAHQEVAwGAQFe8ZjykTcE"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nyz5FVBYTM1P8JU78hecVl8rttPnaVCa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Rq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CX;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CX;->A03:[B

    array-length v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A02:I

    return-void
.end method

.method private A00()V
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:I

    if-ltz v1, :cond_13

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A02:I

    if-lt v1, v0, :cond_e

    if-ne v1, v0, :cond_13

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    if-nez v0, :cond_13

    :cond_e
    const/4 v0, 0x1

    :goto_f
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final A01()I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:I

    mul-int/lit8 v1, v0, 0x8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A02(I)I
    .registers 8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    rsub-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A03:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v0, v1

    const/16 v2, 0xff

    and-int/2addr v3, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    shr-int/2addr v3, v0

    rsub-int/lit8 v0, v5, 0x8

    shr-int v0, v2, v0

    and-int/2addr v3, v0

    :goto_1b
    if-ge v5, p1, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A03:[B

    add-int/lit8 v1, v4, 0x1

    aget-byte v0, v0, v4

    and-int/2addr v0, v2

    shl-int/2addr v0, v5

    or-int/2addr v3, v0

    add-int/lit8 v5, v5, 0x8

    move v4, v1

    goto :goto_1b

    :cond_2a
    rsub-int/lit8 v1, p1, 0x20

    const/4 v0, -0x1

    ushr-int/2addr v0, v1

    and-int/2addr v3, v0

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    return v3
.end method

.method public final A03(I)V
    .registers 5

    div-int/lit8 v0, p1, 0x8

    iget v2, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    const/4 v0, 0x7

    if-le v1, v0, :cond_1a

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:I

    add-int/lit8 v0, v1, -0x8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    :cond_1a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CX;->A00()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/CX;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    sget-object v2, Lcom/facebook/ads/redexgen/X/CX;->A04:[Ljava/lang/String;

    const-string v1, "0KTU32mldvOu3DR9Ufqh7FWixRDNtvi7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void
.end method

.method public final A04()Z
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CX;->A03:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A01:I

    aget-byte v0, v1, v0

    and-int/lit16 v2, v0, 0xff

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CX;->A00:I

    shr-int/2addr v2, v0

    const/4 v1, 0x1

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/CX;->A03(I)V

    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method
