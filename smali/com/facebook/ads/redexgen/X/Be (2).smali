###### Class com.facebook.ads.redexgen.X.C0924Be (com.facebook.ads.redexgen.X.Be)
.class public final Lcom/facebook/ads/redexgen/X/Be;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:Lcom/facebook/ads/redexgen/X/DQ;

.field public static final A05:Ljava/util/regex/Pattern;


# instance fields
.field public A00:I

.field public A01:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "I7u5SMwnia1LjR8q2dDSZ1ZxyvAUDNjZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "lA52iG6YY0NJNsRtQCweAmt1bj2X"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2qXiYNq9KlAFUySgaSTQYzQ4aWQihc1C"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "j3GaPat5F4JzB2k2u38FDmanRSccFQ7x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Rgx4knYMi3WRjmVXMYvkXYj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jdUpLioS3ej7GnR7zzwjeYlHhGFO"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "z8YFUav71iIZ039OmPtsZmkN2j2dK8kW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "CjGTtkLliNi5lySdeHdx4jpczrbS9nvg"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Be;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Be;->A01()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/X1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/X1;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Be;->A04:Lcom/facebook/ads/redexgen/X/DQ;

    const/4 v2, 0x0

    const/16 v1, 0x32

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Be;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x26

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
    .registers 1

    const/16 v0, 0x4a

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Be;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x57t
        0x29t
        0x52t
        0x39t
        0x24t
        0x30t
        0x68t
        0x24t
        0x6ft
        0x48t
        0x24t
        0x4ft
        0x54t
        0x72t
        0x31t
        0x74t
        0x29t
        0x21t
        0x52t
        0x39t
        0x24t
        0x30t
        0x68t
        0x24t
        0x6ft
        0x48t
        0x24t
        0x4ft
        0x54t
        0x72t
        0x31t
        0x74t
        0x20t
        0x29t
        0x21t
        0x52t
        0x39t
        0x24t
        0x30t
        0x68t
        0x24t
        0x6ft
        0x48t
        0x24t
        0x4ft
        0x54t
        0x72t
        0x31t
        0x74t
        0x20t
        0x4at
        0x46t
        0x44t
        0x7t
        0x48t
        0x59t
        0x59t
        0x45t
        0x4ct
        0x7t
        0x40t
        0x7dt
        0x5ct
        0x47t
        0x4ct
        0x5at
        0x2bt
        0x16t
        0x37t
        0x2ct
        0x11t
        0xft
        0x12t
        0x0t
    .end array-data
.end method

.method private A02(Ljava/lang/String;)Z
    .registers 7

    sget-object v0, Lcom/facebook/ads/redexgen/X/Be;->A05:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v3, 0x1

    :try_start_d
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v1, :cond_24

    if-lez v0, :cond_29

    :cond_24
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    return v3
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A03()Z
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final A04(I)Z
    .registers 4

    shr-int/lit8 v1, p1, 0xc

    and-int/lit16 v0, p1, 0xfff

    if-gtz v1, :cond_8

    if-lez v0, :cond_e

    :cond_8
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public final A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Z
    .registers 10

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A00()I

    move-result v0

    if-ge v3, v0, :cond_7a

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata$Entry;

    move-result-object v4

    instance-of v7, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;

    const/16 v2, 0x42

    const/16 v1, 0x8

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v7, :cond_4e

    check-cast v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    sget-object v2, Lcom/facebook/ads/redexgen/X/Be;->A03:[Ljava/lang/String;

    const-string v1, "qNstZA7UFnX3Ahz0Wj5J3oCW9XwBWpVm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;->A00:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;->A02:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Be;->A02(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    return v6

    :cond_4e
    instance-of v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/InternalFrame;

    if-eqz v0, :cond_77

    check-cast v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/InternalFrame;

    const/16 v2, 0x32

    const/16 v1, 0x10

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Be;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/InternalFrame;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/InternalFrame;->A00:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/InternalFrame;->A02:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Be;->A02(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    return v6

    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7a
    const/4 v0, 0x0

    return v0
.end method
