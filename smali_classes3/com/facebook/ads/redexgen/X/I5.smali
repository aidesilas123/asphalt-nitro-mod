###### Class com.facebook.ads.redexgen.X.I5 (com.facebook.ads.redexgen.X.I5)
.class public final Lcom/facebook/ads/redexgen/X/I5;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ByJYsTLYuoR6uc8r"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JtyXwt9Aly6TcqGHtKIVJmBsk4OeLfoM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "a9HBAd1W81XiearAjjAT3V1ZsLEmO9Oi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "EXNlrjnsmLCbvnLTR5jNuRmyx9d0ZBX8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CaQoJFxeqSTbWtIeh0kRdnuLPh9NlfCW"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "NDFH7JBJhJBLaqfKHqozYt4fbxKVNhf7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NTYlS1n6YEIgBX9wiCzSTuRNkv1W0ADe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oBB1NAAyCwUYb6ONAQdFrjyju4xXh"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I5;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I5;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I5;->A01:Ljava/util/List;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/I5;->A00:I

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/I5;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    const/16 v0, 0x15

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v12, v0, 0x3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v5

    const/4 v4, 0x0

    :goto_15
    const/4 v8, 0x1

    if-ge v4, v10, :cond_32

    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v3

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v3, :cond_2f

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v1

    add-int/lit8 v0, v1, 0x4

    add-int/2addr v9, v0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_32
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    new-array v7, v9, [B
    :try_end_37
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_37} :catch_9a

    const/4 v6, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/I5;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_94

    sget-object v2, Lcom/facebook/ads/redexgen/X/I5;->A03:[Ljava/lang/String;

    const-string v1, "2"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v5, 0x0

    :goto_54
    if-ge v5, v10, :cond_84

    :try_start_56
    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v4

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v4, :cond_81

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v2

    sget-object v11, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    array-length v1, v0

    const/4 v0, 0x0

    invoke-static {v11, v0, v7, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    array-length v0, v0

    add-int/2addr v6, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    invoke-static {v1, v0, v7, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v2

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :cond_84
    if-nez v9, :cond_88

    const/4 v2, 0x0

    goto :goto_8c

    :cond_88
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_8c
    add-int/lit8 v1, v12, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/I5;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/I5;-><init>(Ljava/util/List;I)V

    return-object v0
    :try_end_94
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_56 .. :try_end_94} :catch_9a

    :cond_94
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_9a
    move-exception v3

    const/4 v2, 0x0

    const/16 v1, 0x19

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I5;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/I5;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x57

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
    .registers 1

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/I5;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x53t
        0x64t
        0x64t
        0x79t
        0x64t
        0x36t
        0x66t
        0x77t
        0x64t
        0x65t
        0x7ft
        0x78t
        0x71t
        0x36t
        0x5et
        0x53t
        0x40t
        0x55t
        0x36t
        0x75t
        0x79t
        0x78t
        0x70t
        0x7ft
        0x71t
    .end array-data
.end method
