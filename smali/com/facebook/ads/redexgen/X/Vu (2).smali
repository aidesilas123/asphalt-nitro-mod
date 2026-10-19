###### Class com.facebook.ads.redexgen.X.C1431Vu (com.facebook.ads.redexgen.X.Vu)
.class public final Lcom/facebook/ads/redexgen/X/Vu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/DR;,
        Lcom/facebook/ads/redexgen/X/DQ;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:I

.field public static final A04:Lcom/facebook/ads/redexgen/X/DQ;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/DQ;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mDpfQ0Mg1qMGU0sRUyB4w0yHI9AflFxL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HrWFAZbBmLlJHBGWXoy88PVYdiXTIEfW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZQEIpFlmPj9dChjEJf3cuXBCToBvQGIn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RQPpjxLwn1F2LqLyPS6YhTLdMSPVP9VK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XPMzSAYF2Koz19PEH34p5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "swwfqTWHhic8XQtgs9vSQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6JbQXNgGm6Rlu9UTMBxnLLi5Rd7F6qFb"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jePmV9Iz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vu;->A0L()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vv;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vv;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vu;->A04:Lcom/facebook/ads/redexgen/X/DQ;

    const/16 v2, 0xa6

    const/4 v1, 0x3

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Vu;->A03:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Vu;-><init>(Lcom/facebook/ads/redexgen/X/DQ;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DQ;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    return-void
.end method

.method public static A00(I)I
    .registers 2

    if-eqz p0, :cond_5

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x2

    goto :goto_6
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hh;I)I
    .registers 9

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result p0

    :goto_6
    add-int/lit8 v0, p0, 0x1

    if-ge v0, p1, :cond_47

    aget-byte v1, v5, p0

    const/16 v0, 0xff

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_3e

    add-int/lit8 v0, p0, 0x1

    aget-byte v0, v5, v0

    if-nez v0, :cond_3e

    add-int/lit8 v6, p0, 0x2

    add-int/lit8 v4, p0, 0x1

    sub-int v0, p1, p0

    add-int/lit8 v3, v0, -0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_41

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "GmDFLtMXmPbGQOJzrAUGcq8JFdShu0kr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v5, v6, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_3e
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_47
    return p1
.end method

.method public static A02([BI)I
    .registers 3

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_b

    aget-byte v0, p0, p1

    if-nez v0, :cond_8

    return p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_b
    array-length v0, p0

    return v0
.end method

.method public static A03([BII)I
    .registers 5

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v1

    if-eqz p2, :cond_9

    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    :cond_9
    return v1

    :cond_a
    :goto_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_21

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_1a

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v0, v1, 0x1

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v1

    goto :goto_a

    :cond_21
    array-length v0, p0

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/Hh;II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vu;->A0H(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, p1, -0x1

    new-array v4, v0, [B

    add-int/lit8 v0, p1, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v8, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    const/4 p0, 0x2

    const/16 v2, 0x1ca

    const/4 v1, 0x6

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v7

    if-ne p2, p0, :cond_81

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v1, 0x3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v8, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x1da

    const/16 v1, 0x9

    const/16 v0, 0x3a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/16 v3, 0x1d0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v7

    :cond_5e
    :goto_5e
    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v8, v0, 0xff

    add-int/lit8 v1, v2, 0x2

    invoke-static {v4, v1, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v3

    sub-int v0, v3, v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4, v1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vu;->A00(I)I

    move-result v1

    add-int/2addr v1, v3

    array-length v0, v4

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0N([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;

    invoke-direct {v0, v7, v2, v8, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v0

    :cond_81
    invoke-static {v4, v8}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v2

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v8, v2, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x2f

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5e
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Hh;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;
    .registers 5

    new-array v1, p1, [B

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/Hh;IIZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v6

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    sub-int v4, v6, v2

    const/16 v3, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5, v2, v4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v10

    const-wide v3, 0xffffffffL

    cmp-long v0, v10, v3

    if-nez v0, :cond_39

    const-wide/16 v10, -0x1

    :cond_39
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v12

    cmp-long v0, v12, v3

    if-nez v0, :cond_43

    const-wide/16 v12, -0x1

    :cond_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v2, p1

    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    if-ge v0, v2, :cond_61

    move/from16 v5, p2

    move/from16 v4, p3

    move/from16 v3, p4

    move-object/from16 v0, p5

    invoke-static {v5, p0, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0B(ILcom/facebook/ads/redexgen/X/Hh;ZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_61
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v6, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;)V

    return-object v6
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/Hh;IIZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v6

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    sub-int v3, v6, v4

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    and-int/lit8 v0, v1, 0x2

    const/4 v11, 0x0

    if-eqz v0, :cond_57

    const/4 v10, 0x1

    :goto_2c
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_31

    const/4 v11, 0x1

    :cond_31
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    new-array v12, v6, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_38
    if-ge v5, v6, :cond_59

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    sub-int v1, v3, v8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v8, v1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v0, v12, v5

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_57
    const/4 v10, 0x0

    goto :goto_2c

    :cond_59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v4, p1

    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v0

    if-ge v0, v4, :cond_99

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "YQsr0udxa6AlS4ZOrNFlw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "dBU8ocTiI6WLc8wZTOIXb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move/from16 v2, p3

    move/from16 v1, p4

    move-object/from16 v0, p5

    invoke-static {p2, p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0B(ILcom/facebook/ads/redexgen/X/Hh;ZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    move-result-object v0

    if-eqz v0, :cond_5f

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_99
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array p0, v0, [Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v8, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;)V

    return-object v8
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vu;->A0H(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    new-array v0, v2, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v0, p1, -0x4

    new-array v3, v0, [B

    add-int/lit8 v0, p1, -0x4

    invoke-virtual {p0, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vu;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v3, v1, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    invoke-static {v3, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Vu;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;

    invoke-direct {v0, v4, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vu;->A0H(I)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v0, p1, -0x1

    new-array v5, v0, [B

    add-int/lit8 v0, p1, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v8, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v5, v8}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v3

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5, v8, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/Vu;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vu;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v5, v1, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    invoke-static {v5, v1, v0, v7}, Lcom/facebook/ads/redexgen/X/Vu;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Vu;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0N([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/DR;
    .registers 10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v4

    const/16 v3, 0xa

    const/4 v8, 0x0

    const/16 v2, 0xb3

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v7

    if-ge v4, v3, :cond_21

    const/16 v2, 0x1a

    const/16 v1, 0x1f

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_21
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v4

    sget v0, Lcom/facebook/ads/redexgen/X/Vu;->A03:I

    if-eq v4, v0, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x178

    const/16 v1, 0x30

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_48
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v6

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0D()I

    move-result v2

    const/4 v0, 0x2

    const/4 v5, 0x4

    if-ne v4, v0, :cond_73

    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    :goto_61
    if-eqz v0, :cond_87

    const/16 v2, 0xbd

    const/16 v1, 0x44

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_71
    const/4 v0, 0x0

    goto :goto_61

    :cond_73
    const/4 v0, 0x3

    if-ne v4, v0, :cond_97

    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_95

    const/4 v0, 0x1

    :goto_7b
    if-eqz v0, :cond_87

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    add-int/lit8 v0, v0, 0x4

    sub-int/2addr v2, v0

    :cond_87
    :goto_87
    if-ge v4, v5, :cond_93

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_93

    :goto_8d
    new-instance v0, Lcom/facebook/ads/redexgen/X/DR;

    invoke-direct {v0, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/DR;-><init>(IZI)V

    return-object v0

    :cond_93
    const/4 v3, 0x0

    goto :goto_8d

    :cond_95
    const/4 v0, 0x0

    goto :goto_7b

    :cond_97
    if-ne v4, v5, :cond_b8

    and-int/lit8 v0, v6, 0x40

    if-eqz v0, :cond_b6

    const/4 v0, 0x1

    :goto_9e
    if-eqz v0, :cond_aa

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0D()I

    move-result v1

    add-int/lit8 v0, v1, -0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    sub-int/2addr v2, v1

    :cond_aa
    and-int/lit8 v0, v6, 0x10

    if-eqz v0, :cond_b4

    const/4 v0, 0x1

    :goto_af
    if-eqz v0, :cond_87

    add-int/lit8 v2, v2, -0xa

    goto :goto_87

    :cond_b4
    const/4 v0, 0x0

    goto :goto_af

    :cond_b6
    const/4 v0, 0x0

    goto :goto_9e

    :cond_b8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x101

    const/16 v1, 0x2e

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public static A0B(ILcom/facebook/ads/redexgen/X/Hh;ZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;
    .registers 30

    move-object/from16 v11, p1

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v10

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v9

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v8

    const/4 v0, 0x3

    move/from16 v12, p0

    if-lt v12, v0, :cond_65

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v7

    :goto_17
    const/4 v1, 0x4

    move/from16 p2, p2

    if-ne v12, v1, :cond_59

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0H()I

    move-result v2

    if-nez p2, :cond_57

    and-int/lit16 v6, v2, 0xff

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v6, v1

    shr-int/lit8 v1, v2, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v6, v1

    shr-int/lit8 v1, v2, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v6, v1

    :goto_39
    if-lt v12, v0, :cond_55

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v1

    :goto_3f
    const/16 v20, 0x0

    if-nez v10, :cond_67

    if-nez v9, :cond_67

    if-nez v8, :cond_67

    if-nez v7, :cond_67

    if-nez v6, :cond_67

    if-nez v1, :cond_67

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-object v20

    :cond_55
    const/4 v1, 0x0

    goto :goto_3f

    :cond_57
    move v6, v2

    goto :goto_39

    :cond_59
    if-ne v12, v0, :cond_60

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0H()I

    move-result v6

    goto :goto_39

    :cond_60
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v6

    goto :goto_39

    :cond_65
    const/4 v7, 0x0

    goto :goto_17

    :cond_67
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v13

    const/16 v4, 0xb3

    const/16 v3, 0xa

    const/16 v2, 0x13

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v4

    if-le v5, v13, :cond_91

    const/16 v2, 0x81

    const/16 v1, 0x25

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-object v20

    :cond_91
    move-object/from16 v21, p4

    if-eqz v21, :cond_a9

    move/from16 v22, v12

    move/from16 v24, v9

    move/from16 p0, v8

    move/from16 p1, v7

    move/from16 v23, v10

    invoke-interface/range {v21 .. v26}, Lcom/facebook/ads/redexgen/X/DQ;->A5V(IIIII)Z

    move-result v2

    if-nez v2, :cond_a9

    invoke-virtual {v11, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-object v20

    :cond_a9
    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x1

    if-ne v12, v0, :cond_e1

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_df

    const/4 v13, 0x1

    :goto_b8
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_dd

    const/4 v15, 0x1

    :goto_bd
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_da

    const/16 v17, 0x1

    :goto_c3
    move/from16 v16, v13

    :cond_c5
    :goto_c5
    if-nez v16, :cond_c9

    if-eqz v15, :cond_134

    :cond_c9
    const/16 v2, 0x12f

    const/16 v1, 0x32

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-object v20

    :cond_da
    const/16 v17, 0x0

    goto :goto_c3

    :cond_dd
    const/4 v15, 0x0

    goto :goto_bd

    :cond_df
    const/4 v13, 0x0

    goto :goto_b8

    :cond_e1
    const/4 v0, 0x4

    if-ne v12, v0, :cond_c5

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_131

    const/16 v17, 0x1

    :goto_ea
    and-int/lit8 v14, v1, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x9

    if-eq v2, v0, :cond_2df

    sget-object v13, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v2, "HxLFBObUGoObUPku8sA9h7LrWEHKW34t"

    const/4 v0, 0x1

    aput-object v2, v13, v0

    if-eqz v14, :cond_12e

    const/16 v16, 0x1

    :goto_104
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_12c

    const/4 v15, 0x1

    :goto_109
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_12a

    const/4 v14, 0x1

    :goto_10e
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_128

    const/4 v13, 0x1

    :goto_113
    sget-object v1, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_2d9

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "76YFuh7tw8gcxzUEh5emTmdExIUmXPMQ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_c5

    :cond_128
    const/4 v13, 0x0

    goto :goto_113

    :cond_12a
    const/4 v14, 0x0

    goto :goto_10e

    :cond_12c
    const/4 v15, 0x0

    goto :goto_109

    :cond_12e
    const/16 v16, 0x0

    goto :goto_104

    :cond_131
    const/16 v17, 0x0

    goto :goto_ea

    :cond_134
    if-eqz v17, :cond_13b

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v11, v3}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    :cond_13b
    if-eqz v13, :cond_143

    add-int/lit8 v6, v6, -0x4

    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    :cond_143
    if-eqz v14, :cond_149

    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A01(Lcom/facebook/ads/redexgen/X/Hh;I)I

    move-result v6

    :cond_149
    const/16 v19, 0x54

    const/4 v3, 0x2

    const/16 v1, 0x58

    move/from16 v0, v19

    if-ne v10, v0, :cond_160

    if-ne v9, v1, :cond_160

    if-ne v8, v1, :cond_160

    if-eq v12, v3, :cond_15a

    if-ne v7, v1, :cond_160

    :cond_15a
    :try_start_15a
    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A0D(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    move-result-object v13

    goto/16 :goto_264

    :cond_160
    move/from16 v0, v19

    if-ne v10, v0, :cond_16e

    invoke-static {v12, v10, v9, v8, v7}, Lcom/facebook/ads/redexgen/X/Vu;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v6, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0E(Lcom/facebook/ads/redexgen/X/Hh;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    move-result-object v13

    goto/16 :goto_264

    :cond_16e
    const/16 v0, 0x57

    if-ne v10, v0, :cond_180

    if-ne v9, v1, :cond_180

    if-ne v8, v1, :cond_180

    if-eq v12, v3, :cond_17a

    if-ne v7, v1, :cond_180

    :cond_17a
    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A0F(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    move-result-object v13

    goto/16 :goto_264

    :cond_180
    if-ne v10, v0, :cond_18c

    invoke-static {v12, v10, v9, v8, v7}, Lcom/facebook/ads/redexgen/X/Vu;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v6, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0G(Lcom/facebook/ads/redexgen/X/Hh;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    move-result-object v13

    goto/16 :goto_264

    :cond_18c
    const/16 v15, 0x49

    const/16 v2, 0x50

    if-ne v10, v2, :cond_1c2

    const/16 v0, 0x52

    if-ne v9, v0, :cond_1c2

    if-ne v8, v15, :cond_1c2
    :try_end_198
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15a .. :try_end_198} :catch_2c3
    .catchall {:try_start_15a .. :try_end_198} :catchall_2d4

    const/16 v13, 0x56

    sget-object v14, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v14, v0

    const/4 v1, 0x2

    aget-object v16, v14, v1

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v14, v0, :cond_1ba

    sget-object v14, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "TpWBQOHSHz"

    const/4 v0, 0x7

    aput-object v1, v14, v0

    if-ne v7, v13, :cond_1c2

    goto :goto_1bc

    :cond_1ba
    if-ne v7, v13, :cond_1c2

    :goto_1bc
    :try_start_1bc
    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A0C(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;

    move-result-object v13

    goto/16 :goto_264

    :cond_1c2
    const/16 v0, 0x47

    const/16 v14, 0x4f

    if-ne v10, v0, :cond_1da

    const/16 v0, 0x45

    if-ne v9, v0, :cond_1da

    if-ne v8, v14, :cond_1da

    const/16 v0, 0x42

    if-eq v7, v0, :cond_1d4

    if-ne v12, v3, :cond_1da

    :cond_1d4
    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A09(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/GeobFrame;

    move-result-object v13

    goto/16 :goto_264
    :try_end_1da
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1bc .. :try_end_1da} :catch_2c3
    .catchall {:try_start_1bc .. :try_end_1da} :catchall_2d4

    :cond_1da
    const/16 v18, 0x41

    const/16 v1, 0x43

    sget-object v16, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v13, v16, v0

    const/4 v0, 0x2

    aget-object v17, v16, v0

    const/16 v0, 0x12

    move-object v13, v13

    move v0, v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move-object/from16 v13, v17

    move v0, v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v13, v16

    move v0, v0

    if-eq v13, v0, :cond_2df

    sget-object v16, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v13, "1pyFPk3tXqgthrOgLBh9Cc6ujVWwqIgx"

    const/4 v0, 0x1

    aput-object v13, v16, v0

    if-ne v12, v3, :cond_20a

    if-ne v10, v2, :cond_219

    if-ne v9, v15, :cond_219

    if-ne v8, v1, :cond_219

    goto :goto_214

    :cond_20a
    move/from16 v0, v18

    if-ne v10, v0, :cond_219

    if-ne v9, v2, :cond_219

    if-ne v8, v15, :cond_219

    if-ne v7, v1, :cond_219

    :goto_214
    :try_start_214
    invoke-static {v11, v6, v12}, Lcom/facebook/ads/redexgen/X/Vu;->A04(Lcom/facebook/ads/redexgen/X/Hh;II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ApicFrame;

    move-result-object v13

    goto :goto_264

    :cond_219
    if-ne v10, v1, :cond_22a

    if-ne v9, v14, :cond_22a

    const/16 v0, 0x4d

    if-ne v8, v0, :cond_22a

    if-eq v7, v0, :cond_225

    if-ne v12, v3, :cond_22a

    :cond_225
    invoke-static {v11, v6}, Lcom/facebook/ads/redexgen/X/Vu;->A08(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/CommentFrame;

    move-result-object v13

    goto :goto_264

    :cond_22a
    move/from16 p3, p3

    if-ne v10, v1, :cond_245

    const/16 v0, 0x48

    if-ne v9, v0, :cond_245

    move/from16 v0, v18

    if-ne v8, v0, :cond_245

    if-ne v7, v2, :cond_245

    move-object/from16 v24, v11

    move/from16 p1, v12

    move/from16 p0, v6

    move-object/from16 p4, v21

    invoke-static/range {v24 .. v29}, Lcom/facebook/ads/redexgen/X/Vu;->A06(Lcom/facebook/ads/redexgen/X/Hh;IIZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterFrame;

    move-result-object v13

    goto :goto_264

    :cond_245
    if-ne v10, v1, :cond_25c

    move/from16 v0, v19

    if-ne v9, v0, :cond_25c

    if-ne v8, v14, :cond_25c

    if-ne v7, v1, :cond_25c

    move-object/from16 v24, v11

    move/from16 p1, v12

    move/from16 p0, v6

    move-object/from16 p4, v21

    invoke-static/range {v24 .. v29}, Lcom/facebook/ads/redexgen/X/Vu;->A07(Lcom/facebook/ads/redexgen/X/Hh;IIZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/ChapterTocFrame;

    move-result-object v13

    goto :goto_264

    :cond_25c
    invoke-static {v12, v10, v9, v8, v7}, Lcom/facebook/ads/redexgen/X/Vu;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v6, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A05(Lcom/facebook/ads/redexgen/X/Hh;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/BinaryFrame;

    move-result-object v13

    :goto_264
    if-nez v13, :cond_29a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x1b

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12, v10, v9, v8, v7}, Lcom/facebook/ads/redexgen/X/Vu;->A0J(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0xc

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_214 .. :try_end_29a} :catch_2c3
    .catchall {:try_start_214 .. :try_end_29a} :catchall_2d4

    :cond_29a
    invoke-virtual {v11, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2bd

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "Dtpy20dKfpjr6GTNw3SVg8ra0l6IUEaG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "adhGTkdPtMJ1tGydAzIftpfQfU5S2oNR"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v13

    :cond_2bd
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catch_2c3
    :try_start_2c3
    const/16 v2, 0x1a8

    const/16 v1, 0x1e

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d0
    .catchall {:try_start_2c3 .. :try_end_2d0} :catchall_2d4

    invoke-virtual {v11, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-object v20

    :catchall_2d4
    move-exception v0

    invoke-virtual {v11, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    throw v0

    :cond_2d9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2df
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-array v5, p1, [B

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v3

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v3, 0x1

    array-length v0, v5

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0N([BII)[B

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v5

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Vu;->A0H(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, p1, -0x1

    new-array v2, v0, [B

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Vu;->A00(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    invoke-static {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Vu;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x161

    const/4 v1, 0x4

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/Hh;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v5, 0x0

    if-ge p1, v0, :cond_5

    return-object v5

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Vu;->A0H(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, p1, -0x1

    new-array v3, v0, [B

    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v5, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/Hh;I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v3

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Vu;->A0H(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, p1, -0x1

    new-array v6, v0, [B

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v6, v1, v3}, Lcom/facebook/ads/redexgen/X/Vu;->A03([BII)I

    move-result v0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Vu;->A00(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v6, v4}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v3

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0K([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1c6

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, v1, v5, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/Hh;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-array v5, p1, [B

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4, p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/Vu;->A02([BI)I

    move-result v3

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5, v4, v3, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;

    invoke-direct {v0, p2, v1, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static A0H(I)Ljava/lang/String;
    .registers 4

    const/16 v2, 0xa9

    const/16 v1, 0xa

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_4e

    return-object v0

    :pswitch_e
    return-object v0

    :pswitch_f
    const/16 v2, 0x165

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_19
    const/16 v2, 0x16b

    const/16 v1, 0x8

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_24
    const/16 v2, 0x173

    const/4 v1, 0x5

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_48

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "WB3CnC"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_19
        :pswitch_24
    .end packed-switch
.end method

.method public static A0I(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vu;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0J(IIIII)Ljava/lang/String;
    .registers 12

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_29

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v2, 0x6

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public static A0K([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_5

    array-length v0, p0

    if-le p2, v0, :cond_32

    :cond_5
    const/4 p2, 0x0

    sget-object p1, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object p0, p1, v0

    const/4 v0, 0x5

    aget-object v0, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p0, v0, :cond_1e

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object p1, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string p0, "r4Qi0WBzOYfLLA4UC9s9DAK76ksjAQPp"

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "c5jPrSHyFK7RFs6Pjjym9ojkSMFCl1O5"

    const/4 v0, 0x6

    aput-object p0, p1, v0

    const/4 p0, 0x0

    const/16 v0, 0x79

    invoke-static {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_32
    sub-int/2addr p2, p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public static A0L()V
    .registers 1

    const/16 v0, 0x1e3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vu;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x4et
        0x8t
        0x4et
        0x8t
        0x4et
        0x8t
        0x2ct
        0x6at
        0x2ct
        0x6at
        0x2ct
        0x6at
        0x2ct
        0x6at
        0x59t
        0x55t
        0x13t
        0x7t
        0x14t
        0x18t
        0x10t
        0x26t
        0x1ct
        0xft
        0x10t
        0x48t
        0x5bt
        0x7et
        0x6bt
        0x7et
        0x3ft
        0x6bt
        0x70t
        0x70t
        0x3ft
        0x6ct
        0x77t
        0x70t
        0x6dt
        0x6bt
        0x3ft
        0x6bt
        0x70t
        0x3ft
        0x7dt
        0x7at
        0x3ft
        0x7et
        0x71t
        0x3ft
        0x56t
        0x5bt
        0x2ct
        0x3ft
        0x6bt
        0x7et
        0x78t
        0x16t
        0x31t
        0x39t
        0x3ct
        0x35t
        0x34t
        0x70t
        0x24t
        0x3ft
        0x70t
        0x34t
        0x35t
        0x33t
        0x3ft
        0x34t
        0x35t
        0x70t
        0x36t
        0x22t
        0x31t
        0x3dt
        0x35t
        0x6at
        0x70t
        0x39t
        0x34t
        0x6dt
        0x77t
        0x50t
        0x58t
        0x5dt
        0x54t
        0x55t
        0x11t
        0x45t
        0x5et
        0x11t
        0x47t
        0x50t
        0x5dt
        0x58t
        0x55t
        0x50t
        0x45t
        0x54t
        0x11t
        0x78t
        0x75t
        0x2t
        0x11t
        0x45t
        0x50t
        0x56t
        0x11t
        0x46t
        0x58t
        0x45t
        0x59t
        0x11t
        0x5ct
        0x50t
        0x5bt
        0x5et
        0x43t
        0x67t
        0x54t
        0x43t
        0x42t
        0x58t
        0x5et
        0x5ft
        0xct
        0x4t
        0x30t
        0x23t
        0x2ft
        0x27t
        0x62t
        0x31t
        0x2bt
        0x38t
        0x27t
        0x62t
        0x27t
        0x3at
        0x21t
        0x27t
        0x27t
        0x26t
        0x31t
        0x62t
        0x30t
        0x27t
        0x2ft
        0x23t
        0x2bt
        0x2ct
        0x2bt
        0x2ct
        0x25t
        0x62t
        0x36t
        0x23t
        0x25t
        0x62t
        0x26t
        0x23t
        0x36t
        0x23t
        0x47t
        0x4at
        0x3dt
        0x6bt
        0x71t
        0x6dt
        0xft
        0x1at
        0x1at
        0x17t
        0x1bt
        0xft
        0x13t
        0x58t
        0x75t
        0x22t
        0x55t
        0x74t
        0x72t
        0x7et
        0x75t
        0x74t
        0x63t
        0x61t
        0x59t
        0x5bt
        0x42t
        0x42t
        0x57t
        0x56t
        0x12t
        0x7bt
        0x76t
        0x1t
        0x12t
        0x46t
        0x53t
        0x55t
        0x12t
        0x45t
        0x5bt
        0x46t
        0x5at
        0x12t
        0x5ft
        0x53t
        0x58t
        0x5dt
        0x40t
        0x64t
        0x57t
        0x40t
        0x41t
        0x5bt
        0x5dt
        0x5ct
        0xft
        0x0t
        0x12t
        0x53t
        0x5ct
        0x56t
        0x12t
        0x47t
        0x5ct
        0x56t
        0x57t
        0x54t
        0x5bt
        0x5ct
        0x57t
        0x56t
        0x12t
        0x51t
        0x5dt
        0x5ft
        0x42t
        0x40t
        0x57t
        0x41t
        0x41t
        0x5bt
        0x5dt
        0x5ct
        0x12t
        0x41t
        0x51t
        0x5at
        0x57t
        0x5ft
        0x57t
        0x74t
        0x4ct
        0x4et
        0x57t
        0x57t
        0x42t
        0x43t
        0x7t
        0x6et
        0x63t
        0x14t
        0x7t
        0x53t
        0x46t
        0x40t
        0x7t
        0x50t
        0x4et
        0x53t
        0x4ft
        0x7t
        0x52t
        0x49t
        0x54t
        0x52t
        0x57t
        0x57t
        0x48t
        0x55t
        0x53t
        0x42t
        0x43t
        0x7t
        0x4at
        0x46t
        0x4dt
        0x48t
        0x55t
        0x71t
        0x42t
        0x55t
        0x54t
        0x4et
        0x48t
        0x49t
        0x1at
        0x1ct
        0x24t
        0x26t
        0x3ft
        0x3ft
        0x26t
        0x21t
        0x28t
        0x6ft
        0x3at
        0x21t
        0x3ct
        0x3at
        0x3ft
        0x3ft
        0x20t
        0x3dt
        0x3bt
        0x2at
        0x2bt
        0x6ft
        0x2ct
        0x20t
        0x22t
        0x3ft
        0x3dt
        0x2at
        0x3ct
        0x3ct
        0x2at
        0x2bt
        0x6ft
        0x20t
        0x3dt
        0x6ft
        0x2at
        0x21t
        0x2ct
        0x3dt
        0x36t
        0x3ft
        0x3bt
        0x2at
        0x2bt
        0x6ft
        0x29t
        0x3dt
        0x2et
        0x22t
        0x2at
        0x3et
        0x32t
        0x32t
        0x32t
        0x1ft
        0x1et
        0xct
        0x67t
        0x7bt
        0x7ct
        0x3et
        0x3ft
        0x2dt
        0x46t
        0x5at
        0x5dt
        0x29t
        0x2et
        0x36t
        0x37t
        0x25t
        0x4et
        0x5bt
        0x44t
        0x7ft
        0x74t
        0x69t
        0x61t
        0x74t
        0x72t
        0x65t
        0x74t
        0x75t
        0x31t
        0x77t
        0x78t
        0x63t
        0x62t
        0x65t
        0x31t
        0x65t
        0x79t
        0x63t
        0x74t
        0x74t
        0x31t
        0x73t
        0x68t
        0x65t
        0x74t
        0x62t
        0x31t
        0x7et
        0x77t
        0x31t
        0x58t
        0x55t
        0x22t
        0x31t
        0x65t
        0x70t
        0x76t
        0x31t
        0x79t
        0x74t
        0x70t
        0x75t
        0x74t
        0x63t
        0x2bt
        0x31t
        0x13t
        0x28t
        0x35t
        0x33t
        0x36t
        0x36t
        0x29t
        0x34t
        0x32t
        0x23t
        0x22t
        0x66t
        0x25t
        0x2et
        0x27t
        0x34t
        0x27t
        0x25t
        0x32t
        0x23t
        0x34t
        0x66t
        0x23t
        0x28t
        0x25t
        0x29t
        0x22t
        0x2ft
        0x28t
        0x21t
        0x61t
        0x6et
        0x6et
        0x6et
        0x46t
        0x42t
        0x4et
        0x48t
        0x4at
        0x0t
        0x15t
        0x11t
        0x1dt
        0x1bt
        0x19t
        0x53t
        0x16t
        0xct
        0x19t
        0x1bt
        0x51t
        0x55t
        0x59t
        0x5ft
        0x5dt
        0x17t
        0x52t
        0x48t
        0x5ft
    .end array-data
.end method

.method public static A0M(Lcom/facebook/ads/redexgen/X/Hh;IIZ)Z
    .registers 20

    move-object/from16 v6, p0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v5

    :goto_6
    :try_start_6
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    const/16 p0, 0x1

    move/from16 v1, p2

    if-lt v0, v1, :cond_fb

    const/4 v11, 0x3

    move/from16 v12, p1

    if-lt v12, v11, :cond_22
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_ff

    :try_start_15
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v10

    goto :goto_2c

    :cond_22
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v0

    int-to-long v3, v0

    const/4 v10, 0x0

    :goto_2c
    const-wide/16 v8, 0x0

    if-nez v1, :cond_3a

    cmp-long v0, v3, v8

    if-nez v0, :cond_3a

    if-nez v10, :cond_3a
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_101

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return p0

    :cond_3a
    const/4 v7, 0x4

    const/4 v15, 0x0

    if-ne v12, v7, :cond_8d

    if-nez p3, :cond_8d

    const-wide/32 v1, 0x808080

    and-long/2addr v1, v3

    cmp-long v0, v1, v8

    if-eqz v0, :cond_4c

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return v15

    :cond_4c
    const-wide/16 v13, 0xff

    and-long v8, v3, v13

    const/16 v0, 0x8

    shr-long v1, v3, v0

    and-long/2addr v1, v13

    const/4 v0, 0x7

    shl-long/2addr v1, v0

    or-long/2addr v8, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_70

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_70
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "WW8harr0n1WVcE671SufvW5i3HFI8G3E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "cs8JhXohJ41Zu2keAfctBKv0IiLyHEBA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x10

    shr-long v1, v3, v0

    and-long/2addr v1, v13

    const/16 v0, 0xe

    shl-long/2addr v1, v0

    or-long/2addr v8, v1

    const/16 v0, 0x18

    shr-long/2addr v3, v0

    and-long/2addr v3, v13

    const/16 v0, 0x15

    shl-long/2addr v3, v0

    or-long/2addr v3, v8

    :cond_8d
    const/4 v8, 0x0

    const/4 v9, 0x0

    if-ne v12, v7, :cond_d4

    and-int/lit8 v0, v10, 0x40

    if-eqz v0, :cond_d2

    const/4 v8, 0x1

    :goto_96
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_cf

    :goto_9a
    move/from16 v9, p0

    :cond_9c
    :goto_9c
    const/4 v7, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c0

    if-eqz v8, :cond_b3

    :goto_b1
    add-int/lit8 v7, v7, 0x1

    :cond_b3
    if-eqz v9, :cond_b7

    add-int/lit8 v7, v7, 0x4

    :cond_b7
    int-to-long v1, v7

    cmp-long v0, v3, v1

    if-gez v0, :cond_e7

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return v15

    :cond_c0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vu;->A02:[Ljava/lang/String;

    const-string v1, "otGI0hsmNkIa4sbMlKQFq5zev1M8Vgvr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "hsxwZKJ37TLGlj6U8xTCexdOCMrqimac"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v8, :cond_b3

    goto :goto_b1

    :cond_cf
    const/16 p0, 0x0

    goto :goto_9a

    :cond_d2
    const/4 v8, 0x0

    goto :goto_96

    :cond_d4
    if-ne v12, v11, :cond_9c

    and-int/lit8 v0, v10, 0x20

    if-eqz v0, :cond_e5

    const/4 v8, 0x1

    :goto_db
    and-int/lit16 v0, v10, 0x80

    if-eqz v0, :cond_e2

    :goto_df
    move/from16 v9, p0

    goto :goto_9c

    :cond_e2
    const/16 p0, 0x0

    goto :goto_df

    :cond_e5
    const/4 v8, 0x0

    goto :goto_db

    :cond_e7
    :try_start_e7
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    int-to-long v1, v0

    cmp-long v0, v1, v3

    if-gez v0, :cond_f1

    goto :goto_f7

    :cond_f1
    long-to-int v0, v3

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    goto/16 :goto_6
    :try_end_f7
    .catchall {:try_start_e7 .. :try_end_f7} :catchall_101

    :goto_f7
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return v15

    :cond_fb
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return p0

    :catchall_ff
    move-exception v0

    goto :goto_102

    :catchall_101
    move-exception v0

    :goto_102
    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    throw v0
.end method

.method public static A0N([BII)[B
    .registers 3

    if-gt p2, p1, :cond_6

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_6
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A0O([BI)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    .registers 11

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([BI)V

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Vu;->A0A(Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/DR;

    move-result-object v7

    const/4 v6, 0x0

    if-nez v7, :cond_12

    return-object v6

    :cond_12
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A00(Lcom/facebook/ads/redexgen/X/DR;)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_65

    const/4 v5, 0x6

    :goto_1e
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A01(Lcom/facebook/ads/redexgen/X/DR;)I

    move-result v1

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A02(Lcom/facebook/ads/redexgen/X/DR;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A01(Lcom/facebook/ads/redexgen/X/DR;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A01(Lcom/facebook/ads/redexgen/X/Hh;I)I

    move-result v1

    :cond_30
    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0X(I)V

    const/4 v4, 0x0

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A00(Lcom/facebook/ads/redexgen/X/DR;)I

    move-result v1

    const/4 v0, 0x0

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0M(Lcom/facebook/ads/redexgen/X/Hh;IIZ)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A00(Lcom/facebook/ads/redexgen/X/DR;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6e

    const/4 v0, 0x1

    invoke-static {v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0M(Lcom/facebook/ads/redexgen/X/Hh;IIZ)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v4, 0x1

    :cond_4f
    :goto_4f
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lt v0, v5, :cond_68

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A00(Lcom/facebook/ads/redexgen/X/DR;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vu;->A00:Lcom/facebook/ads/redexgen/X/DQ;

    invoke-static {v1, v3, v4, v5, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0B(ILcom/facebook/ads/redexgen/X/Hh;ZILcom/facebook/ads/redexgen/X/DQ;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/id3/Id3Frame;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_65
    const/16 v5, 0xa

    goto :goto_1e

    :cond_68
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x54

    const/16 v1, 0x2d

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/DR;->A00(Lcom/facebook/ads/redexgen/X/DR;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb3

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method public final A4x(Lcom/facebook/ads/redexgen/X/D1;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;
    .registers 4

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/XE;->A01:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vu;->A0O([BI)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method
