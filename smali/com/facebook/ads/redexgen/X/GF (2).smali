###### Class com.facebook.ads.redexgen.X.GF (com.facebook.ads.redexgen.X.GF)
.class public final Lcom/facebook/ads/redexgen/X/GF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioTrackScore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/GF;",
        ">;"
    }
.end annotation


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eb8CGYK3prt3t"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dQfQVH0VaiNJA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "r8fXA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "r3rHNRtipUDB7ufPa7P3AvdqyjlNLgla"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2m"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YPC8s"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "obzEXxZAmH6P4FrObF"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ImIsZWaiqjX9J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GF;->A07:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GF;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;

    const/4 v2, 0x0

    invoke-static {p3, v2}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A05:I

    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A07:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;)Z

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A03:I

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0D:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    :cond_1b
    iput v2, p0, Lcom/facebook/ads/redexgen/X/GF;->A02:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A01:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A04:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/GF;)I
    .registers 6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A05:I

    if-eq v1, v0, :cond_b

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A02(II)I

    move-result v0

    return v0

    :cond_b
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A03:I

    if-eq v1, v0, :cond_16

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A02(II)I

    move-result v0

    return v0

    :cond_16
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A02:I

    if-eq v1, v0, :cond_21

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A02(II)I

    move-result v0

    return v0

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A06:Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0D:Z

    if-eqz v0, :cond_30

    iget v1, p1, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A02(II)I

    move-result v0

    return v0

    :cond_30
    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A05:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5f

    :goto_35
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A01:I

    if-eq v1, v0, :cond_67

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A02(II)I

    move-result v3

    mul-int/2addr v3, v2

    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A07:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_61

    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A07:[Ljava/lang/String;

    const-string v1, "P8pKjaXeFiun6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "9cxjYqXmdfp1O"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_5f
    const/4 v2, -0x1

    goto :goto_35

    :cond_61
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_67
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A04:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A04:I

    if-eq v1, v0, :cond_73

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A02(II)I

    move-result v0

    mul-int/2addr v0, v2

    return v0

    :cond_73
    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A02(II)I

    move-result v0

    mul-int/2addr v0, v2

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/facebook/ads/redexgen/X/GF;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/GF;->A00(Lcom/facebook/ads/redexgen/X/GF;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    if-ne p0, p1, :cond_4

    return v4

    :cond_4
    const/4 v2, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_12

    :cond_11
    return v2

    :cond_12
    check-cast p1, Lcom/facebook/ads/redexgen/X/GF;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A05:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A05:I

    if-ne v1, v0, :cond_5a

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A03:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A03:I

    if-ne v1, v0, :cond_5a

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A02:I

    if-ne v1, v0, :cond_5a

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A01:I

    if-ne v1, v0, :cond_5a

    iget v3, p0, Lcom/facebook/ads/redexgen/X/GF;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/GF;->A07:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_43

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_43
    sget-object v2, Lcom/facebook/ads/redexgen/X/GF;->A07:[Ljava/lang/String;

    const-string v1, "D3QBn"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "QopBq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A04:I

    if-ne v3, v0, :cond_5a

    iget v1, p0, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    if-ne v1, v0, :cond_5a

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    return v4
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A05:I

    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A03:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A02:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A01:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A04:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/GF;->A00:I

    add-int/2addr v1, v0

    return v1
.end method
