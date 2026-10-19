###### Class com.facebook.ads.redexgen.X.C0918Ay (com.facebook.ads.redexgen.X.Ay)
.class public final Lcom/facebook/ads/redexgen/X/Ay;
.super Lcom/facebook/ads/redexgen/X/VN;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/GE;,
        Lcom/facebook/ads/redexgen/X/GF;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:[I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/GN;

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;",
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

    const-string v0, "x6AsNgj7kZHrnoNYywGy3amTsD0l"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S34B6ywREx44pNmlWPMRcx17PIA7Fyf2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1XorlyLpztZAXiZGzmiFCBwFfMWU"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T5Z409y2ECpb8uf8T6KWShvwgb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8Qiq8HU85lCoFhvN1dBY3zigvCratExc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EyxqnSMNDXwhS4zpORn6ov"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S8xh7faol6xkg145s9aDIWkyvYFJ4njt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Q6jD8cwEOZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ay;->A0E()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A04:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ay;-><init>(Lcom/facebook/ads/redexgen/X/GN;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/GN;)V
    .registers 4

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VN;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ay;->A00:Lcom/facebook/ads/redexgen/X/GN;

    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0J:Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static A00(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_7

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_6
    return v0

    :cond_7
    if-ne p1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    sub-int v0, p0, p1

    goto :goto_6
.end method

.method public static A01(II)I
    .registers 2

    if-le p0, p1, :cond_4

    const/4 p0, 0x1

    :goto_3
    return p0

    :cond_4
    if-le p1, p0, :cond_8

    const/4 p0, -0x1

    goto :goto_3

    :cond_8
    const/4 p0, 0x0

    goto :goto_3
.end method

.method public static synthetic A02(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Ay;->A01(II)I

    move-result p0

    return p0
.end method

.method public static A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_2
    move-object/from16 v3, p7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    aget v5, p1, v0

    move v6, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Ay;->A0L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;IIIII)Z

    move-result v0

    if-eqz v0, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2b
    return v2
.end method

.method public static A04(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[ILcom/facebook/ads/redexgen/X/GE;)I
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v2, v0, :cond_17

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    aget v0, p1, v2

    invoke-static {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Ay;->A0J(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILcom/facebook/ads/redexgen/X/GE;)Z

    move-result v0

    if-eqz v0, :cond_14

    add-int/lit8 v3, v3, 0x1

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_17
    return v3
.end method

.method public static A05(ZIIII)Landroid/graphics/Point;
    .registers 6

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    if-le p3, p4, :cond_21

    const/4 v0, 0x1

    :goto_6
    if-le p1, p2, :cond_1f

    :goto_8
    if-eq v0, p0, :cond_d

    move v0, p1

    move p1, p2

    move p2, v0

    :cond_d
    mul-int p0, p3, p2

    mul-int v0, p4, p1

    if-lt p0, v0, :cond_23

    mul-int v0, p1, p4

    invoke-static {v0, p3}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    goto :goto_8

    :cond_21
    const/4 v0, 0x0

    goto :goto_6

    :cond_23
    mul-int v0, p2, p3

    invoke-static {v0, p4}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private final A06(ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/Ax;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_4
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    if-ge v5, v0, :cond_64

    invoke-virtual {p2, v5}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "1NYDqnXuXqFwXvhmhx1oqfe5tY82"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "WKIyqdfHfHQHhajlNNxex4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aget-object v9, p3, v5

    const/4 v3, 0x0

    :goto_30
    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v3, v0, :cond_61

    aget v1, v9, v3

    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {v4, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0D:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    const/4 v0, 0x1

    :goto_4a
    if-eqz v0, :cond_4d

    const/4 v2, 0x2

    :cond_4d
    aget v0, v9, v3

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_57

    add-int/lit16 v2, v2, 0x3e8

    :cond_57
    if-le v2, v8, :cond_5c

    move-object v7, v4

    move v6, v3

    move v8, v2

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_5f
    const/4 v0, 0x0

    goto :goto_4a

    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_64
    if-nez v7, :cond_68

    const/4 v0, 0x0

    :goto_67
    return-object v0

    :cond_68
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, v7, v6}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;I)V

    goto :goto_67
.end method

.method public static A07(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/Ax;
    .registers 19

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    :goto_6
    move-object/from16 v1, p0

    iget v0, v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    if-ge v6, v0, :cond_11f

    invoke-virtual {v1, v6}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v5

    move-object/from16 v12, p2

    iget v2, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A06:I

    iget v1, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A05:I

    iget-boolean v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0F:Z

    invoke-static {v5, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0D(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v4

    aget-object v15, p1, v6

    const/4 v3, 0x0

    :goto_1f
    iget v13, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_119

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "lwqQHO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v3, v13, :cond_115

    aget v1, v15, v3

    iget-boolean v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual {v5, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    sget-object v13, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v13, v0

    const/4 v0, 0x5

    aget-object v0, v13, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_103

    sget-object v13, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "SiU1QSN6MQFkL93X4OOrhG4pGOhEurBM"

    const/4 v0, 0x6

    aput-object v1, v13, v0

    if-eqz v14, :cond_113

    :goto_6d
    iget v14, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    sget-object v13, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v13, v0

    const/4 v0, 0x7

    aget-object v0, v13, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_119

    sget-object v13, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "4KlbdBkqrnIgKSOErHym9NPyt3h5FUou"

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v13, -0x1

    if-eq v14, v13, :cond_91

    iget v1, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A03:I

    if-gt v1, v0, :cond_113

    :cond_91
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-eq v0, v13, :cond_9b

    iget v1, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A02:I

    if-gt v1, v0, :cond_113

    :cond_9b
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    if-eq v0, v13, :cond_a5

    iget v1, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    iget v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A01:I

    if-gt v1, v0, :cond_113

    :cond_a5
    const/4 v14, 0x1

    :goto_a6
    if-nez v14, :cond_b0

    iget-boolean v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0C:Z

    if-nez v0, :cond_b0

    :cond_ac
    :goto_ac
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1f

    :cond_b0
    if-eqz v14, :cond_101

    const/4 v1, 0x2

    :goto_b3
    aget v13, v15, v3

    const/4 v0, 0x0

    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v13

    if-eqz v13, :cond_be

    add-int/lit16 v1, v1, 0x3e8

    :cond_be
    if-le v1, v9, :cond_ff

    const/4 v0, 0x1

    :goto_c1
    if-ne v1, v9, :cond_d0

    iget-boolean v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0D:Z

    if-eqz v0, :cond_de

    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/Ay;->A00(II)I

    move-result v0

    if-gez v0, :cond_dc

    const/4 v0, 0x1

    :cond_d0
    :goto_d0
    if-eqz v0, :cond_ac

    move-object v11, v5

    move v10, v3

    move v9, v1

    iget v8, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    invoke-virtual {v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0E()I

    move-result v7

    goto :goto_ac

    :cond_dc
    const/4 v0, 0x0

    goto :goto_d0

    :cond_de
    invoke-virtual {v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0E()I

    move-result v0

    if-eq v0, v7, :cond_f0

    invoke-static {v0, v7}, Lcom/facebook/ads/redexgen/X/Ay;->A00(II)I

    move-result v0

    :goto_e8
    if-eqz v13, :cond_f9

    if-eqz v14, :cond_f9

    if-lez v0, :cond_f7

    const/4 v0, 0x1

    goto :goto_d0

    :cond_f0
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    invoke-static {v0, v8}, Lcom/facebook/ads/redexgen/X/Ay;->A00(II)I

    move-result v0

    goto :goto_e8

    :cond_f7
    const/4 v0, 0x0

    goto :goto_d0

    :cond_f9
    if-gez v0, :cond_fd

    const/4 v0, 0x1

    goto :goto_d0

    :cond_fd
    const/4 v0, 0x0

    goto :goto_d0

    :cond_ff
    const/4 v0, 0x0

    goto :goto_c1

    :cond_101
    const/4 v1, 0x1

    goto :goto_b3

    :cond_103
    sget-object v13, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "DpIh5EonHVTuVHRer6KDIMhApdM7"

    const/4 v0, 0x2

    aput-object v1, v13, v0

    const-string v1, "CmkW9iHHxPPPILgrY4olMD"

    const/4 v0, 0x5

    aput-object v1, v13, v0

    if-eqz v14, :cond_113

    goto/16 :goto_6d

    :cond_113
    const/4 v14, 0x0

    goto :goto_a6

    :cond_115
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_119
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11f
    if-nez v11, :cond_123

    const/4 v0, 0x0

    :goto_122
    return-object v0

    :cond_123
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, v11, v10}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;I)V

    goto :goto_122
.end method

.method private final A08(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/Ax;
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_4
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    if-ge v5, v0, :cond_7d

    invoke-virtual {p1, v5}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v4

    aget-object v13, p2, v5

    const/4 v3, 0x0

    :goto_f
    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v3, v0, :cond_7a

    aget v1, v13, v3

    move-object/from16 v10, p3

    iget-boolean v0, v10, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-virtual {v4, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v1

    iget v2, v1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0D:I

    iget v0, v10, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A00:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v2, v0

    and-int/lit8 v0, v2, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_78

    const/4 v11, 0x1

    :goto_31
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_76

    :goto_35
    iget-object v0, v10, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A08:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-boolean v0, v10, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0E:Z

    if-eqz v0, :cond_64

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ay;->A0I(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_47
    if-eqz v11, :cond_5e

    const/16 v1, 0x8

    :goto_4b
    add-int/2addr v1, v2

    :goto_4c
    aget v0, v13, v3

    invoke-static {v0, v9}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_56

    add-int/lit16 v1, v1, 0x3e8

    :cond_56
    if-le v1, v8, :cond_5b

    move-object v7, v4

    move v6, v3

    move v8, v1

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_5e
    if-nez v12, :cond_62

    const/4 v1, 0x6

    goto :goto_4b

    :cond_62
    const/4 v1, 0x4

    goto :goto_4b

    :cond_64
    if-eqz v11, :cond_68

    const/4 v1, 0x3

    goto :goto_4c

    :cond_68
    if-eqz v12, :cond_5b

    iget-object v0, v10, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A07:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    const/4 v1, 0x2

    goto :goto_4c

    :cond_74
    const/4 v1, 0x1

    goto :goto_4c

    :cond_76
    const/4 v12, 0x0

    goto :goto_35

    :cond_78
    const/4 v11, 0x0

    goto :goto_31

    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7d
    if-nez v7, :cond_81

    const/4 v0, 0x0

    :goto_80
    return-object v0

    :cond_81
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, v7, v6}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;I)V

    goto :goto_80
.end method

.method public static A09(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/GO;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object/from16 v2, p3

    iget-boolean v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0A:Z

    if-eqz v0, :cond_3f

    const/16 v7, 0x18

    :goto_8
    iget-boolean v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A09:Z

    if-eqz v0, :cond_3d

    and-int p2, p2, v7

    if-eqz p2, :cond_3d

    const/4 v6, 0x1

    :goto_11
    const/4 v3, 0x0

    :goto_12
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    if-ge v3, v0, :cond_42

    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v4

    aget-object v5, p1, v3

    iget v8, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A03:I

    iget v9, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A02:I

    iget v10, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A01:I

    iget v11, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A06:I

    iget v12, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A05:I

    iget-boolean v13, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0F:Z

    invoke-static/range {v4 .. v13}, Lcom/facebook/ads/redexgen/X/Ay;->A0O(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IZIIIIIIZ)[I

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_3a

    invoke-static/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GN;

    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/GN;->A4k(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    return-object v0

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_3d
    const/4 v6, 0x0

    goto :goto_11

    :cond_3f
    const/16 v7, 0x10

    goto :goto_8

    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A0A(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/GO;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    :goto_4
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    if-ge v7, v0, :cond_39

    invoke-virtual {p1, v7}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v6

    aget-object v9, p2, v7

    const/4 v4, 0x0

    :goto_f
    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v4, v0, :cond_36

    aget v1, v9, v4

    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v6, v4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/GF;

    aget v0, v9, v4

    invoke-direct {v1, v2, p4, v0}, Lcom/facebook/ads/redexgen/X/GF;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;I)V

    if-eqz v8, :cond_30

    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/GF;->A00(Lcom/facebook/ads/redexgen/X/GF;)I

    move-result v0

    if-lez v0, :cond_33

    :cond_30
    move v5, v7

    move v3, v4

    move-object v8, v1

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_39
    const/4 v0, -0x1

    if-ne v5, v0, :cond_3e

    const/4 v0, 0x0

    return-object v0

    :cond_3e
    invoke-virtual {p1, v5}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v2

    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0D:Z

    if-nez v0, :cond_58

    if-eqz p5, :cond_58

    aget-object v1, p2, v5

    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A09:Z

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0N(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IZ)[I

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_58

    invoke-interface {p5, v2, v1}, Lcom/facebook/ads/redexgen/X/GN;->A4k(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    return-object v0

    :cond_58
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;I)V

    return-object v0
.end method

.method private final A0B(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/GO;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A0D:Z

    if-nez v0, :cond_b

    if-eqz p5, :cond_b

    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/Ay;->A09(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v1

    :cond_b
    if-nez v1, :cond_11

    invoke-static {p1, p2, p4}, Lcom/facebook/ads/redexgen/X/Ay;->A07(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/Ax;

    move-result-object v1

    :cond_11
    return-object v1
.end method

.method public static A0C(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x74

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0D(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;IIZ)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_8
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    const v7, 0x7fffffff

    if-eq p1, v7, :cond_1d

    if-ne p2, v7, :cond_1e

    :cond_1d
    return-object v4

    :cond_1e
    const v3, 0x7fffffff

    const/4 v6, 0x0

    :goto_22
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v6, v0, :cond_5a

    invoke-virtual {p0, v6}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v9

    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    if-lez v0, :cond_57

    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-lez v0, :cond_57

    iget v1, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    invoke-static {p3, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A05(ZIIII)Landroid/graphics/Point;

    move-result-object v8

    iget v5, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    mul-int/2addr v5, v0

    iget v1, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt v1, v0, :cond_57

    iget v1, v9, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt v1, v0, :cond_57

    if-ge v5, v3, :cond_57

    move v3, v5

    :cond_57
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    :cond_5a
    if-eq v3, v7, :cond_81

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_62
    if-ltz v2, :cond_81

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0E()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_7b

    if-le v1, v3, :cond_7e

    :cond_7b
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7e
    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    :cond_81
    return-object v4
.end method

.method public static A0E()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A02:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x60t
        0x7bt
        0x71t
    .end array-data
.end method

.method public static A0F(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v2, p7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_2c

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v3

    aget v5, p1, v0

    move v6, p2

    move-object v4, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/Ay;->A0L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;IIIII)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_2c
    return-void
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/GM;[[[I[Lcom/facebook/ads/redexgen/X/9t;[Lcom/facebook/ads/redexgen/X/GO;I)V
    .registers 15

    if-nez p4, :cond_3

    return-void

    :cond_3
    const/4 v7, -0x1

    const/4 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/GM;->A00()I

    move-result v0

    const/4 v5, 0x1

    const/4 v4, -0x1

    if-ge v8, v0, :cond_2d

    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/GM;->A01(I)I

    move-result v3

    aget-object v2, p3, v8

    if-eq v3, v5, :cond_1a

    const/4 v0, 0x2

    if-ne v3, v0, :cond_47

    :cond_1a
    if-eqz v2, :cond_47

    aget-object v1, p1, v8

    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/GM;->A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ay;->A0M([[ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GO;)Z

    move-result v0

    if-eqz v0, :cond_47

    if-ne v3, v5, :cond_40

    if-eq v7, v4, :cond_46

    const/4 v9, 0x0

    :cond_2d
    :goto_2d
    if-eq v7, v4, :cond_3e

    if-eq v6, v4, :cond_3e

    :goto_31
    and-int/2addr v9, v5

    if-eqz v9, :cond_3d

    new-instance v0, Lcom/facebook/ads/redexgen/X/9t;

    invoke-direct {v0, p4}, Lcom/facebook/ads/redexgen/X/9t;-><init>(I)V

    aput-object v0, p2, v7

    aput-object v0, p2, v6

    :cond_3d
    return-void

    :cond_3e
    const/4 v5, 0x0

    goto :goto_31

    :cond_40
    if-eq v6, v4, :cond_44

    const/4 v9, 0x0

    goto :goto_2d

    :cond_44
    move v6, v8

    goto :goto_47

    :cond_46
    move v7, v8

    :cond_47
    :goto_47
    add-int/lit8 v8, v8, 0x1

    goto :goto_7
.end method

.method public static A0H(IZ)Z
    .registers 3

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    if-eqz p1, :cond_c

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static A0I(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static A0J(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILcom/facebook/ads/redexgen/X/GE;)Z
    .registers 8

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/GE;->A00:I

    if-ne v1, v0, :cond_3b

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/GE;->A01:I

    if-ne v1, v0, :cond_3b

    iget-object v4, p2, Lcom/facebook/ads/redexgen/X/GE;->A02:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "Z4TnxuroRrU42RhZWOmYjmwLcPTU1MVO"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_3a

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/GE;->A02:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_3a
    const/4 v3, 0x1

    :cond_3b
    return v3

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0N:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object p0, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "X09dGmvImKzkjml92Go2OBGPrO7s8ElS"

    const/4 v0, 0x6

    aput-object v1, p0, v0

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    return v0
.end method

.method public static A0L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Ljava/lang/String;IIIII)Z
    .registers 13

    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0H(IZ)Z

    move-result v0

    if-eqz v0, :cond_47

    and-int/2addr p2, p3

    if-eqz p2, :cond_47

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Hx;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    :cond_14
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1d

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    if-gt v0, p4, :cond_47

    :cond_1d
    iget v5, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_48

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "SWfcLm8XXzRqeXuobK6MjvAJ3gvDaDv7"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v5, v4, :cond_3e

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-gt v0, p5, :cond_47

    :cond_3e
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    if-eq v0, v4, :cond_46

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A04:I

    if-gt v0, p6, :cond_47

    :cond_46
    const/4 v3, 0x1

    :cond_47
    return v3

    :cond_48
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0M([[ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GO;)Z
    .registers 8

    const/4 v4, 0x0

    if-nez p2, :cond_4

    return v4

    :cond_4
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/GO;->A81()Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A00(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;)I

    move-result v3

    const/4 v2, 0x0

    :goto_d
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/GO;->length()I

    move-result v0

    if-ge v2, v0, :cond_25

    aget-object v1, p0, v3

    invoke-interface {p2, v2}, Lcom/facebook/ads/redexgen/X/GO;->A75(I)I

    move-result v0

    aget v0, v1, v0

    and-int/lit8 v1, v0, 0x20

    const/16 v0, 0x20

    if-eq v1, v0, :cond_22

    return v4

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public static A0N(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IZ)[I
    .registers 13

    const/4 v6, 0x0

    const/4 v9, 0x0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_8
    iget v3, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_c6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "meGLfV23Rzl9igGpAxJQFKheW1LS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "FiWVyQMXAFPncybwnc3GZ7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_64

    invoke-virtual {p0, v5}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    new-instance v4, Lcom/facebook/ads/redexgen/X/GE;

    iget v2, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A05:I

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0C:I

    if-eqz p2, :cond_61

    const/4 v0, 0x0

    :goto_34
    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GE;-><init>(IILjava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-static {p0, p1, v4}, Lcom/facebook/ads/redexgen/X/Ay;->A04(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[ILcom/facebook/ads/redexgen/X/GE;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_57

    if-le v3, v6, :cond_54

    :goto_52
    move-object v9, v4

    move v6, v3

    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_57
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "qbEeyg8BdzMApnixm7aM3K2w4BJzFZ2Y"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-le v3, v6, :cond_54

    goto :goto_52

    :cond_61
    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    goto :goto_34

    :cond_64
    const/4 v0, 0x1

    if-le v6, v0, :cond_c3

    new-array v5, v6, [I

    const/4 v8, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_c0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "4LRww03tsnXN2lDzEbKe5Z8dH5qv"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mlJWR4ilrpKl1KfE3NcYmb"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v4, 0x0

    :goto_86
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    if-ge v4, v0, :cond_c2

    invoke-virtual {p0, v4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v7

    aget v6, p1, v4

    invoke-static {v9}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_a9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a9
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "nSxM8ZPkvfs0IWAG7eseSPBOLfK4wpcw"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/GE;

    invoke-static {v7, v6, v3}, Lcom/facebook/ads/redexgen/X/Ay;->A0J(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILcom/facebook/ads/redexgen/X/GE;)Z

    move-result v0

    if-eqz v0, :cond_bd

    add-int/lit8 v0, v8, 0x1

    aput v4, v5, v8

    move v8, v0

    :cond_bd
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    :cond_c0
    const/4 v4, 0x0

    goto :goto_86

    :cond_c2
    return-object v5

    :cond_c3
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A04:[I

    return-object v0

    :cond_c6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0O(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IZIIIIIIZ)[I
    .registers 25

    move-object v12, p0

    iget v0, v12, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A04:[I

    return-object v0

    :cond_9
    move/from16 v3, p7

    move/from16 v2, p8

    move/from16 v0, p9

    invoke-static {v12, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0D(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1c

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A04:[I

    return-object v0

    :cond_1c
    const/4 p0, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    if-nez p2, :cond_59

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_30
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iget-object v7, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    move-object v4, v12

    move-object v7, v7

    invoke-static/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Ay;->A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v0

    if-le v0, v2, :cond_56

    move-object p0, v7

    move v2, v0

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_59
    move-object v13, v5

    move v14, v6

    move/from16 p1, v8

    move/from16 p2, v9

    move/from16 p3, v10

    move-object/from16 p4, v11

    invoke-static/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/Ay;->A0F(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x2

    if-ge v1, v0, :cond_70

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ay;->A04:[I

    :goto_6f
    return-object v0

    :cond_70
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/Hx;->A0j(Ljava/util/List;)[I

    move-result-object v0

    goto :goto_6f
.end method

.method private final A0P(Lcom/facebook/ads/redexgen/X/GM;[[[I[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)[Lcom/facebook/ads/redexgen/X/GO;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/GM;->A00()I

    move-result v3

    new-array v2, v3, [Lcom/facebook/ads/redexgen/X/GO;

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    :goto_d
    move-object/from16 v5, p4

    if-ge v1, v3, :cond_46

    const/4 v7, 0x2

    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/GM;->A01(I)I

    move-result v0

    if-ne v7, v0, :cond_3f

    if-nez v8, :cond_35

    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/GM;->A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v13

    aget-object v14, p2, v1

    aget v15, p3, v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ay;->A00:Lcom/facebook/ads/redexgen/X/GN;

    move-object/from16 v12, p0

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/Ay;->A0B(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    aput-object v0, v2, v1

    aget-object v0, v2, v1

    if-eqz v0, :cond_44

    const/4 v8, 0x1

    :cond_35
    :goto_35
    invoke-virtual {v6, v1}, Lcom/facebook/ads/redexgen/X/GM;->A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01:I

    if-lez v0, :cond_42

    const/4 v0, 0x1

    :goto_3e
    or-int/2addr v11, v0

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_42
    const/4 v0, 0x0

    goto :goto_3e

    :cond_44
    const/4 v8, 0x0

    goto :goto_35

    :cond_46
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :goto_49
    if-ge v8, v3, :cond_bc

    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/GM;->A01(I)I

    move-result v7

    packed-switch v7, :pswitch_data_be

    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/GM;->A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v1

    aget-object v0, p2, v8

    invoke-direct {v4, v7, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ay;->A06(ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/Ax;

    move-result-object v0

    aput-object v0, v2, v8

    :cond_5e
    :goto_5e
    :pswitch_5e
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :pswitch_61
    if-nez v10, :cond_5e

    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/GM;->A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v13

    aget-object v14, p2, v8

    aget v15, p3, v8

    if-eqz v11, :cond_80

    const/4 v0, 0x0

    :goto_6e
    move-object/from16 v12, p0

    move-object/from16 v16, v5

    move-object/from16 v17, v0

    invoke-direct/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/Ay;->A0A(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/GN;)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    aput-object v0, v2, v8

    aget-object v0, v2, v8

    if-eqz v0, :cond_83

    const/4 v10, 0x1

    goto :goto_5e

    :cond_80
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Ay;->A00:Lcom/facebook/ads/redexgen/X/GN;

    goto :goto_6e

    :cond_83
    const/4 v10, 0x0

    goto :goto_5e

    :pswitch_85
    if-nez v9, :cond_5e

    invoke-virtual {v6, v8}, Lcom/facebook/ads/redexgen/X/GM;->A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v1

    aget-object v0, p2, v8

    invoke-direct {v4, v1, v0, v5}, Lcom/facebook/ads/redexgen/X/Ay;->A08(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/Ax;

    move-result-object v0

    aput-object v0, v2, v8

    aget-object v0, v2, v8

    if-eqz v0, :cond_ad

    const/4 v9, 0x1

    :goto_98
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x46

    if-eq v1, v0, :cond_af

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_ad
    const/4 v9, 0x0

    goto :goto_98

    :cond_af
    sget-object v7, Lcom/facebook/ads/redexgen/X/Ay;->A03:[Ljava/lang/String;

    const-string v1, "QJl7DztNVPNycYqDWlGKy9194VAG"

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const-string v1, "9kW2zRUIc2UhcVCPTVcu4Y"

    const/4 v0, 0x5

    aput-object v1, v7, v0

    goto :goto_5e

    :cond_bc
    return-object v2

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_61
        :pswitch_5e
        :pswitch_85
    .end packed-switch
.end method


# virtual methods
.method public final A0V(Lcom/facebook/ads/redexgen/X/GM;[[[I[I)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/GM;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/facebook/ads/redexgen/X/9t;",
            "[",
            "Lcom/facebook/ads/redexgen/X/GO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/GM;->A00()I

    move-result v5

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/facebook/ads/redexgen/X/Ay;->A0P(Lcom/facebook/ads/redexgen/X/GM;[[[I[ILcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;)[Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v4

    const/4 v3, 0x0

    :goto_11
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ge v3, v5, :cond_61

    invoke-virtual {v6, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A06(I)Z

    move-result v0

    if-eqz v0, :cond_21

    aput-object v8, v4, v3

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_21
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/GM;->A02(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A07(ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v6, v3, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A05(ILcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v7

    if-nez v7, :cond_34

    aput-object v8, v4, v3

    goto :goto_1e

    :cond_34
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$SelectionOverride;->A01:I

    if-ne v0, v2, :cond_4a

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$SelectionOverride;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v2

    iget-object v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$SelectionOverride;->A02:[I

    aget v1, v0, v9

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Ax;-><init>(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;I)V

    aput-object v0, v4, v3

    goto :goto_1e

    :cond_4a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ay;->A00:Lcom/facebook/ads/redexgen/X/GN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/GN;

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$SelectionOverride;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;

    move-result-object v1

    iget-object v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$SelectionOverride;->A02:[I

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GN;->A4k(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/GO;

    move-result-object v0

    aput-object v0, v4, v3

    goto :goto_1e

    :cond_61
    new-array v3, v5, [Lcom/facebook/ads/redexgen/X/9t;

    const/4 v2, 0x0

    :goto_64
    if-ge v2, v5, :cond_85

    invoke-virtual {v6, v2}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A06(I)Z

    move-result v0

    if-nez v0, :cond_83

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/GM;->A01(I)I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_77

    aget-object v0, v4, v2

    if-eqz v0, :cond_83

    :cond_77
    const/4 v0, 0x1

    :goto_78
    if-eqz v0, :cond_81

    sget-object v0, Lcom/facebook/ads/redexgen/X/9t;->A01:Lcom/facebook/ads/redexgen/X/9t;

    :goto_7c
    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    :cond_81
    move-object v0, v8

    goto :goto_7c

    :cond_83
    const/4 v0, 0x0

    goto :goto_78

    :cond_85
    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/thirdparty/trackselection/DefaultTrackSelector$Parameters;->A04:I

    invoke-static {p1, p2, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/Ay;->A0G(Lcom/facebook/ads/redexgen/X/GM;[[[I[Lcom/facebook/ads/redexgen/X/9t;[Lcom/facebook/ads/redexgen/X/GO;I)V

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
