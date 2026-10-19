###### Class com.facebook.ads.redexgen.X.C0937Bz (com.facebook.ads.redexgen.X.Bz)
.class public final Lcom/facebook/ads/redexgen/X/Bz;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:[J


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jNGyeOKibO3rZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Gh5JKt6GRlqFQi5f7wncYkOvXKUgvq3H"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CofAGDTz318WCwUORyk9cSrFfeh2Hkrj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9nnBa0OOqYKGA4mW7JXlquoRY2XdVC9l"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "SGv5o9U73t5KHQiabCNHP6atzf1gi70l"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Pw4XIo5raqSVixY1hwfj9nDYbuGZRESR"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "ADqcQvt0hpjLC586x1ggUJbhpZ3DSlma"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "N1vQLbUqrUUUOY9UOZX86MfJnRzuBUgh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Bz;->A03()V

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bz;->A05:[J

    return-void

    nop

    :array_3c
    .array-data 8
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A02:[B

    return-void
.end method

.method public static A00(I)I
    .registers 8

    const/4 v6, -0x1

    const/4 v5, 0x0

    :goto_2
    sget-object v1, Lcom/facebook/ads/redexgen/X/Bz;->A05:[J

    array-length v0, v1

    if-ge v5, v0, :cond_13

    aget-wide v3, v1, v5

    int-to-long v0, p0

    and-long/2addr v3, v0

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_14

    add-int/lit8 v6, v5, 0x1

    :cond_13
    return v6

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static A01([BIZ)J
    .registers 14

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v2, v0

    const-wide/16 v9, 0xff

    and-long/2addr v2, v9

    if-eqz p2, :cond_34

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bz;->A05:[J

    add-int/lit8 v0, p1, -0x1

    aget-wide v7, v1, v0

    const-wide/16 v5, -0x1

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v4, v4, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    sget-object v4, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const-string v1, "UDmiDfZ1LL8gM"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    xor-long/2addr v7, v5

    and-long/2addr v2, v7

    :cond_34
    const/4 v5, 0x1

    :goto_35
    if-ge v5, p1, :cond_63

    const/16 v0, 0x8

    shl-long/2addr v2, v0

    aget-byte v6, p0, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_5d

    sget-object v4, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const-string v1, "cm8OQheSofC6CbyPg1WnuKrHLhcydwvw"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const-string v1, "ayPMvBCy6e1LCFJPDiyGHhHMjUGacyfS"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    int-to-long v0, v6

    and-long/2addr v0, v9

    or-long/2addr v2, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_5d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_63
    return-wide v2
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bz;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_9
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_24

    :goto_1e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const-string v1, "ZERhDI0eRTm5worZScrGBygyYS9gFskv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_58

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_49

    goto :goto_1e

    :cond_49
    sget-object v2, Lcom/facebook/ads/redexgen/X/Bz;->A04:[Ljava/lang/String;

    const-string v1, "5jMkCIwJgzdMCgzRGNs7rdJ4OYAUyBry"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xyMLmlHhB2f8Cz8kVUOrh9ZTHBCB3Rr0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_58
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Bz;->A03:[B

    return-void

    :array_a
    .array-data 1
        0x40t
        0x61t
        0x2et
        0x78t
        0x6ft
        0x62t
        0x67t
        0x6at
        0x2et
        0x78t
        0x6ft
        0x7ct
        0x67t
        0x60t
        0x7at
        0x2et
        0x62t
        0x6bt
        0x60t
        0x69t
        0x7at
        0x66t
        0x2et
        0x63t
        0x6ft
        0x7dt
        0x65t
        0x2et
        0x68t
        0x61t
        0x7bt
        0x60t
        0x6at
    .end array-data
.end method


# virtual methods
.method public final A04()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A00:I

    return v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Bb;ZZI)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A01:I

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A02:[B

    invoke-interface {p1, v0, v3, v2, p2}, Lcom/facebook/ads/redexgen/X/Bb;->AEE([BIIZ)Z

    move-result v0

    if-nez v0, :cond_11

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A02:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Bz;->A00(I)I

    move-result v1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Bz;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3e

    iput v2, p0, Lcom/facebook/ads/redexgen/X/Bz;->A01:I

    :cond_22
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Bz;->A00:I

    if-le v1, p4, :cond_2b

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bz;->A01:I

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_2b
    if-eq v1, v2, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A02:[B

    sub-int/2addr v1, v2

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    :cond_33
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Bz;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Bz;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A00:I

    invoke-static {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/Bz;->A01([BIZ)J

    move-result-wide v0

    return-wide v0

    :cond_3e
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Bz;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A06()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Bz;->A00:I

    return-void
.end method
