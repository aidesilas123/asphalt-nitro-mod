###### Class com.facebook.ads.redexgen.X.C08699a (com.facebook.ads.redexgen.X.9a)
.class public final Lcom/facebook/ads/redexgen/X/9a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0F:[B


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/9a;

.field public A02:Lcom/facebook/ads/redexgen/X/9b;

.field public A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

.field public A04:Lcom/facebook/ads/redexgen/X/GS;

.field public A05:Z

.field public A06:Z

.field public A07:Lcom/facebook/ads/redexgen/X/GS;

.field public final A08:Lcom/facebook/ads/redexgen/X/Vg;

.field public final A09:Ljava/lang/Object;

.field public final A0A:[Lcom/facebook/ads/redexgen/X/Et;

.field public final A0B:[Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/EY;

.field public final A0D:Lcom/facebook/ads/redexgen/X/GR;

.field public final A0E:[Lcom/facebook/ads/redexgen/X/9s;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9a;->A01()V

    return-void
.end method

.method public constructor <init>([Lcom/facebook/ads/redexgen/X/9s;JLcom/facebook/ads/redexgen/X/GR;Lcom/facebook/ads/redexgen/X/GU;Lcom/facebook/ads/redexgen/X/EY;Ljava/lang/Object;Lcom/facebook/ads/redexgen/X/9b;)V
    .registers 23

    move-wide/from16 v2, p2

    move-object v5, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v5, Lcom/facebook/ads/redexgen/X/9a;->A0E:[Lcom/facebook/ads/redexgen/X/9s;

    move-object/from16 v6, p8

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    sub-long/2addr v2, v0

    iput-wide v2, v5, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    move-object/from16 v0, p4

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A0D:Lcom/facebook/ads/redexgen/X/GR;

    move-object/from16 v1, p6

    iput-object v1, v5, Lcom/facebook/ads/redexgen/X/9a;->A0C:Lcom/facebook/ads/redexgen/X/EY;

    invoke-static/range {p7 .. p7}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/Object;

    iput-object v6, v5, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    array-length v0, p1

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/Et;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/9a;->A0B:[Z

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/9b;->A04:Lcom/facebook/ads/redexgen/X/EW;

    move-object/from16 v2, p5

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/EY;->A4g(Lcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/GU;)Lcom/facebook/ads/redexgen/X/Vg;

    move-result-object v8

    iget-wide v3, v6, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_44

    new-instance v7, Lcom/facebook/ads/redexgen/X/BW;

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/BW;-><init>(Lcom/facebook/ads/redexgen/X/Vg;ZJJ)V

    move-object v8, v7

    :cond_44
    iput-object v8, v5, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/9a;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1e

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

    const/16 v0, 0x27

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/9a;->A0F:[B

    return-void

    :array_a
    .array-data 1
        0x4ft
        0x67t
        0x66t
        0x6bt
        0x63t
        0x52t
        0x67t
        0x70t
        0x6bt
        0x6dt
        0x66t
        0x4at
        0x6dt
        0x6et
        0x66t
        0x67t
        0x70t
        0x51t
        0x64t
        0x73t
        0x68t
        0x6et
        0x65t
        0x21t
        0x73t
        0x64t
        0x6dt
        0x64t
        0x60t
        0x72t
        0x64t
        0x21t
        0x67t
        0x60t
        0x68t
        0x6dt
        0x64t
        0x65t
        0x2ft
    .end array-data
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/GS;)V
    .registers 5

    const/4 v2, 0x0

    :goto_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    if-ge v2, v0, :cond_19

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/GP;->A00(I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GO;->A5P()V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/GS;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A07:Lcom/facebook/ads/redexgen/X/GS;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9a;->A07:Lcom/facebook/ads/redexgen/X/GS;

    if-eqz p1, :cond_9

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9a;->A02(Lcom/facebook/ads/redexgen/X/GS;)V

    :cond_9
    return-void
.end method

.method private A04([Lcom/facebook/ads/redexgen/X/Et;)V
    .registers 5

    const/4 v2, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A0E:[Lcom/facebook/ads/redexgen/X/9s;

    array-length v0, v1

    if-ge v2, v0, :cond_21

    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A83()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Vl;-><init>()V

    aput-object v0, p1, v2

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method private A05([Lcom/facebook/ads/redexgen/X/Et;)V
    .registers 5

    const/4 v2, 0x0

    :goto_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A0E:[Lcom/facebook/ads/redexgen/X/9s;

    array-length v0, v1

    if-ge v2, v0, :cond_15

    aget-object v0, v1, v2

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A83()I

    move-result v1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_12

    const/4 v0, 0x0

    aput-object v0, p1, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method


# virtual methods
.method public final A06()J
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Vg;->A7M()J

    move-result-wide v0

    goto :goto_6
.end method

.method public final A07()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    return-wide v0
.end method

.method public final A08(J)J
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9a;->A07()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final A09(J)J
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9a;->A07()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public final A0A(JZ)J
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A0E:[Lcom/facebook/ads/redexgen/X/9s;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/9a;->A0B(JZ[Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A0B(JZ[Z)J
    .registers 16

    const/4 v4, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GS;->A00:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v4, v0, :cond_1d

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9a;->A0B:[Z

    if-nez p3, :cond_18

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A07:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/GS;->A02(Lcom/facebook/ads/redexgen/X/GS;I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    aput-boolean v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9a;->A05([Lcom/facebook/ads/redexgen/X/Et;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9a;->A03(Lcom/facebook/ads/redexgen/X/GS;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/GP;->A01()[Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9a;->A0B:[Z

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    move-wide v9, p1

    move-object v8, p4

    invoke-interface/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Vg;->AF1([Lcom/facebook/ads/redexgen/X/GO;[Z[Lcom/facebook/ads/redexgen/X/Et;[ZJ)J

    move-result-wide v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9a;->A04([Lcom/facebook/ads/redexgen/X/Et;)V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A05:Z

    const/4 v4, 0x0

    :goto_43
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A0A:[Lcom/facebook/ads/redexgen/X/Et;

    array-length v0, v1

    if-ge v4, v0, :cond_72

    aget-object v0, v1, v4

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/GS;->A00(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A0E:[Lcom/facebook/ads/redexgen/X/9s;

    aget-object v0, v0, v4

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/9s;->A83()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_62

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A05:Z

    :cond_62
    :goto_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_65
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/GP;->A00(I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    if-nez v0, :cond_70

    const/4 v0, 0x1

    :goto_6c
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    goto :goto_62

    :cond_70
    const/4 v0, 0x0

    goto :goto_6c

    :cond_72
    return-wide v5
.end method

.method public final A0C(Z)J
    .registers 7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Vg;->A68()J

    move-result-wide v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/9b;->A01:J

    :cond_1b
    return-wide v3
.end method

.method public final A0D()V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9a;->A03(Lcom/facebook/ads/redexgen/X/GS;)V

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/9b;->A02:J

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A0C:Lcom/facebook/ads/redexgen/X/EY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    check-cast v0, Lcom/facebook/ads/redexgen/X/BW;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/BW;->A05:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/EY;->AET(Lcom/facebook/ads/redexgen/X/Vg;)V

    goto :goto_39

    :cond_1a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A0C:Lcom/facebook/ads/redexgen/X/EY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/EY;->AET(Lcom/facebook/ads/redexgen/X/Vg;)V

    goto :goto_39
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_22} :catch_22

    :catch_22
    move-exception v4

    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9a;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x16

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    return-void
.end method

.method public final A0E(F)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Vg;->A82()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9a;->A0I(F)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9a;->A0A(JZ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9b;->A03:J

    sub-long/2addr v0, v2

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/9b;->A01(J)Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/9b;

    return-void
.end method

.method public final A0F(J)V
    .registers 6

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9a;->A08(J)J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vg;->A4Q(J)Z

    return-void
.end method

.method public final A0G(J)V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-eqz v0, :cond_d

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9a;->A08(J)J

    move-result-wide v0

    invoke-interface {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Vg;->AEK(J)V

    :cond_d
    return-void
.end method

.method public final A0H()Z
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A05:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/Vg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Vg;->A68()J

    move-result-wide v3

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final A0I(F)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A0D:Lcom/facebook/ads/redexgen/X/GR;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A0E:[Lcom/facebook/ads/redexgen/X/9s;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GR;->A0T([Lcom/facebook/ads/redexgen/X/9s;Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;)Lcom/facebook/ads/redexgen/X/GS;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A07:Lcom/facebook/ads/redexgen/X/GS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/GS;->A01(Lcom/facebook/ads/redexgen/X/GS;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_14

    return v3

    :cond_14
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/GS;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/GS;->A01:Lcom/facebook/ads/redexgen/X/GP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/GP;->A01()[Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v2

    array-length v1, v2

    :goto_1d
    if-ge v3, v1, :cond_29

    aget-object v0, v2, v3

    if-eqz v0, :cond_26

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/GO;->ACP(F)V

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_29
    const/4 v0, 0x1

    return v0
.end method
