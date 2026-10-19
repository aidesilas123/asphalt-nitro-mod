###### Class com.facebook.ads.redexgen.X.C1418Vf (com.facebook.ads.redexgen.X.Vf)
.class public final Lcom/facebook/ads/redexgen/X/Vf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Bm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Er;,
        Lcom/facebook/ads/redexgen/X/Es;
    }
.end annotation


# static fields
.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public A04:Lcom/facebook/ads/redexgen/X/Er;

.field public A05:Lcom/facebook/ads/redexgen/X/Er;

.field public A06:Lcom/facebook/ads/redexgen/X/Er;

.field public A07:Lcom/facebook/ads/redexgen/X/Es;

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ep;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Eq;

.field public final A0D:Lcom/facebook/ads/redexgen/X/GU;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "J778k2tN1A71aNteuaiayf8W9Cwuw9"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SddvXAFvjaaaNZPS5hBFE72C4u8NAkzU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "DlS6L0Rs4yOHZbnixJzGuxf7gpgZ1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jQlCDwUBXdtP"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ybgFHcAQFxf90xR6S9k4k72uXmSANsHZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TXMpPdQfareL1guTNfB0PsKfFvbJoTHv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "R2X9ywuliv1XsGmKXBlkokivcnsZ5nAf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "17XTwjN4yTPZEt52JUGlNgZMXTvW6CfX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GU;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:Lcom/facebook/ads/redexgen/X/GU;

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/GU;->A76()I

    move-result v3

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Eq;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ep;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ep;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Lcom/facebook/ads/redexgen/X/Ep;

    const/16 v1, 0x20

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Er;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    return-void
.end method

.method private A00(I)I
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A02:Z

    if-nez v0, :cond_1c

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:Lcom/facebook/ads/redexgen/X/GU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GU;->A3T()Lcom/facebook/ads/redexgen/X/GT;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/Er;-><init>(JI)V

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Er;->A02(Lcom/facebook/ads/redexgen/X/GT;Lcom/facebook/ads/redexgen/X/Er;)V

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    sub-long/2addr v2, v0

    long-to-int v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 8

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-wide/16 v0, 0x0

    cmp-long v3, p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_33

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "lOB1PW6jUN1Flr4ublIocLHYYSFUXZqB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_32

    iget-wide v3, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_32

    iget-wide v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H(J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object p0

    :cond_32
    return-object p0

    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(I)V
    .registers 7

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    int-to-long v0, p1

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    :cond_14
    return-void
.end method

.method private A03(J)V
    .registers 6

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    goto :goto_0

    :cond_f
    return-void
.end method

.method private A04(J)V
    .registers 8

    const-wide/16 v1, -0x1

    cmp-long v0, p1, v1

    if-nez v0, :cond_7

    return-void

    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_21

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:Lcom/facebook/ads/redexgen/X/GU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/GU;->AEP(Lcom/facebook/ads/redexgen/X/GT;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Er;->A01()Lcom/facebook/ads/redexgen/X/Er;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    goto :goto_7

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/Er;->A04:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Er;->A04:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_31

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    :cond_31
    return-void
.end method

.method private A05(JLjava/nio/ByteBuffer;I)V
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vf;->A03(J)V

    :cond_3
    :goto_3
    if-lez p4, :cond_30

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    sub-long/2addr v1, p1

    long-to-int v0, v1

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Er;->A00(J)I

    move-result v0

    invoke-virtual {p3, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v2

    int-to-long v0, v2

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    goto :goto_3

    :cond_30
    return-void
.end method

.method private A06(J[BI)V
    .registers 10

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vf;->A03(J)V

    move v3, p4

    :cond_4
    :goto_4
    if-lez v3, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    sub-long/2addr v0, p1

    long-to-int v2, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Er;->A00(J)I

    move-result v1

    sub-int v0, p4, v3

    invoke-static {v2, v1, p3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v4

    int-to-long v0, v4

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    cmp-long v0, p1, v1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    goto :goto_4

    :cond_33
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/XE;Lcom/facebook/ads/redexgen/X/Ep;)V
    .registers 21

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/Ep;->A01:J

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-direct {v4, v0, v1, v2, v5}, Lcom/facebook/ads/redexgen/X/Vf;->A06(J[BI)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v9, 0x0

    aget-byte v3, v2, v9

    and-int/lit16 v2, v3, 0x80

    if-eqz v2, :cond_f1

    :goto_21
    and-int/lit8 v8, v3, 0x7f

    move-object/from16 v7, p1

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/As;->A04:[B

    if-nez v2, :cond_33

    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, v3, Lcom/facebook/ads/redexgen/X/As;->A04:[B

    :cond_33
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/As;->A04:[B

    invoke-direct {v4, v0, v1, v2, v8}, Lcom/facebook/ads/redexgen/X/Vf;->A06(J[BI)V

    int-to-long v2, v8

    add-long/2addr v0, v2

    if-eqz v5, :cond_ce

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Vf;->A06(J[BI)V

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v10

    :goto_54
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    iget-object v11, v2, Lcom/facebook/ads/redexgen/X/As;->A06:[I

    if-eqz v11, :cond_5d

    array-length v2, v11

    if-ge v2, v10, :cond_5f

    :cond_5d
    new-array v11, v10, [I

    :cond_5f
    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/As;->A07:[I

    sget-object v3, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v3, v2

    const/16 v2, 0x1b

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x54

    if-eq v3, v2, :cond_127

    sget-object v8, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v3, "l74rmj1cvzMl"

    const/4 v2, 0x3

    aput-object v3, v8, v2

    if-eqz v12, :cond_7e

    array-length v2, v12

    if-ge v2, v10, :cond_94

    :cond_7e
    new-array v12, v10, [I

    sget-object v3, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v3, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v2, 0xc

    if-eq v3, v2, :cond_c1

    sget-object v8, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v3, "mTjJh6O10GTQKtsNTzpZkGXCEgBidJyY"

    const/4 v2, 0x5

    aput-object v3, v8, v2

    :cond_94
    :goto_94
    if-eqz v5, :cond_f4

    mul-int/lit8 v3, v10, 0x6

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0W(I)V

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Vf;->A06(J[BI)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v2, v9}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    const/4 v3, 0x0

    :goto_ac
    if-ge v3, v10, :cond_100

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v2

    aput v2, v11, v3

    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/Vf;->A0E:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0H()I

    move-result v2

    aput v2, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_ac

    :cond_c1
    sget-object v8, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v3, "gGnYbSzqov18WRGS84osGLTli7oQ4"

    const/4 v2, 0x2

    aput-object v3, v8, v2

    const-string v3, "bcZjTvBd8pDqGicoFFRFmeT3NfcxuZ"

    const/4 v2, 0x0

    aput-object v3, v8, v2

    goto :goto_94

    :cond_ce
    const/4 v10, 0x1

    sget-object v3, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v3, v3, v2

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v2, 0x46

    if-eq v3, v2, :cond_e3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_e3
    sget-object v8, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v3, "qfwCamou4xH4TsJy70kUYaPJ1paRPrQS"

    const/4 v2, 0x7

    aput-object v3, v8, v2

    const-string v3, "GMGbKrn5SK4TcHFeKaSIsaM2NwTeIDah"

    const/4 v2, 0x6

    aput-object v3, v8, v2

    goto/16 :goto_54

    :cond_f1
    const/4 v5, 0x0

    goto/16 :goto_21

    :cond_f4
    aput v9, v11, v9

    iget v8, v6, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/Ep;->A01:J

    sub-long v2, v0, v4

    long-to-int v4, v2

    sub-int/2addr v8, v4

    aput v8, v12, v9

    :cond_100
    iget-object v4, v6, Lcom/facebook/ads/redexgen/X/Ep;->A02:Lcom/facebook/ads/redexgen/X/Bl;

    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    iget-object v13, v4, Lcom/facebook/ads/redexgen/X/Bl;->A03:[B

    iget-object v2, v7, Lcom/facebook/ads/redexgen/X/XE;->A02:Lcom/facebook/ads/redexgen/X/As;

    iget-object v14, v2, Lcom/facebook/ads/redexgen/X/As;->A04:[B

    iget v15, v4, Lcom/facebook/ads/redexgen/X/Bl;->A01:I

    iget v3, v4, Lcom/facebook/ads/redexgen/X/Bl;->A02:I

    iget v2, v4, Lcom/facebook/ads/redexgen/X/Bl;->A00:I

    move/from16 v16, v3

    move/from16 v17, v2

    invoke-virtual/range {v9 .. v17}, Lcom/facebook/ads/redexgen/X/As;->A03(I[I[I[B[BIII)V

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ep;->A01:J

    sub-long/2addr v0, v2

    long-to-int v4, v0

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ep;->A01:J

    int-to-long v0, v4

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/Ep;->A01:J

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    sub-int/2addr v0, v4

    iput v0, v6, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    return-void

    :cond_127
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/Er;)V
    .registers 8

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Er;->A02:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Er;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/Er;->A04:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Er;->A04:J

    sub-long/2addr v4, v0

    long-to-int v1, v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0A:I

    div-int/2addr v1, v0

    add-int/2addr v3, v1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x78

    if-eq v1, v0, :cond_42

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "iejtrz5gn5ypfg4If5spWIciPKrb2ZMM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v2, v3, [Lcom/facebook/ads/redexgen/X/GT;

    const/4 v1, 0x0

    :goto_2e
    array-length v0, v2

    if-ge v1, v0, :cond_3c

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    aput-object v0, v2, v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Er;->A01()Lcom/facebook/ads/redexgen/X/Er;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:Lcom/facebook/ads/redexgen/X/GU;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/GU;->AEQ([Lcom/facebook/ads/redexgen/X/GT;)V

    return-void

    :cond_42
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A09(Z)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Eq;->A0H(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A08(Lcom/facebook/ads/redexgen/X/Er;)V

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0A:I

    const-wide/16 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/redexgen/X/Er;-><init>(JI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0D:Lcom/facebook/ads/redexgen/X/GU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GU;->AFy()V

    return-void
.end method


# virtual methods
.method public final A0A()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A07()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A05()I

    move-result v0

    return v0
.end method

.method public final A0C()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A06()I

    move-result v0

    return v0
.end method

.method public final A0D(JZZ)I
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Eq;->A08(JZZ)I

    move-result v0

    return v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;ZZJ)I
    .registers 16

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Lcom/facebook/ads/redexgen/X/Ep;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Eq;->A09(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;ZZLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Ep;)I

    move-result v0

    packed-switch v0, :pswitch_data_70

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_17
    const/4 v0, -0x3

    return v0

    :pswitch_19
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-nez v0, :cond_62

    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    cmp-long v0, v1, p5

    if-gez v0, :cond_43

    const/high16 v3, -0x80000000

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_64

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A0F:[Ljava/lang/String;

    const-string v1, "3oC8GcXqxYNt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Ap;->A00(I)V

    :cond_43
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/XE;->A0A()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Lcom/facebook/ads/redexgen/X/Ep;

    invoke-direct {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A07(Lcom/facebook/ads/redexgen/X/XE;Lcom/facebook/ads/redexgen/X/Ep;)V

    :cond_4e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Lcom/facebook/ads/redexgen/X/Ep;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/XE;->A09(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Lcom/facebook/ads/redexgen/X/Ep;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Ep;->A01:J

    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0B:Lcom/facebook/ads/redexgen/X/Ep;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ep;->A00:I

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A05(JLjava/nio/ByteBuffer;I)V

    :cond_62
    const/4 v0, -0x4

    return v0

    :cond_64
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_6a
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A02:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v0, -0x5

    return v0

    :pswitch_data_70
    .packed-switch -0x5
        :pswitch_6a
        :pswitch_19
        :pswitch_17
    .end packed-switch
.end method

.method public final A0F()J
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0G()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0E()Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0A()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vf;->A04(J)V

    return-void
.end method

.method public final A0I()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A09(Z)V

    return-void
.end method

.method public final A0J()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0F()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Er;

    return-void
.end method

.method public final A0K(JZZ)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Eq;->A0D(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Vf;->A04(J)V

    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/Es;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Es;

    return-void
.end method

.method public final A0M()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A0I()Z

    move-result v0

    return v0
.end method

.method public final A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    invoke-static {p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Vf;->A01(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Eq;->A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v1

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A08:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A07:Lcom/facebook/ads/redexgen/X/Es;

    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/Es;->ADI(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    :cond_1a
    return-void
.end method

.method public final AEq(Lcom/facebook/ads/redexgen/X/Bb;IZ)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Vf;->A00(I)I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Er;->A00(J)I

    move-result v0

    invoke-interface {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/Bb;->read([BII)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_22

    if-eqz p3, :cond_1c

    return v0

    :cond_1c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_22
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Vf;->A02(I)V

    return v1
.end method

.method public final AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V
    .registers 8

    :goto_0
    if-lez p2, :cond_1c

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Vf;->A00(I)I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GT;->A01:[B

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Vf;->A06:Lcom/facebook/ads/redexgen/X/Er;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Er;->A00(J)I

    move-result v0

    invoke-virtual {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    sub-int/2addr p2, v4

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Vf;->A02(I)V

    goto :goto_0

    :cond_1c
    return-void
.end method

.method public final AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V
    .registers 17

    move-wide v3, p1

    move-object v2, p0

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Vf;->A08:Z

    if-eqz v0, :cond_b

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    :cond_b
    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Vf;->A09:Z

    move v5, p3

    if-eqz v0, :cond_20

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1c

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Eq;->A0J(J)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Vf;->A09:Z

    :cond_20
    iget-wide v0, v2, Lcom/facebook/ads/redexgen/X/Vf;->A00:J

    add-long/2addr v3, v0

    iget-wide v6, v2, Lcom/facebook/ads/redexgen/X/Vf;->A01:J

    move v8, p4

    int-to-long v0, v8

    sub-long/2addr v6, v0

    int-to-long v0, p5

    sub-long/2addr v6, v0

    iget-object v2, v2, Lcom/facebook/ads/redexgen/X/Vf;->A0C:Lcom/facebook/ads/redexgen/X/Eq;

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Eq;->A0G(JIJILcom/facebook/ads/redexgen/X/Bl;)V

    return-void
.end method
