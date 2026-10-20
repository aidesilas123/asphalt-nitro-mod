###### Class com.facebook.ads.redexgen.X.WM (com.facebook.ads.redexgen.X.WM)
.class public final Lcom/facebook/ads/redexgen/X/WM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ct;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
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

    const-string v0, "W3zpeZwD9Fi1kBaR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uMdULlbYt84VxY86rM0TiEJbhaqKcXZ1"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Usin4k2UYlEJmIUoIPMyl4MixoDpG9ii"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hBZpg4XSGRsBFeFqV0aqL6EoVOREEldE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UimonN4w5kzXtUMO8SJw69s6gFNeuD2Z"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "uuKAqm4Yer5CcRyJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zRTcmdaM3Tn4RRVoPrSr5tVrwuK6PMWw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "taTU185R1PVUiY2ntZzDAqagtcVNoAEE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/WM;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WM;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/WM;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/WM;->A00:I

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A01(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v3, v1, v0, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A00(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :cond_26
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WM;->A01:Ljava/util/List;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Cs;)Lcom/facebook/ads/redexgen/X/Cp;
    .registers 18

    move-object/from16 v1, p0

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/WM;->A01:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cs;->A03:[B

    new-instance v7, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>([B)V

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/WM;->A01:Ljava/util/List;

    :goto_1d
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lez v0, :cond_82

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v1

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v6

    add-int/2addr v6, v0

    const/16 v0, 0x86

    if-ne v1, v0, :cond_7e

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    and-int/lit8 v4, v0, 0x1f

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v4, :cond_7e

    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0S(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v8

    and-int/lit16 v0, v8, 0x80

    if-eqz v0, :cond_7c

    const/4 v0, 0x1

    :goto_50
    if-eqz v0, :cond_71

    const/16 v2, 0x13

    const/16 v1, 0x13

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A01(III)Ljava/lang/String;

    move-result-object v9

    and-int/lit8 v14, v8, 0x3f

    :goto_5e
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_71
    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WM;->A01(III)Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x1

    goto :goto_5e

    :cond_7c
    const/4 v0, 0x0

    goto :goto_50

    :cond_7e
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    goto :goto_1d

    :cond_82
    new-instance v0, Lcom/facebook/ads/redexgen/X/Cp;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/Cp;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/WM;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x33

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

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/WM;->A02:[B

    return-void

    :array_a
    .array-data 1
        0x10t
        0x1t
        0x1t
        0x1dt
        0x18t
        0x12t
        0x10t
        0x5t
        0x18t
        0x1et
        0x1ft
        0x5et
        0x12t
        0x14t
        0x10t
        0x5ct
        0x47t
        0x41t
        0x49t
        0x37t
        0x26t
        0x26t
        0x3at
        0x3ft
        0x35t
        0x37t
        0x22t
        0x3ft
        0x39t
        0x38t
        0x79t
        0x35t
        0x33t
        0x37t
        0x7bt
        0x61t
        0x66t
        0x6et
    .end array-data
.end method

.method private A03(I)Z
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/WM;->A00:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public final A4a()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cv;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public final A4f(ILcom/facebook/ads/redexgen/X/Cs;)Lcom/facebook/ads/redexgen/X/Cv;
    .registers 8

    const/4 v0, 0x2

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_10a

    return-object v3

    :sswitch_6
    new-instance v1, Lcom/facebook/ads/redexgen/X/WJ;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/WJ;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    return-object v0

    :sswitch_11
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cs;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/WE;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WE;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    return-object v0

    :sswitch_1e
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_24
    return-object v3

    :cond_25
    const/4 v2, 0x0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cs;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WN;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/WN;-><init>(ZLjava/lang/String;)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    goto :goto_24

    :sswitch_33
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/WM;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_66

    sget-object v2, Lcom/facebook/ads/redexgen/X/WM;->A03:[Ljava/lang/String;

    const-string v1, "Zsc3HcoanD4hgKlowrimr1mcCeCJ4aqm"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fbfbpCk06enibsJo0cAFVF7ae3oKLvDz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_59

    :goto_58
    return-object v3

    :cond_59
    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Cs;->A01:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/WF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WF;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    goto :goto_58

    :cond_66
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_6c
    new-instance v1, Lcom/facebook/ads/redexgen/X/WG;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/WG;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    return-object v0

    :sswitch_77
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/WM;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_96

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_96
    sget-object v2, Lcom/facebook/ads/redexgen/X/WM;->A03:[Ljava/lang/String;

    const-string v1, "MnHqmUaQQZIE89AoLzdx0BMakHNAXRZh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "UBVzW5fdc0gZ9W3oa8if0wBLwl14wyCB"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_a5

    :goto_a4
    return-object v3

    :cond_a5
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/WM;->A00(Lcom/facebook/ads/redexgen/X/Cs;)Lcom/facebook/ads/redexgen/X/Cp;

    move-result-object v3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/WI;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/WI;-><init>(Lcom/facebook/ads/redexgen/X/Cp;ZZ)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    goto :goto_a4

    :sswitch_bf
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/WM;->A00(Lcom/facebook/ads/redexgen/X/Cs;)Lcom/facebook/ads/redexgen/X/Cp;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/WH;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WH;-><init>(Lcom/facebook/ads/redexgen/X/Cp;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    return-object v0

    :sswitch_ce
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cs;->A02:Ljava/util/List;

    new-instance v1, Lcom/facebook/ads/redexgen/X/WK;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WK;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    return-object v0

    :sswitch_db
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cs;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/WQ;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WQ;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    return-object v0

    :sswitch_e8
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Cs;->A01:Ljava/lang/String;

    new-instance v1, Lcom/facebook/ads/redexgen/X/WL;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/WL;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/WD;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/WD;-><init>(Lcom/facebook/ads/redexgen/X/Cg;)V

    return-object v0

    :sswitch_f5
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(I)Z

    move-result v0

    if-eqz v0, :cond_fe

    :goto_fd
    return-object v3

    :cond_fe
    new-instance v0, Lcom/facebook/ads/redexgen/X/W9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/W9;-><init>()V

    new-instance v3, Lcom/facebook/ads/redexgen/X/WA;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/WA;-><init>(Lcom/facebook/ads/redexgen/X/Co;)V

    goto :goto_fd

    nop

    :sswitch_data_10a
    .sparse-switch
        0x2 -> :sswitch_6
        0x3 -> :sswitch_11
        0x4 -> :sswitch_11
        0xf -> :sswitch_1e
        0x11 -> :sswitch_33
        0x15 -> :sswitch_6c
        0x1b -> :sswitch_77
        0x24 -> :sswitch_bf
        0x59 -> :sswitch_ce
        0x81 -> :sswitch_db
        0x82 -> :sswitch_e8
        0x86 -> :sswitch_f5
        0x87 -> :sswitch_db
        0x8a -> :sswitch_e8
    .end sparse-switch
.end method
