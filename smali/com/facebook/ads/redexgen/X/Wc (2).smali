###### Class com.facebook.ads.redexgen.X.C1438Wc (com.facebook.ads.redexgen.X.Wc)
.class public final Lcom/facebook/ads/redexgen/X/Wc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ba;
.implements Lcom/facebook/ads/redexgen/X/Bj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/CG;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Mp4Extractor$State;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Mp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0J:[B

.field public static A0K:[Ljava/lang/String;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/Bd;

.field public static final A0M:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:Lcom/facebook/ads/redexgen/X/Bc;

.field public A0A:Lcom/facebook/ads/redexgen/X/Hh;

.field public A0B:Z

.field public A0C:[Lcom/facebook/ads/redexgen/X/CG;

.field public A0D:[[J

.field public final A0E:I

.field public final A0F:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0I:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/Wk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NMENm2VVY4CjFU7qkzTmTxviYk7AnS7Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JBVFfjWytxpjUnZZ6lInsU7tzfFzOPaX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "YaevPinMBRqhVFzNm59vwI8bFO4cI8AD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "52TqclTutshaaFkrwJ4nyJTeA2xWvRpu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JGseDZtum4mqdbq3nSxMUnsGXrSMUYmk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xuKwDkc3QqvJvTm3i1k9vAbPWWVSjov2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2GdyUNwnHd6eSNq3THJOdF5Wjs3u7UdX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "VVA8bJ0ju0kVaqoWpNH4VPWsYewebzZE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wc;->A07()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wd;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wd;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A0L:Lcom/facebook/ads/redexgen/X/Bd;

    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Wc;->A0M:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0E:I

    const/16 v1, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hd;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0H:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A06:I

    return-void
.end method

.method private A00(J)I
    .registers 22

    move-object/from16 v7, p0

    const-wide v17, 0x7fffffffffffffffL

    const/4 v6, 0x1

    const/16 v16, -0x1

    const-wide v14, 0x7fffffffffffffffL

    const-wide v12, 0x7fffffffffffffffL

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v5, 0x0

    :goto_17
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Wc;->A0C:[Lcom/facebook/ads/redexgen/X/CG;

    array-length v0, v1

    if-ge v5, v0, :cond_7f

    aget-object v1, v1, v5

    iget v3, v1, Lcom/facebook/ads/redexgen/X/CG;->A00:I

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CP;->A01:I

    if-ne v3, v0, :cond_29

    :cond_26
    :goto_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_29
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CP;->A06:[J

    aget-wide v8, v0, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_79

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "SNUxNBsUQVazn7VwiZNUPsjETt3vlrb9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Wc;->A0D:[[J

    aget-object v0, v0, v5

    aget-wide v3, v0, v3

    sub-long v8, v8, p1

    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-ltz v0, :cond_5e

    const-wide/32 v1, 0x40000

    cmp-long v0, v8, v1

    if-ltz v0, :cond_77

    :cond_5e
    const/4 v1, 0x1

    :goto_5f
    if-nez v1, :cond_63

    if-nez v6, :cond_69

    :cond_63
    if-ne v1, v6, :cond_6f

    cmp-long v0, v8, v17

    if-gez v0, :cond_6f

    :cond_69
    move v6, v1

    move-wide/from16 v17, v8

    move/from16 v16, v5

    move-wide v14, v3

    :cond_6f
    cmp-long v0, v3, v12

    if-gez v0, :cond_26

    move-wide v12, v3

    move v11, v1

    move v10, v5

    goto :goto_26

    :cond_77
    const/4 v1, 0x0

    goto :goto_5f

    :cond_79
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7f
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v12, v1

    if-eqz v0, :cond_92

    if-eqz v11, :cond_92

    const-wide/32 v1, 0xa00000

    add-long/2addr v1, v12

    cmp-long v0, v14, v1

    if-gez v0, :cond_93

    :cond_92
    :goto_92
    return v16

    :cond_93
    move/from16 v16, v10

    goto :goto_92
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v10, p1

    invoke-interface {v10}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v4

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A06:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/redexgen/X/Wc;->A00(J)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A06:I

    if-ne v0, v1, :cond_16

    return v1

    :cond_16
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0C:[Lcom/facebook/ads/redexgen/X/CG;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A06:I

    aget-object v2, v1, v0

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/CG;->A01:Lcom/facebook/ads/redexgen/X/Bm;

    iget v9, v2, Lcom/facebook/ads/redexgen/X/CG;->A00:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CP;->A06:[J

    aget-wide v6, v0, v9

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CP;->A05:[I

    aget v8, v0, v9

    sub-long v0, v6, v4

    iget v4, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    const-wide/16 v11, 0x0

    const/4 v5, 0x1

    cmp-long v4, v0, v11

    if-ltz v4, :cond_40

    const-wide/32 v11, 0x40000

    cmp-long v4, v0, v11

    if-ltz v4, :cond_46

    :cond_40
    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    const/4 v0, 0x1

    return v0

    :cond_46
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/CG;->A02:Lcom/facebook/ads/redexgen/X/CM;

    iget v4, v4, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    if-ne v4, v5, :cond_51

    const-wide/16 v6, 0x8

    add-long/2addr v0, v6

    add-int/lit8 v8, v8, -0x8

    :cond_51
    long-to-int v4, v0

    invoke-interface {v10, v4}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CG;->A02:Lcom/facebook/ads/redexgen/X/CM;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v4, v4, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14c

    sget-object v4, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "Kr0RNkXRcq3MKFcdyeDViEL730qvS1Or"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "dsHpYadjIesMKkl8nKWo5Xy2zI1EHMvq"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const/4 v4, 0x0

    if-eqz v6, :cond_cf

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    aput-byte v4, v1, v4

    aput-byte v4, v1, v5

    const/4 v0, 0x2

    aput-byte v4, v1, v0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CG;->A02:Lcom/facebook/ads/redexgen/X/CM;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CG;->A02:Lcom/facebook/ads/redexgen/X/CM;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    rsub-int/lit8 v4, v0, 0x4

    :goto_90
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    if-ge v0, v8, :cond_e7

    iget v1, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    if-nez v1, :cond_bf

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {v10, v0, v4, v5}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0G:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0H()I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0H:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A0H:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v1, 0x4

    invoke-interface {v13, v0, v1}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    add-int/2addr v8, v4

    goto :goto_90

    :cond_bf
    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->AEq(Lcom/facebook/ads/redexgen/X/Bb;IZ)I

    move-result v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    goto :goto_90

    :cond_cf
    :goto_cf
    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    if-ge v0, v8, :cond_e5

    sub-int v1, v8, v0

    const/4 v0, 0x0

    invoke-interface {v13, v10, v1, v0}, Lcom/facebook/ads/redexgen/X/Bm;->AEq(Lcom/facebook/ads/redexgen/X/Bb;IZ)I

    move-result v1

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    add-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    sub-int/2addr v0, v1

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    goto :goto_cf

    :cond_e5
    const/4 v0, 0x0

    goto :goto_e8

    :cond_e7
    const/4 v0, 0x0

    :goto_e8
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    sget-object v5, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v4, v5, v1

    const/4 v1, 0x1

    aget-object v5, v5, v1

    const/16 v1, 0xb

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v4, v1, :cond_126

    sget-object v5, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v4, "rOKgrdqhHdXOkXubOIefZGVtdh7cvyNY"

    const/4 v1, 0x6

    aput-object v4, v5, v1

    aget-wide v14, v6, v9

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/CP;->A04:[I

    aget v16, v1, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v8

    invoke-interface/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    iget v4, v2, Lcom/facebook/ads/redexgen/X/CG;->A00:I

    const/4 v1, 0x0

    add-int/2addr v4, v1

    iput v4, v2, Lcom/facebook/ads/redexgen/X/CG;->A00:I

    const/4 v1, -0x1

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Wc;->A06:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    return v0

    :cond_126
    sget-object v5, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v4, "wHchi0wLq1ErSeSpKTFcZRDvkUCQV0RS"

    const/4 v1, 0x6

    aput-object v4, v5, v1

    aget-wide v14, v6, v9

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/CP;->A04:[I

    aget v16, v1, v9

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v17, v8

    invoke-interface/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    iget v4, v2, Lcom/facebook/ads/redexgen/X/CG;->A00:I

    const/4 v1, 0x1

    add-int/2addr v4, v1

    iput v4, v2, Lcom/facebook/ads/redexgen/X/CG;->A00:I

    const/4 v1, -0x1

    iput v1, v3, Lcom/facebook/ads/redexgen/X/Wc;->A06:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    iput v0, v3, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    return v0

    :cond_14c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/CP;J)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CP;->A00(J)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/CP;->A01(J)I

    move-result v1

    :cond_b
    return v1
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/CP;JJ)J
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wc;->A02(Lcom/facebook/ads/redexgen/X/CP;J)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_8

    return-wide p3

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CP;->A06:[J

    aget-wide v0, v0, v1

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_2c

    sget-object p0, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "p3vbyKglgBhvg6ga7RihuDYjPakbSwaT"

    const/4 v0, 0x5

    aput-object v1, p0, v0

    const-string v1, "aiiDKqFmbgCXZZv8uVJN0mXFbRvDRlE6"

    const/4 v0, 0x3

    aput-object v1, p0, v0

    return-wide p1

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A04(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0J:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Wk;Lcom/facebook/ads/redexgen/X/Be;Z)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wk;",
            "Lcom/facebook/ads/redexgen/X/Be;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/CP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_6
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wk;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_54

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Wk;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Wk;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/C1;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1M:I

    if-eq v1, v0, :cond_1f

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1f
    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0o:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A07(I)Lcom/facebook/ads/redexgen/X/Wj;

    move-result-object v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    iget-boolean v11, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0B:Z

    move v10, p3

    invoke-static/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/C6;->A0C(Lcom/facebook/ads/redexgen/X/Wk;Lcom/facebook/ads/redexgen/X/Wj;JLcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/CM;

    move-result-object v4

    if-nez v4, :cond_35

    goto :goto_1c

    :cond_35
    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0e:I

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06(I)Lcom/facebook/ads/redexgen/X/Wk;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0i:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06(I)Lcom/facebook/ads/redexgen/X/Wk;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A17:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A06(I)Lcom/facebook/ads/redexgen/X/Wk;

    move-result-object v0

    invoke-static {v4, v0, p2}, Lcom/facebook/ads/redexgen/X/C6;->A0E(Lcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/Wk;Lcom/facebook/ads/redexgen/X/Be;)Lcom/facebook/ads/redexgen/X/CP;

    move-result-object v1

    iget v0, v1, Lcom/facebook/ads/redexgen/X/CP;->A01:I

    if-nez v0, :cond_50

    goto :goto_1c

    :cond_50
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_54
    return-object v3
.end method

.method private A06()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    return-void
.end method

.method public static A07()V
    .registers 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Wc;->A0J:[B

    return-void

    :array_a
    .array-data 1
        0x6bt
        0x5et
        0x45t
        0x47t
        0xat
        0x59t
        0x43t
        0x50t
        0x4ft
        0xat
        0x46t
        0x4ft
        0x59t
        0x59t
        0xat
        0x5et
        0x42t
        0x4bt
        0x44t
        0xat
        0x42t
        0x4ft
        0x4bt
        0x4et
        0x4ft
        0x58t
        0xat
        0x46t
        0x4ft
        0x44t
        0x4dt
        0x5et
        0x42t
        0xat
        0x2t
        0x5ft
        0x44t
        0x59t
        0x5ft
        0x5at
        0x5at
        0x45t
        0x58t
        0x5et
        0x4ft
        0x4et
        0x3t
        0x4t
        0x68t
        0x6dt
        0x39t
        0x39t
    .end array-data
.end method

.method private A08(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_67

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "xKK31fned0mjTVppOAxzoNj9viNrlryO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3HkC7zoZl6jjTlZPcBHC3lXiUTtQlSXh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v4, :cond_5f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wk;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Wk;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_5f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Wk;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/C1;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0k:I

    if-ne v1, v0, :cond_4b

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Wc;->A0A(Lcom/facebook/ads/redexgen/X/Wk;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    goto :goto_0

    :cond_4b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wk;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Wk;->A08(Lcom/facebook/ads/redexgen/X/Wk;)V

    goto :goto_0

    :cond_5f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    if-eq v0, v3, :cond_66

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;->A06()V

    :cond_66
    return-void

    :cond_67
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(J)V
    .registers 10

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0C:[Lcom/facebook/ads/redexgen/X/CG;

    array-length v4, v5

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_3b

    aget-object v6, v5, v3

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/CP;->A00(J)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_15

    invoke-virtual {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/CP;->A01(J)I

    move-result v1

    :cond_15
    iput v1, v6, Lcom/facebook/ads/redexgen/X/CG;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x62

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "MNnvCsSYuz9FkO9KQczdYnABN7zTLwyu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "oflUn1lXrJVPIzwz3GYNJmaWxDOTuoWv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Wk;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    move-object/from16 v6, p0

    const/4 v12, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    new-instance v9, Lcom/facebook/ads/redexgen/X/Be;

    invoke-direct {v9}, Lcom/facebook/ads/redexgen/X/Be;-><init>()V

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1Q:I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A07(I)Lcom/facebook/ads/redexgen/X/Wj;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/Wc;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/C6;->A0F(Lcom/facebook/ads/redexgen/X/Wj;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;

    move-result-object v11

    if-eqz v11, :cond_28

    invoke-virtual {v9, v11}, Lcom/facebook/ads/redexgen/X/Be;->A05(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Z

    :cond_28
    iget v0, v6, Lcom/facebook/ads/redexgen/X/Wc;->A0E:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    :try_start_31
    invoke-direct {v6, v2, v9, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A05(Lcom/facebook/ads/redexgen/X/Wk;Lcom/facebook/ads/redexgen/X/Be;Z)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_3f
    :try_end_36
    .catch Lcom/facebook/ads/redexgen/X/Wg; {:try_start_31 .. :try_end_36} :catch_36

    :catch_36
    new-instance v9, Lcom/facebook/ads/redexgen/X/Be;

    invoke-direct {v9}, Lcom/facebook/ads/redexgen/X/Be;-><init>()V

    invoke-direct {v6, v2, v9, v1}, Lcom/facebook/ads/redexgen/X/Wc;->A05(Lcom/facebook/ads/redexgen/X/Wk;Lcom/facebook/ads/redexgen/X/Be;Z)Ljava/util/ArrayList;

    move-result-object v8

    :goto_3f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_44
    if-ge v5, v7, :cond_a9

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/facebook/ads/redexgen/X/CP;

    iget-object v13, v15, Lcom/facebook/ads/redexgen/X/CP;->A03:Lcom/facebook/ads/redexgen/X/CM;

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Wc;->A09:Lcom/facebook/ads/redexgen/X/Bc;

    iget v0, v13, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    invoke-interface {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/CG;

    invoke-direct {v2, v13, v15, v0}, Lcom/facebook/ads/redexgen/X/CG;-><init>(Lcom/facebook/ads/redexgen/X/CM;Lcom/facebook/ads/redexgen/X/CP;Lcom/facebook/ads/redexgen/X/Bm;)V

    iget v0, v15, Lcom/facebook/ads/redexgen/X/CP;->A00:I

    add-int/lit8 v1, v0, 0x1e

    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/CM;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    iget v14, v13, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    const/4 v0, 0x1

    if-ne v14, v0, :cond_7e

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Be;->A03()Z

    move-result v0

    if-eqz v0, :cond_78

    iget v14, v9, Lcom/facebook/ads/redexgen/X/Be;->A00:I

    iget v0, v9, Lcom/facebook/ads/redexgen/X/Be;->A01:I

    invoke-virtual {v1, v14, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G(II)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    :cond_78
    if-eqz v11, :cond_7e

    invoke-virtual {v1, v11}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0J(Lcom/facebook/ads/internal/exoplayer2/thirdparty/metadata/Metadata;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    :cond_7e
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/CG;->A01:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/CM;->A04:J

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v14, v0, v16

    if-eqz v14, :cond_a6

    iget-wide v0, v13, Lcom/facebook/ads/redexgen/X/CM;->A04:J

    :goto_90
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget v1, v13, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_a0

    const/4 v0, -0x1

    if-ne v12, v0, :cond_a0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    :cond_a0
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    :cond_a6
    iget-wide v0, v15, Lcom/facebook/ads/redexgen/X/CP;->A02:J

    goto :goto_90

    :cond_a9
    iput v12, v6, Lcom/facebook/ads/redexgen/X/Wc;->A02:I

    iput-wide v3, v6, Lcom/facebook/ads/redexgen/X/Wc;->A08:J

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/CG;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/CG;

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/Wc;->A0C:[Lcom/facebook/ads/redexgen/X/CG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wc;->A0G([Lcom/facebook/ads/redexgen/X/CG;)[[J

    move-result-object v0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/Wc;->A0D:[[J

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Wc;->A09:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bc;->A5T()V

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Wc;->A09:Lcom/facebook/ads/redexgen/X/Bc;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/Bc;->AEx(Lcom/facebook/ads/redexgen/X/Bj;)V

    return-void
.end method

.method public static A0B(I)Z
    .registers 2

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0k:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1M:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0e:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0i:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A17:I

    if-eq p0, v0, :cond_18

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0O:I

    if-ne p0, v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static A0C(I)Z
    .registers 5

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0d:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0o:I

    if-eq p0, v0, :cond_7a

    sget v3, Lcom/facebook/ads/redexgen/X/C1;->A0W:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_88

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "Lbfp0NvNFR61AEm901fhAiQEZdUAojSN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1B:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1E:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1C:I

    if-eq p0, v0, :cond_7a

    sget v3, Lcom/facebook/ads/redexgen/X/C1;->A0D:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7e

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "AcWpjtb96ZMDu8ZbPmw7y3S9ldwHNTMG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "liNDCAzQcSMqwn5YpITrjlM20opaDBZf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_7a

    :goto_56
    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0P:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1A:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1D:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1F:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A18:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0C:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1K:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0V:I

    if-eq p0, v0, :cond_7a

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A1Q:I

    if-ne p0, v0, :cond_7c

    :cond_7a
    const/4 v0, 0x1

    :goto_7b
    return v0

    :cond_7c
    const/4 v0, 0x0

    goto :goto_7b

    :cond_7e
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "Et4fiiNPrE1ktHaAFcacRxoSMiMckR7G"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_7a

    goto :goto_56

    :cond_88
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {p1, v0, v4, v6, v5}, Lcom/facebook/ads/redexgen/X/Bb;->AEE([BIIZ)Z

    move-result v0

    if-nez v0, :cond_13

    return v4

    :cond_13
    iput v6, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0M()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A01:I

    :cond_2a
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_c0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    :cond_48
    :goto_48
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_148

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wc;->A0B(I)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    add-long/2addr v3, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    int-to-long v0, v0

    sub-long/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wk;

    invoke-direct {v0, v1, v3, v4}, Lcom/facebook/ads/redexgen/X/Wk;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    int-to-long v1, v0

    cmp-long v0, v6, v1

    if-nez v0, :cond_7d

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/Wc;->A08(J)V

    :goto_7c
    return v5

    :cond_7d
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;->A06()V

    goto :goto_7c

    :cond_81
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wc;->A0C(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    if-ne v0, v6, :cond_b8

    const/4 v0, 0x1

    :goto_8e
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v0, v1, v7

    if-gtz v0, :cond_b6

    const/4 v0, 0x1

    :goto_9b
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0F:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-static {v1, v4, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    goto :goto_7c

    :cond_b6
    const/4 v0, 0x0

    goto :goto_9b

    :cond_b8
    const/4 v0, 0x0

    goto :goto_8e

    :cond_ba
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    iput v5, p0, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    goto :goto_7c

    :cond_c0
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_48

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7B()J

    move-result-wide v2

    const-wide/16 v9, -0x1

    cmp-long v0, v2, v9

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_108

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_f8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f8
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "Y6YGZv93ZuaTG8VKRMqoKTcHxa4CyU5s"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "FFKbnBThmWx8ffVkKuWdFuDu950VBi9q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Wk;

    iget-wide v2, v3, Lcom/facebook/ads/redexgen/X/Wk;->A00:J

    :cond_108
    cmp-long v8, v2, v9

    sget-object v7, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v7, v0

    const/4 v0, 0x1

    aget-object v7, v7, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_139

    sget-object v7, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "ugTmpqu3zmSn1kJoBPr5aOxqvcpaMzJE"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const-string v1, "H3dhpZSJ1Chdl4exfdGGuKA1AJd0x5s1"

    const/4 v0, 0x4

    aput-object v1, v7, v0

    if-eqz v8, :cond_48

    :goto_12c
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    goto/16 :goto_48

    :cond_139
    sget-object v7, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "kSEId9swLLOilCfe7rS6ohoMdmP2xe9n"

    const/4 v0, 0x5

    aput-object v1, v7, v0

    const-string v1, "aRADAydnlpBl2XluL5U3tUuHw5s08YEm"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    if-eqz v8, :cond_48

    goto :goto_12c

    :cond_148
    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/Wc;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    int-to-long v0, v0

    sub-long/2addr v4, v0

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v2

    add-long/2addr v2, v4

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    if-eqz v0, :cond_51

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    long-to-int v0, v4

    invoke-interface {p1, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->readFully([BII)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/C1;->A0V:I

    if-ne v1, v0, :cond_34

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wc;->A0F(Lcom/facebook/ads/redexgen/X/Hh;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0B:Z

    :cond_26
    :goto_26
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/Wc;->A08(J)V

    if-eqz v8, :cond_32

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    const/4 v0, 0x2

    if-eq v1, v0, :cond_32

    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31

    :cond_34
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/Wk;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Wc;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Wj;

    invoke-direct {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Wj;-><init>(ILcom/facebook/ads/redexgen/X/Hh;)V

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Wk;->A09(Lcom/facebook/ads/redexgen/X/Wj;)V

    goto :goto_26

    :cond_51
    const-wide/32 v6, 0x40000

    cmp-long v0, v4, v6

    if-gez v0, :cond_5d

    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    goto :goto_26

    :cond_5d
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/Bh;->A00:J

    const/4 v8, 0x1

    goto :goto_26
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/Hh;)Z
    .registers 6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Wc;->A0M:I

    const/4 v4, 0x1

    if-ne v1, v0, :cond_f

    return v4

    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    :cond_13
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_31

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_31
    sget-object v2, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "HZNBHqeXKlwJLRyY4R1ZazClo3jLxgS8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ULnGw1bPzwMM6OF7GcjqoSbIBNnkFp5Y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-lez v3, :cond_48

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Wc;->A0M:I

    if-ne v1, v0, :cond_13

    return v4

    :cond_48
    const/4 v0, 0x0

    return v0
.end method

.method public static A0G([Lcom/facebook/ads/redexgen/X/CG;)[[J
    .registers 15

    array-length v0, p0

    new-array v6, v0, [[J

    array-length v0, p0

    new-array v5, v0, [I

    array-length v0, p0

    new-array v4, v0, [J

    array-length v0, p0

    new-array v3, v0, [Z

    const/4 v2, 0x0

    :goto_d
    array-length v0, p0

    if-ge v2, v0, :cond_28

    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/CP;->A01:I

    new-array v0, v0, [J

    aput-object v0, v6, v2

    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    const/4 v0, 0x0

    aget-wide v0, v1, v0

    aput-wide v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    :goto_2b
    array-length v8, p0

    sget-object v7, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v7, v0

    const/4 v0, 0x1

    aget-object v7, v7, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_46

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_46
    sget-object v7, Lcom/facebook/ads/redexgen/X/Wc;->A0K:[Ljava/lang/String;

    const-string v1, "yJ2jD62HfH2jQTY3DSfm8DixkPqWTM6R"

    const/4 v0, 0x5

    aput-object v1, v7, v0

    const-string v1, "ERCQlGdy7dAXpXma9fK0CLCiAFSx2az3"

    const/4 v0, 0x3

    aput-object v1, v7, v0

    if-ge v2, v8, :cond_97

    const-wide v10, 0x7fffffffffffffffL

    const/4 v9, -0x1

    const/4 v1, 0x0

    :goto_5b
    array-length v0, p0

    if-ge v1, v0, :cond_6e

    aget-boolean v0, v3, v1

    if-nez v0, :cond_6b

    aget-wide v7, v4, v1

    cmp-long v0, v7, v10

    if-gtz v0, :cond_6b

    move v9, v1

    aget-wide v10, v4, v1

    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    :cond_6e
    aget v7, v5, v9

    aget-object v0, v6, v9

    aput-wide v12, v0, v7

    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CP;->A05:[I

    aget v0, v0, v7

    int-to-long v0, v0

    add-long/2addr v12, v0

    const/4 v1, 0x1

    add-int/2addr v7, v1

    aput v7, v5, v9

    aget-object v0, v6, v9

    array-length v0, v0

    if-ge v7, v0, :cond_92

    aget-object v0, p0, v9

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    aget-wide v0, v0, v7

    aput-wide v0, v4, v9

    goto :goto_2b

    :cond_92
    aput-boolean v1, v3, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_97
    return-object v6
.end method


# virtual methods
.method public final A6k()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A08:J

    return-wide v0
.end method

.method public final A7l(J)Lcom/facebook/ads/redexgen/X/Bi;
    .registers 18

    move-object v11, p0

    iget-object v1, v11, Lcom/facebook/ads/redexgen/X/Wc;->A0C:[Lcom/facebook/ads/redexgen/X/CG;

    array-length v0, v1

    if-nez v0, :cond_e

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A03:Lcom/facebook/ads/redexgen/X/Bk;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0

    :cond_e
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, -0x1

    iget v0, v11, Lcom/facebook/ads/redexgen/X/Wc;->A02:I

    const/4 v14, -0x1

    move-wide/from16 v9, p1

    if-eq v0, v14, :cond_2e

    aget-object v0, v1, v0

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    invoke-static {v13, v9, v10}, Lcom/facebook/ads/redexgen/X/Wc;->A02(Lcom/facebook/ads/redexgen/X/CP;J)I

    move-result v12

    if-ne v12, v14, :cond_35

    sget-object v1, Lcom/facebook/ads/redexgen/X/Bk;->A03:Lcom/facebook/ads/redexgen/X/Bk;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0

    :cond_2e
    move-wide v0, v9

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_57

    :cond_35
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    aget-wide v0, v0, v12

    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/CP;->A06:[J

    aget-wide v7, v2, v12

    cmp-long v2, v0, v9

    if-gez v2, :cond_57

    iget v2, v13, Lcom/facebook/ads/redexgen/X/CP;->A01:I

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_57

    invoke-virtual {v13, v9, v10}, Lcom/facebook/ads/redexgen/X/CP;->A01(J)I

    move-result v9

    if-eq v9, v14, :cond_57

    if-eq v9, v12, :cond_57

    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/CP;->A07:[J

    aget-wide v5, v2, v9

    iget-object v2, v13, Lcom/facebook/ads/redexgen/X/CP;->A06:[J

    aget-wide v3, v2, v9

    :cond_57
    :goto_57
    const/4 v10, 0x0

    :goto_58
    iget-object v9, v11, Lcom/facebook/ads/redexgen/X/Wc;->A0C:[Lcom/facebook/ads/redexgen/X/CG;

    array-length v2, v9

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v2, :cond_79

    iget v2, v11, Lcom/facebook/ads/redexgen/X/Wc;->A02:I

    if-eq v10, v2, :cond_76

    aget-object v2, v9, v10

    iget-object v9, v2, Lcom/facebook/ads/redexgen/X/CG;->A03:Lcom/facebook/ads/redexgen/X/CP;

    invoke-static {v9, v0, v1, v7, v8}, Lcom/facebook/ads/redexgen/X/Wc;->A03(Lcom/facebook/ads/redexgen/X/CP;JJ)J

    move-result-wide v7

    cmp-long v2, v5, v12

    if-eqz v2, :cond_76

    invoke-static {v9, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Wc;->A03(Lcom/facebook/ads/redexgen/X/CP;JJ)J

    move-result-wide v3

    :cond_76
    add-int/lit8 v10, v10, 0x1

    goto :goto_58

    :cond_79
    new-instance v2, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v2, v0, v1, v7, v8}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(JJ)V

    cmp-long v0, v5, v12

    if-nez v0, :cond_88

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0

    :cond_88
    new-instance v1, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0
.end method

.method public final A8e(Lcom/facebook/ads/redexgen/X/Bc;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A09:Lcom/facebook/ads/redexgen/X/Bc;

    return-void
.end method

.method public final A95()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final AE9(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A03:I

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Wc;->A0D(Lcom/facebook/ads/redexgen/X/Bb;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :pswitch_13
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wc;->A0E(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :pswitch_1b
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wc;->A01(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Bh;)I

    move-result v0

    return v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
        :pswitch_13
        :pswitch_1b
    .end packed-switch
.end method

.method public final AEw(JJ)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0I:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A00:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A06:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A04:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Wc;->A05:I

    const-wide/16 v1, 0x0

    cmp-long v0, p1, v1

    if-nez v0, :cond_19

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;->A06()V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wc;->A0C:[Lcom/facebook/ads/redexgen/X/CG;

    if-eqz v0, :cond_18

    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Wc;->A09(J)V

    goto :goto_18
.end method

.method public final AFg(Lcom/facebook/ads/redexgen/X/Bb;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/CK;->A04(Lcom/facebook/ads/redexgen/X/Bb;)Z

    move-result v0

    return v0
.end method
