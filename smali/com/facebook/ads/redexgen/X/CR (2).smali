###### Class com.facebook.ads.redexgen.X.CR (com.facebook.ads.redexgen.X.CR)
.class public final Lcom/facebook/ads/redexgen/X/CR;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/CS;

.field public final A04:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lKy0YI5EGjXv2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kqfQDU0iwDhqaMHC0BsTfGE6FjC2jeup"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jv6iVn6YCI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Kbod1kIlqRm2x7YGttwPvO3kKDdBerP9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AKxPCvcOfBY8Sui08oZDK8EPANpoB5ev"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JY0GDhLNZiQYBqJ9WzpbNW6VWiMf19In"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "nhad57ygvI1TjLq62wNjXmGRomNY9pWS"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "x2lvOIXYuZTotm1szSwJqESRclSL2a8b"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/CS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/CS;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    const v0, 0xfe01

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    return-void
.end method

.method private A00(I)I
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    const/4 v5, 0x0

    :cond_4
    iget v4, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    add-int/2addr v4, p1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    sget-object v1, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const-string v1, "SgZ2PRj4NlkJ3BHKSnaMRED72QUEdulA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget v0, v3, Lcom/facebook/ads/redexgen/X/CS;->A02:I

    if-ge v4, v0, :cond_39

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/CS;->A09:[I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    add-int/2addr v1, p1

    aget v1, v2, v1

    add-int/2addr v5, v1

    const/16 v0, 0xff

    if-eq v1, v0, :cond_4

    :cond_39
    return v5
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/CS;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    return-object v0
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/Hh;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    return-object v0
.end method

.method public final A03()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/CS;->A02()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0V()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A02:Z

    return-void
.end method

.method public final A04()V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    array-length v0, v0

    const v6, 0xfe01

    if-ne v0, v6, :cond_b

    return-void

    :cond_b
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v4, v5, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    sget-object v1, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_34

    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const-string v1, "HnsfJzdopseCo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    return-void

    :cond_34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_10e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A02:Z

    if-eqz v0, :cond_13

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/CR;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0V()V

    :cond_13
    :goto_13
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A02:Z

    if-nez v0, :cond_117

    iget v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    if-gez v0, :cond_75

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/CS;->A03(Lcom/facebook/ads/redexgen/X/Bb;Z)Z

    move-result v0

    if-nez v0, :cond_24

    return v5

    :cond_24
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/CS;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/CS;->A04:I

    and-int/2addr v3, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_41

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_41
    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const-string v1, "DGX3mlcDy37xJAmSOrUIcVUM6emcoPwG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_70

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    if-nez v0, :cond_70

    invoke-direct {p0, v7}, Lcom/facebook/ads/redexgen/X/CR;->A00(I)I

    move-result v0

    add-int/2addr v6, v0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_10b

    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const-string v1, "AFkKoUuE7mshfLpTVlvrzPrYfrcgxZ46"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/2addr v7, v3

    :cond_70
    :goto_70
    invoke-interface {p1, v6}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    iput v7, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    :cond_75
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/CR;->A00(I)I

    move-result v6

    iget v3, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/CR;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_100

    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const-string v1, "rNz5xQDnDJbSd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/2addr v3, v7

    if-lez v6, :cond_f3

    :goto_97
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A05()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    add-int/2addr v0, v6

    if-ge v1, v0, :cond_cd

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v9, v8, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v7

    add-int/2addr v7, v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_111

    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const-string v1, "JzmWwV1YqYi"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v9, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v8, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    :cond_cd
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    invoke-interface {p1, v1, v0, v6}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/CR;->A04:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0X(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CS;->A09:[I

    add-int/lit8 v0, v3, -0x1

    aget v1, v1, v0

    const/16 v0, 0xff

    if-eq v1, v0, :cond_fe

    const/4 v0, 0x1

    :goto_f1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A02:Z

    :cond_f3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CR;->A03:Lcom/facebook/ads/redexgen/X/CS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CS;->A02:I

    if-ne v3, v0, :cond_fa

    const/4 v3, -0x1

    :cond_fa
    iput v3, p0, Lcom/facebook/ads/redexgen/X/CR;->A00:I

    goto/16 :goto_13

    :cond_fe
    const/4 v0, 0x0

    goto :goto_f1

    :cond_100
    sget-object v2, Lcom/facebook/ads/redexgen/X/CR;->A05:[Ljava/lang/String;

    const-string v1, "eWsMjGJOzbCV7BMGMZrvqQ3qOIA8iUo3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/2addr v3, v7

    if-lez v6, :cond_f3

    goto :goto_97

    :cond_10b
    add-int/2addr v7, v3

    goto/16 :goto_70

    :cond_10e
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_111
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_117
    return v4
.end method
