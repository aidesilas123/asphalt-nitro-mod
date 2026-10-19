###### Class com.facebook.ads.redexgen.X.XH (com.facebook.ads.redexgen.X.XH)
.class public final Lcom/facebook/ads/redexgen/X/XH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/audio/SilenceSkippingAudioProcessor$State;
    }
.end annotation


# static fields
.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:Ljava/nio/ByteBuffer;

.field public A08:Ljava/nio/ByteBuffer;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:[B

.field public A0D:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fmVPqkFD1cgVEf5yEceID3qk2mv0y9jV"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "b0qKN8vCZijgotAYoetPmKMmgBOh17e"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "g7TZXYRzX5Z2yGc3Q7ZfgtgqT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qnhKgbP1LxOTukF1AVGitzUWI170z7Sc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "gLdsa9A"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GaZA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7VW9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "auyYkXCiGRTQJpd2YduJgHCR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XH;->A0E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A04:I

    const/4 v1, 0x0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    return-void
.end method

.method private A00(J)I
    .registers 7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A04:I

    int-to-long v2, v0

    mul-long/2addr v2, p1

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method private A01(Ljava/nio/ByteBuffer;)I
    .registers 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lt v3, v0, :cond_44

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_3b

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    div-int/2addr v3, v0

    mul-int/2addr v3, v0

    add-int/2addr v3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/XH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/XH;->A0E:[Ljava/lang/String;

    const-string v1, "SOTn58r"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "mEuLJiBevsWuJD71nrz4KbfWqLj7leU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_3b
    add-int/lit8 v3, v3, -0x2

    goto :goto_6

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method private A02(Ljava/nio/ByteBuffer;)I
    .registers 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ge v2, v0, :cond_1f

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v0, 0x4

    if-le v1, v0, :cond_1c

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    div-int/2addr v2, v0

    mul-int/2addr v0, v2

    return v0

    :cond_1c
    add-int/lit8 v2, v2, 0x2

    goto :goto_6

    :cond_1f
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method private A03(I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1c

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    :goto_16
    if-lez p1, :cond_1b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0A:Z

    :cond_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_16
.end method

.method private A04(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/XH;->A03(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private A05(Ljava/nio/ByteBuffer;)V
    .registers 10

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XH;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v3, v4, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    array-length v1, v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    sub-int/2addr v1, v0

    const/4 v5, 0x0

    if-ge v4, v6, :cond_3f

    if-ge v3, v1, :cond_3f

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/XH;->A09([BI)V

    iput v5, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/XH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_92

    sget-object v2, Lcom/facebook/ads/redexgen/X/XH;->A0E:[Ljava/lang/String;

    const-string v1, "O6VD7siumNrk7CVoottqf9Wd"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "eko4kK9cp1fEhg6H4c3WRP0k0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iput v5, p0, Lcom/facebook/ads/redexgen/X/XH;->A05:I

    :goto_3e
    return-void

    :cond_3f
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget v7, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    array-length v0, v1

    if-ne v7, v0, :cond_81

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0A:Z

    const/4 v4, 0x2

    if-eqz v0, :cond_85

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XH;->A09([BI)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    :goto_76
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/XH;->A08(Ljava/nio/ByteBuffer;[BI)V

    iput v5, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    iput v4, p0, Lcom/facebook/ads/redexgen/X/XH;->A05:I

    :cond_81
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_3e

    :cond_85
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    sub-int/2addr v7, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    div-int/2addr v7, v0

    int-to-long v0, v7

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    goto :goto_76

    :cond_92
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06(Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    array-length v0, v0

    add-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XH;->A01(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v1, v0, :cond_24

    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A05:I

    :goto_20
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    :cond_24
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XH;->A04(Ljava/nio/ByteBuffer;)V

    goto :goto_20
.end method

.method private A07(Ljava/nio/ByteBuffer;)V
    .registers 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XH;->A02(Ljava/nio/ByteBuffer;)I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    div-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/XH;->A08(Ljava/nio/ByteBuffer;[BI)V

    if-ge v4, v5, :cond_2e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XH;->A09([BI)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A05:I

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2e
    return-void
.end method

.method private A08(Ljava/nio/ByteBuffer;[BI)V
    .registers 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    sub-int/2addr v2, v3

    sub-int/2addr p3, v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    const/4 v0, 0x0

    invoke-static {p2, p3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    invoke-virtual {p1, v0, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private A09([BI)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/XH;->A03(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final A0A()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    return-wide v0
.end method

.method public final A0B(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/XH;->A09:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XH;->flush()V

    return-void
.end method

.method public final A4N(III)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AI;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p3, v0, :cond_17

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A04:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A01:I

    if-ne v0, p2, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    iput p1, p0, Lcom/facebook/ads/redexgen/X/XH;->A04:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/XH;->A01:I

    mul-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    const/4 v0, 0x1

    return v0

    :cond_17
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AI;-><init>(III)V

    throw v0
.end method

.method public final A7O()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public final A7P()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A01:I

    return v0
.end method

.method public final A7Q()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final A7R()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A04:I

    return v0
.end method

.method public final A8l()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A04:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_b

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A09:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final A8q()Z
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0B:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final AE6()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0B:Z

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    if-lez v1, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/XH;->A09([BI)V

    :cond_c
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0A:Z

    if-nez v0, :cond_3f

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    iget v5, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    div-int/2addr v5, v0

    sget-object v4, Lcom/facebook/ads/redexgen/X/XH;->A0E:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x6

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2f
    sget-object v4, Lcom/facebook/ads/redexgen/X/XH;->A0E:[Ljava/lang/String;

    const-string v1, "We9PvBsbdasK7tn9VyyhVUkeOk007ymd"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "bdBvwmZlOtVUMyUHuHiUMKijb9L0xmkD"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    :cond_3f
    return-void
.end method

.method public final AE7(Ljava/nio/ByteBuffer;)V
    .registers 3

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A05:I

    packed-switch v0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_19
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XH;->A07(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_1d
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XH;->A05(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_21
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/XH;->A06(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1d
        :pswitch_19
    .end packed-switch
.end method

.method public final flush()V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XH;->A8l()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-wide/32 v0, 0x249f0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/XH;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    array-length v0, v0

    if-eq v0, v1, :cond_19

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    :cond_19
    const-wide/16 v0, 0x4e20

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/XH;->A00(J)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A00:I

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    array-length v0, v0

    if-eq v0, v1, :cond_2d

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    :cond_2d
    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A05:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A08:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A0B:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A06:J

    iput v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A02:I

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/XH;->A0A:Z

    return-void
.end method

.method public final reset()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A09:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XH;->flush()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A07:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A04:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/XH;->A03:I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0C:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XH;->A0D:[B

    return-void
.end method
