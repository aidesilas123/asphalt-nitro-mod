###### Class com.facebook.ads.redexgen.X.WE (com.facebook.ads.redexgen.X.WE)
.class public final Lcom/facebook/ads/redexgen/X/WE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cg;


# static fields
.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:J

.field public A04:J

.field public A05:Lcom/facebook/ads/redexgen/X/Bm;

.field public A06:Ljava/lang/String;

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/Bg;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A0B:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "M8nxhoQeDkjHEk3tjnypaUsJeky9pUPe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "22wDV1USJ2tZABUEWkFG7fElxPqoDepQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "WSXmuBny7XXEQ4s813c9BSbsqOjqSskJ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KVrLQEQFGtTXAXMopyF5dj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jUO9kFQXOuNF5MkzWpfFf35Wzr3tp3jj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "UgJN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fATsZHYNQKGGAXuN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "X77CUtb4yEwh8nH4MH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WE;->A0C:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WE;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:I

    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v0, -0x1

    aput-byte v0, v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bg;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Bg;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WE;->A0B:Ljava/lang/String;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 10

    iget-object v6, p1, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A07()I

    move-result v7

    :goto_a
    if-ge v5, v7, :cond_42

    aget-byte v1, v6, v5

    const/16 v0, 0xff

    and-int/2addr v1, v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_40

    const/4 v2, 0x1

    :goto_16
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A08:Z

    if-eqz v0, :cond_3e

    aget-byte v1, v6, v5

    const/16 v0, 0xe0

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_3e

    const/4 v0, 0x1

    :goto_22
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/WE;->A08:Z

    if-eqz v0, :cond_3b

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/WE;->A08:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    aget-byte v0, v6, v5

    aput-byte v0, v1, v3

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    iput v3, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:I

    return-void

    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_3e
    const/4 v0, 0x0

    goto :goto_22

    :cond_40
    const/4 v2, 0x0

    goto :goto_16

    :cond_42
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    return-void
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 12

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/WE;->A01:I

    if-ge v0, v7, :cond_1c

    return-void

    :cond_1c
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/WE;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    sget-object v1, Lcom/facebook/ads/redexgen/X/WE;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x48

    if-eq v1, v0, :cond_4d

    sget-object v2, Lcom/facebook/ads/redexgen/X/WE;->A0C:[Ljava/lang/String;

    const-string v1, "Ix3a1KSHqy7cK1t6WtGmlZzK6PY1tVDv"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "TW6fubs4zpuEa3cAWqrpZRXJHWdUZhrV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/WE;->A04:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Bm;->AEs(JIIILcom/facebook/ads/redexgen/X/Bl;)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/WE;->A04:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A03:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/WE;->A04:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:I

    return-void

    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 18

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    const/4 v3, 0x4

    rsub-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    iget v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    invoke-virtual {v5, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    add-int/2addr v0, v4

    iput v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    if-ge v0, v3, :cond_22

    return-void

    :cond_22
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v4

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Bg;->A04(ILcom/facebook/ads/redexgen/X/Bg;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_3c

    iput v1, v2, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    iput v4, v2, Lcom/facebook/ads/redexgen/X/WE;->A02:I

    return-void

    :cond_3c
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    iput v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A01:I

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A07:Z

    if-nez v0, :cond_79

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A04:I

    int-to-long v7, v0

    const-wide/32 v5, 0xf4240

    mul-long/2addr v7, v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Bg;->A03:I

    int-to-long v5, v0

    div-long/2addr v7, v5

    iput-wide v7, v2, Lcom/facebook/ads/redexgen/X/WE;->A03:J

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/WE;->A06:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Bg;->A06:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x1000

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iget v10, v0, Lcom/facebook/ads/redexgen/X/Bg;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A09:Lcom/facebook/ads/redexgen/X/Bg;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/Bg;->A03:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/WE;->A0B:Ljava/lang/String;

    invoke-static/range {v5 .. v15}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v5

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/Bm;->A5j(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iput-boolean v4, v2, Lcom/facebook/ads/redexgen/X/WE;->A07:Z

    :cond_79
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/WE;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A0A:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Bm;->AEr(Lcom/facebook/ads/redexgen/X/Hh;I)V

    const/4 v0, 0x2

    iput v0, v2, Lcom/facebook/ads/redexgen/X/WE;->A02:I

    return-void
.end method


# virtual methods
.method public final A4O(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 3

    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lez v0, :cond_18

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WE;->A01(Lcom/facebook/ads/redexgen/X/Hh;)V

    goto :goto_0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WE;->A02(Lcom/facebook/ads/redexgen/X/Hh;)V

    goto :goto_0

    :pswitch_14
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/WE;->A00(Lcom/facebook/ads/redexgen/X/Hh;)V

    goto :goto_0

    :cond_18
    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public final A4l(Lcom/facebook/ads/redexgen/X/Bc;Lcom/facebook/ads/redexgen/X/Cu;)V
    .registers 5

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A05()V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A04()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A06:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Cu;->A03()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Bc;->AFx(II)Lcom/facebook/ads/redexgen/X/Bm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A05:Lcom/facebook/ads/redexgen/X/Bm;

    return-void
.end method

.method public final ADi()V
    .registers 1

    return-void
.end method

.method public final ADj(JZ)V
    .registers 4

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/WE;->A04:J

    return-void
.end method

.method public final AEv()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A00:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/WE;->A08:Z

    return-void
.end method
