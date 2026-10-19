###### Class com.facebook.ads.redexgen.X.D9 (com.facebook.ads.redexgen.X.D9)
.class public final Lcom/facebook/ads/redexgen/X/D9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/D6;,
        Lcom/facebook/ads/redexgen/X/W0;,
        Lcom/facebook/ads/redexgen/X/Vz;,
        Lcom/facebook/ads/redexgen/X/D8;,
        Lcom/facebook/ads/redexgen/X/D7;
    }
.end annotation


# static fields
.field public static A00:I

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Landroid/util/SparseIntArray;

.field public static final A04:Landroid/util/SparseIntArray;

.field public static final A05:Lcom/facebook/ads/redexgen/X/Cy;

.field public static final A06:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/facebook/ads/redexgen/X/D6;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Cy;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 18

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BAY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ymxL57jYYv0jjQRcHQbZ4WAbO"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "V4mYndI5uaXc7arEQ3TceizUtwuJpZsP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "bvLsrur7DOWvoKolroRaEPylJxsC8CBw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pPHP1LRPBsm50pfT1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "f9saOCuwOfCGSEN51CDIZYerwD3UjJFW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "NB4ZEOXNx"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D9;->A0A()V

    const/16 v2, 0x291

    const/16 v1, 0x16

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cy;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/D9;->A05:Lcom/facebook/ads/redexgen/X/Cy;

    const/16 v2, 0x383

    const/16 v1, 0xa

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/D9;->A08:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/D9;->A06:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/D9;->A00:I

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Lcom/facebook/ads/redexgen/X/D9;->A04:Landroid/util/SparseIntArray;

    const/16 v0, 0x42

    const/4 v14, 0x1

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x4d

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x58

    const/4 v2, 0x4

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x64

    const/16 v7, 0x8

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/facebook/ads/redexgen/X/D9;->A03:Landroid/util/SparseIntArray;

    const/16 v0, 0xa

    invoke-virtual {v1, v0, v14}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v3, 0xd

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x14

    const/16 v6, 0x20

    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x15

    const/16 v13, 0x40

    invoke-virtual {v1, v0, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x16

    const/16 v5, 0x80

    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x1e

    const/16 v12, 0x100

    invoke-virtual {v1, v0, v12}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x1f

    const/16 v3, 0x200

    invoke-virtual {v1, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x400

    invoke-virtual {v1, v6, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x28

    const/16 v0, 0x800

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x29

    const/16 v10, 0x1000

    invoke-virtual {v1, v0, v10}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x2a

    const/16 v0, 0x2000

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x32

    const/16 v9, 0x4000

    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x33

    const v0, 0x8000

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x34

    const/high16 v8, 0x10000

    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/facebook/ads/redexgen/X/D9;->A07:Ljava/util/Map;

    const/16 v15, 0x159

    const/4 v1, 0x3

    const/16 v0, 0x4c

    invoke-static {v15, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v14, 0x160

    const/4 v1, 0x3

    const/16 v0, 0x41

    invoke-static {v14, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x163

    const/4 v1, 0x3

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x166

    const/4 v1, 0x3

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x169

    const/4 v1, 0x3

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x139

    const/4 v1, 0x4

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x13d

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x141

    const/4 v1, 0x4

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x145

    const/4 v1, 0x4

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x149

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x100000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x14d

    const/4 v1, 0x4

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x400000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x151

    const/4 v1, 0x4

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x155

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xdd

    const/4 v1, 0x3

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe0

    const/4 v1, 0x3

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe3

    const/4 v1, 0x3

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe6

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe9

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xbd

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc1

    const/4 v1, 0x4

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc5

    const/4 v1, 0x4

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xc9

    const/4 v1, 0x4

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xcd

    const/4 v1, 0x4

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x200000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xd1

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x800000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xd5

    const/4 v1, 0x4

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x2000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v2, 0xd9

    const/4 v1, 0x4

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    sget v1, Lcom/facebook/ads/redexgen/X/D9;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_3c

    const/4 v4, 0x0

    const/16 v2, 0x3ee

    const/16 v1, 0x9

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/D9;->A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cy;->A0J()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v2

    array-length v1, v2

    :goto_1c
    if-ge v3, v1, :cond_2d

    aget-object v0, v2, v3

    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/D9;->A01(I)I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2d
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_3f

    const v0, 0x54600

    :goto_36
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_3a
    sput v4, Lcom/facebook/ads/redexgen/X/D9;->A00:I

    :cond_3c
    sget v0, Lcom/facebook/ads/redexgen/X/D9;->A00:I

    return v0

    :cond_3f
    const v0, 0x2a300

    goto :goto_36
.end method

.method public static A01(I)I
    .registers 6

    const/high16 v4, 0x900000

    const/high16 v3, 0x200000

    const v2, 0x65400

    const/16 v1, 0x6300

    const v0, 0x18c00

    sparse-switch p0, :sswitch_data_2e

    const/4 v0, -0x1

    return v0

    :sswitch_11
    return v1

    :sswitch_12
    return v1

    :sswitch_13
    return v0

    :sswitch_14
    return v0

    :sswitch_15
    return v0

    :sswitch_16
    const v0, 0x31800

    return v0

    :sswitch_1a
    return v2

    :sswitch_1b
    return v2

    :sswitch_1c
    const v0, 0xe1000

    return v0

    :sswitch_20
    const/high16 v0, 0x140000

    return v0

    :sswitch_23
    return v3

    :sswitch_24
    return v3

    :sswitch_25
    const/high16 v0, 0x220000

    return v0

    :sswitch_28
    const v0, 0x564000

    return v0

    :sswitch_2c
    return v4

    :sswitch_2d
    return v4

    :sswitch_data_2e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_12
        0x8 -> :sswitch_13
        0x10 -> :sswitch_14
        0x20 -> :sswitch_15
        0x40 -> :sswitch_16
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_1b
        0x200 -> :sswitch_1c
        0x400 -> :sswitch_20
        0x800 -> :sswitch_23
        0x1000 -> :sswitch_24
        0x2000 -> :sswitch_25
        0x4000 -> :sswitch_28
        0x8000 -> :sswitch_2c
        0x10000 -> :sswitch_2d
    .end sparse-switch
.end method

.method public static A02(Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    if-nez p0, :cond_4

    return-object v8

    :cond_4
    const/16 v2, 0x381

    const/4 v1, 0x2

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_8e

    :cond_1b
    const/4 v3, -0x1

    :goto_1c
    packed-switch v3, :pswitch_data_a0

    return-object v8

    :sswitch_20
    const/16 v2, 0x3a8

    const/4 v1, 0x4

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v3, 0x2

    goto :goto_1c

    :sswitch_31
    const/16 v2, 0x3ac

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v3, 0x3

    goto :goto_1c

    :sswitch_42
    const/16 v2, 0x3b9

    const/4 v1, 0x4

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :sswitch_52
    const/16 v7, 0x3bd

    const/4 v4, 0x4

    const/16 v3, 0x22

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_6c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6c
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "MmTCu4eMbW5HStPFtCsv7ZFMn3CvoIap"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "LZKP0I4cIbW5T2P3pagUWnAfz2n8Y4ic"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v3, 0x1

    goto :goto_1c

    :pswitch_84
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/D9;->A04(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :pswitch_89
    invoke-static {p0, v5}, Lcom/facebook/ads/redexgen/X/D9;->A03(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_data_8e
    .sparse-switch
        0x2ddf23 -> :sswitch_20
        0x2ddf24 -> :sswitch_31
        0x30d038 -> :sswitch_42
        0x310dbc -> :sswitch_52
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_84
        :pswitch_84
        :pswitch_89
        :pswitch_89
    .end packed-switch
.end method

.method public static A03(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    array-length v5, p1

    const/16 v2, 0xee

    const/16 v1, 0x25

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v2, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ge v5, v4, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2e
    const/4 v5, 0x1

    :try_start_2f
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x6

    if-ne v2, v0, :cond_59

    aget-object v2, p1, v5

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x10

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v2, p1, v5

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_71

    :cond_59
    array-length v2, p1

    const/4 v0, 0x3

    if-lt v2, v0, :cond_d6

    aget-object v0, p1, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v0, p1, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_71
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_71} :catch_eb

    :goto_71
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A04:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ne v3, v4, :cond_9d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x32e

    const/16 v2, 0x15

    const/16 v0, 0x6a

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_9d
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A03:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v4, :cond_c8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x31b

    const/16 v2, 0x13

    const/16 v0, 0x27

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_c8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_d6
    :try_start_d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
    :try_end_eb
    .catch Ljava/lang/NumberFormatException; {:try_start_d6 .. :try_end_eb} :catch_eb

    :catch_eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static A04(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    array-length v5, p1

    const/4 v3, 0x4

    const/16 v2, 0x113

    const/16 v1, 0x26

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v2, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v4

    if-ge v5, v3, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2e
    sget-object v7, Lcom/facebook/ads/redexgen/X/D9;->A08:Ljava/util/regex/Pattern;

    const/4 v5, 0x1

    aget-object v3, p1, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_46

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_46
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "2f"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "5sj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_71
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x35

    const/4 v1, 0x1

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_da

    const/4 v7, 0x1

    :goto_85
    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A07:Ljava/util/Map;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_ce

    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "NDllh4Gk9AYylWORiKA9sy5i8NPghk70"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "TYaXTXlX2Wnboxk1WLU2nbrnETYd3GkV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_eb

    :goto_ab
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x343

    const/16 v1, 0x1b

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_ce
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "pDNfPE2mBOJDzsLiT7ZaRh6hSLEh4IuG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_eb

    goto :goto_ab

    :cond_da
    const/16 v2, 0x36

    const/4 v1, 0x1

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    const/4 v7, 0x2

    goto :goto_85

    :cond_eb
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_f5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x35e

    const/16 v1, 0x1d

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method public static A05()Lcom/facebook/ads/redexgen/X/Cy;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/D9;->A05:Lcom/facebook/ads/redexgen/X/Cy;

    return-object v0
.end method

.method public static A06(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Cy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/D9;->A09(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x0

    :goto_b
    return-object p0

    :cond_c
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/ads/redexgen/X/Cy;

    goto :goto_b
.end method

.method public static A07(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x6d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/D6;Lcom/facebook/ads/redexgen/X/D8;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/D6;",
            "Lcom/facebook/ads/redexgen/X/D8;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Cy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v8, p0

    iget-object v3, v8, Lcom/facebook/ads/redexgen/X/D6;->A00:Ljava/lang/String;

    move-object/from16 p1, p1

    invoke-interface/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/D8;->A6O()I

    move-result v17

    invoke-interface/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/D8;->AEu()Z

    move-result v2

    const/4 v1, 0x0

    :goto_14
    move/from16 v0, v17

    if-ge v1, v0, :cond_14e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/D8;->A6P(I)Landroid/media/MediaCodecInfo;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_14f

    :try_start_22
    move-object/from16 v0, p2

    invoke-static {v10, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/D9;->A0C(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-virtual {v10}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    move/from16 p0, v0

    const/4 v11, 0x0

    :goto_32
    move/from16 v0, p0

    if-ge v11, v0, :cond_10d

    aget-object v5, v9, v11

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_151

    :try_start_3e
    invoke-virtual {v10, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v12}, Lcom/facebook/ads/redexgen/X/D8;->A94(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/D9;->A0D(Ljava/lang/String;)Z

    move-result v13

    if-eqz v2, :cond_61
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4e} :catch_c7

    :try_start_4e
    iget-boolean v15, v8, Lcom/facebook/ads/redexgen/X/D6;->A01:Z

    goto :goto_83
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_51

    :catch_51
    move-exception v15

    goto :goto_c8

    :cond_53
    sget-object v16, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v4, "CD"

    const/4 v0, 0x3

    aput-object v4, v16, v0

    const-string v4, "ZBY"

    const/4 v0, 0x0

    aput-object v4, v16, v0

    if-eq v15, v14, :cond_bc

    :cond_61
    if-nez v2, :cond_96

    :try_start_63
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/D6;->A01:Z

    if-nez v0, :cond_96

    goto :goto_bc
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_68

    :catch_68
    move-exception v15

    sget-object v12, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v4, v12, v0

    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v4, v0, :cond_90

    sget-object v12, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v4, "MyzIrPx41nvhJUnfD"

    const/4 v0, 0x5

    aput-object v4, v12, v0

    goto :goto_c8

    :goto_83
    sget-object v4, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v0, 0x9

    if-eq v4, v0, :cond_53

    :cond_90
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_96
    if-nez v2, :cond_109

    if-eqz v14, :cond_109

    :try_start_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x2e

    const/4 v4, 0x7

    const/4 v0, 0x0

    invoke-static {v15, v4, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    invoke-static {v4, v3, v12, v13, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A02(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_111

    :cond_bc
    :goto_bc
    const/4 v0, 0x0

    invoke-static {v6, v3, v12, v13, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A02(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_109
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception v15

    goto :goto_c8

    :catch_c7
    move-exception v15

    :goto_c8
    :try_start_c8
    sget v14, Lcom/facebook/ads/redexgen/X/Hx;->A02:I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_ca} :catch_151

    const/16 v13, 0x17

    const/16 v12, 0x1a9

    const/16 v4, 0xe

    const/16 v0, 0x26

    invoke-static {v12, v4, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v4

    if-gt v14, v13, :cond_112

    :try_start_d8
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_112

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x30c

    const/16 v5, 0xf

    const/16 v0, 0x73

    invoke-static {v12, v5, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v12, 0x2

    const/16 v5, 0x1f

    const/16 v0, 0x76

    invoke-static {v12, v5, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_109
    :goto_109
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_32

    :cond_10d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    :goto_111
    return-object v7

    :cond_112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa7

    const/16 v1, 0x16

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x21

    const/4 v1, 0x1

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v15

    :cond_14e
    return-object v7
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_14f} :catch_151

    :catch_14f
    move-exception v2

    goto :goto_152

    :catch_151
    move-exception v2

    :goto_152
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/D7;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/D7;-><init>(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/D5;)V

    throw v0
.end method

.method public static declared-synchronized A09(Ljava/lang/String;Z)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Cy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    const-class v9, Lcom/facebook/ads/redexgen/X/D9;

    monitor-enter v9

    :try_start_3
    new-instance v4, Lcom/facebook/ads/redexgen/X/D6;

    invoke-direct {v4, p0, p1}, Lcom/facebook/ads/redexgen/X/D6;-><init>(Ljava/lang/String;Z)V

    sget-object v3, Lcom/facebook/ads/redexgen/X/D9;->A06:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_14
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_c4

    monitor-exit v9

    return-object v0

    :cond_14
    :try_start_14
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/4 v2, 0x0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_bb

    new-instance v6, Lcom/facebook/ads/redexgen/X/Vz;

    invoke-direct {v6, p1}, Lcom/facebook/ads/redexgen/X/Vz;-><init>(Z)V

    :goto_20
    invoke-static {v4, v6, p0}, Lcom/facebook/ads/redexgen/X/D9;->A08(Lcom/facebook/ads/redexgen/X/D6;Lcom/facebook/ads/redexgen/X/D8;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz p1, :cond_88

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-gt v1, v0, :cond_88

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-gt v1, v0, :cond_88

    new-instance v6, Lcom/facebook/ads/redexgen/X/W0;

    invoke-direct {v6, v2}, Lcom/facebook/ads/redexgen/X/W0;-><init>(Lcom/facebook/ads/redexgen/X/D5;)V

    invoke-static {v4, v6, p0}, Lcom/facebook/ads/redexgen/X/D9;->A08(Lcom/facebook/ads/redexgen/X/D6;Lcom/facebook/ads/redexgen/X/D8;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    const/16 v2, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x176

    const/16 v1, 0x33

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v2, 0x22

    const/16 v1, 0xc

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cy;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_88
    const/16 v2, 0x39a

    const/16 v1, 0xe

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    const/16 v2, 0x390

    const/16 v1, 0xa

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, v4, Lcom/facebook/ads/redexgen/X/D6;->A01:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/D6;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/D6;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v6, p0}, Lcom/facebook/ads/redexgen/X/D9;->A08(Lcom/facebook/ads/redexgen/X/D6;Lcom/facebook/ads/redexgen/X/D8;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b0
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/D9;->A0B(Ljava/util/List;)V

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c2

    :cond_bb
    new-instance v6, Lcom/facebook/ads/redexgen/X/W0;

    invoke-direct {v6, v2}, Lcom/facebook/ads/redexgen/X/W0;-><init>(Lcom/facebook/ads/redexgen/X/D5;)V

    goto/16 :goto_20
    :try_end_c2
    .catchall {:try_start_14 .. :try_end_c2} :catchall_c4

    :goto_c2
    monitor-exit v9

    return-object v0

    :catchall_c4
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static A0A()V
    .registers 4

    const/16 v3, 0x421

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_17
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "WfhNiOeVQzQSnYcncz46tqnXb"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/facebook/ads/redexgen/X/D9;->A01:[B

    return-void

    :array_26
    .array-data 1
        -0x39t
        -0x31t
        0x3t
        0xbt
        0x49t
        0x44t
        0x4ct
        0x4ft
        0x48t
        0x47t
        0x3t
        0x57t
        0x52t
        0x3t
        0x54t
        0x58t
        0x48t
        0x55t
        0x5ct
        0x3t
        0x46t
        0x44t
        0x53t
        0x44t
        0x45t
        0x4ct
        0x4ft
        0x4ct
        0x57t
        0x4ct
        0x48t
        0x56t
        0xct
        -0x9t
        -0x5ct
        -0x6at
        -0x49t
        -0x17t
        -0x17t
        -0x15t
        -0x1dt
        -0x21t
        -0x1ct
        -0x23t
        -0x50t
        -0x6at
        -0x65t
        -0x20t
        -0x2et
        -0x30t
        -0x1et
        -0x21t
        -0x2et
        -0x1t
        -0x1ct
        0x1et
        0x1at
        0x1et
        0x3dt
        0x2dt
        0xdt
        0xdt
        0xft
        0x10t
        0x31t
        0x2ft
        0x3bt
        0x30t
        0x31t
        0x3et
        -0x1dt
        -0x2ft
        -0x2bt
        -0x30t
        -0x2ct
        0xat
        -0x8t
        -0x4t
        -0x9t
        -0x4t
        -0x2ct
        -0x3et
        -0x39t
        -0x3ft
        -0x3bt
        -0x1ft
        -0x31t
        -0x2ct
        -0x32t
        -0x2dt
        -0x49t
        -0x56t
        -0x56t
        -0x5ct
        -0x5at
        -0x41t
        -0x4et
        -0x4et
        -0x54t
        -0x51t
        -0xdt
        -0x1at
        -0x1at
        -0x20t
        -0x1at
        -0x48t
        -0x55t
        -0x55t
        -0x5at
        -0x55t
        -0x3dt
        -0x37t
        -0x30t
        -0x3ft
        -0x3ft
        -0x3dt
        -0x3ct
        -0x1bt
        -0x1dt
        -0x11t
        -0x1ct
        -0x1bt
        -0xet
        -0x2dt
        -0x27t
        -0x20t
        -0x2ft
        -0x23t
        -0x1et
        -0x22t
        -0x2et
        -0x2ct
        -0xbt
        -0xdt
        -0x1t
        -0xct
        -0xbt
        0x2t
        0x2bt
        0x31t
        0x38t
        0x35t
        0x38t
        0x1bt
        0x2ct
        0x4dt
        0x4bt
        0x57t
        0x4ct
        0x4dt
        0x5at
        -0x24t
        -0x1et
        -0x17t
        -0x11t
        0x8t
        0xbt
        -0x5t
        0x2t
        0xct
        -0x23t
        -0x2t
        -0x4t
        0x8t
        -0x3t
        -0x2t
        0xbt
        -0x44t
        -0x29t
        -0x21t
        -0x1et
        -0x25t
        -0x26t
        -0x6at
        -0x16t
        -0x1bt
        -0x6at
        -0x19t
        -0x15t
        -0x25t
        -0x18t
        -0x11t
        -0x6at
        -0x27t
        -0x1bt
        -0x26t
        -0x25t
        -0x27t
        -0x6at
        -0x43t
        -0x5at
        -0x59t
        -0x5bt
        0x31t
        0x1at
        0x1bt
        0x1ct
        0x19t
        0x2t
        0x6t
        0x1t
        0x30t
        0x19t
        0x1dt
        0x1bt
        -0x1ft
        -0x36t
        -0x32t
        -0x31t
        -0x40t
        -0x57t
        -0x50t
        -0x58t
        -0x3ct
        -0x53t
        -0x4ct
        -0x51t
        0x12t
        -0x5t
        0x2t
        0x0t
        -0x3t
        -0x18t
        -0x1bt
        -0x5t
        -0x17t
        -0x1dt
        0x2ct
        0x1at
        0x17t
        -0x4bt
        -0x5at
        -0x63t
        0x12t
        0x3t
        -0x3t
        0x13t
        0x18t
        -0x14t
        0xat
        0x11t
        0x12t
        0x15t
        0xct
        0x11t
        0xat
        -0x3dt
        0x10t
        0x4t
        0xft
        0x9t
        0x12t
        0x15t
        0x10t
        0x8t
        0x7t
        -0x3dt
        -0x1ct
        -0x7t
        -0x1at
        -0x3dt
        0x6t
        0x12t
        0x7t
        0x8t
        0x6t
        -0x3dt
        0x16t
        0x17t
        0x15t
        0xct
        0x11t
        0xat
        -0x23t
        -0x3dt
        -0x12t
        0xct
        0x13t
        0x14t
        0x17t
        0xet
        0x13t
        0xct
        -0x3bt
        0x12t
        0x6t
        0x11t
        0xbt
        0x14t
        0x17t
        0x12t
        0xat
        0x9t
        -0x3bt
        -0x13t
        -0x16t
        -0x5t
        -0x18t
        -0x3bt
        0x8t
        0x14t
        0x9t
        0xat
        0x8t
        -0x3bt
        0x18t
        0x19t
        0x17t
        0xet
        0x13t
        0xct
        -0x21t
        -0x3bt
        0x8t
        -0x13t
        -0x12t
        -0x14t
        -0x23t
        -0x3et
        -0x3dt
        -0x3ct
        -0x11t
        -0x2ct
        -0x28t
        -0x2dt
        0x6t
        -0x15t
        -0x11t
        -0x13t
        0x3t
        -0x18t
        -0x14t
        -0x13t
        -0x3dt
        -0x58t
        -0x51t
        -0x59t
        -0x5t
        -0x20t
        -0x19t
        -0x1et
        -0x32t
        -0x4dt
        -0x46t
        -0x48t
        0x5t
        -0x14t
        -0x17t
        -0x14t
        -0x2dt
        -0x2at
        0x8t
        -0x6t
        -0x1ct
        -0x22t
        -0x3et
        -0x54t
        -0x57t
        0x1ct
        0x9t
        0x0t
        -0x1t
        -0x14t
        -0x1at
        0x20t
        0x23t
        0x6t
        0x17t
        0x38t
        0x36t
        0x42t
        0x37t
        0x38t
        0x45t
        0xat
        0x22t
        0x21t
        0x26t
        0x1et
        0x0t
        0x2ct
        0x21t
        0x22t
        0x20t
        0x9t
        0x26t
        0x30t
        0x31t
        -0x23t
        -0x2t
        0xdt
        0x6t
        -0x23t
        0x21t
        0x26t
        0x21t
        0x2bt
        -0x1ct
        0x31t
        -0x23t
        0x29t
        0x26t
        0x30t
        0x31t
        -0x23t
        0x30t
        0x22t
        0x20t
        0x32t
        0x2ft
        0x22t
        -0x23t
        0x21t
        0x22t
        0x20t
        0x2ct
        0x21t
        0x22t
        0x2ft
        -0x23t
        0x23t
        0x2ct
        0x2ft
        -0x9t
        -0x23t
        -0x20t
        -0x8t
        -0x9t
        -0x4t
        -0xct
        -0x2at
        0x2t
        -0x9t
        -0x8t
        -0xat
        -0x18t
        0x7t
        -0x4t
        -0x1t
        -0x3at
        -0x23t
        -0x10t
        -0x13t
        -0x15t
        -0x68t
        -0x57t
        -0x58t
        0x30t
        0x25t
        0x33t
        0x30t
        0x2at
        0x25t
        0xet
        0x39t
        0x36t
        0x14t
        0x6t
        0x4t
        0xft
        -0x1bt
        -0x4t
        0x2ft
        0x30t
        0x25t
        0x26t
        0x2at
        -0x1bt
        -0x8t
        -0x8t
        -0x6t
        -0x1bt
        -0x5t
        0x1ct
        0x1at
        0x26t
        0x1bt
        0x1ct
        0x29t
        0x1t
        -0x1t
        0xat
        -0x20t
        -0x9t
        0x2at
        0x2bt
        0x20t
        0x21t
        0x25t
        -0x20t
        -0xdt
        0x8t
        -0xbt
        -0x20t
        -0xat
        0x17t
        0x15t
        0x21t
        0x16t
        0x17t
        0x24t
        0xct
        0xat
        0x15t
        -0x15t
        0x2t
        0x35t
        0x36t
        0x2bt
        0x2ct
        0x30t
        -0x15t
        -0x2t
        0x13t
        0x0t
        -0x15t
        0x1t
        0x22t
        0x20t
        0x2ct
        0x21t
        0x22t
        0x2ft
        -0x15t
        0x30t
        0x22t
        0x20t
        0x32t
        0x2ft
        0x22t
        -0x36t
        -0x38t
        -0x2dt
        -0x57t
        -0x38t
        -0x31t
        -0x3at
        -0x57t
        -0x44t
        -0x30t
        -0x41t
        -0x3ct
        -0x36t
        -0x57t
        -0x41t
        -0x40t
        -0x42t
        -0x36t
        -0x41t
        -0x40t
        -0x33t
        -0x57t
        -0x44t
        -0x44t
        -0x42t
        0x8t
        0x6t
        0x11t
        -0x19t
        0x6t
        0xdt
        0x4t
        -0x19t
        -0x6t
        0xet
        -0x3t
        0x2t
        0x8t
        -0x19t
        -0x3t
        -0x2t
        -0x4t
        0x8t
        -0x3t
        -0x2t
        0xbt
        -0x19t
        -0x3t
        0xct
        0x9t
        -0x6t
        -0x4t
        -0x14t
        0x2bt
        0x29t
        0x34t
        0xat
        0x29t
        0x30t
        0x27t
        0xat
        0x1dt
        0x31t
        0x20t
        0x25t
        0x2bt
        0xat
        0x20t
        0x21t
        0x1ft
        0x2bt
        0x20t
        0x21t
        0x2et
        0xat
        0x2et
        0x1dt
        0x33t
        -0x26t
        -0x28t
        -0x1dt
        -0x47t
        -0x22t
        -0x30t
        -0x32t
        -0x47t
        -0x28t
        -0x25t
        -0x42t
        -0x47t
        -0x31t
        -0x10t
        -0x12t
        -0x6t
        -0x11t
        -0x10t
        -0x3t
        -0xft
        -0x11t
        -0x6t
        -0x30t
        -0xbt
        -0x19t
        -0x1bt
        -0x30t
        0x3t
        0x3t
        0x5t
        -0x30t
        0x6t
        0x7t
        0x5t
        -0x3et
        -0x40t
        -0x35t
        -0x5ft
        -0x3at
        -0x48t
        -0x4at
        -0x5ft
        -0x17t
        -0x1dt
        -0x55t
        -0x5ft
        -0x29t
        -0x28t
        -0x2at
        -0x7t
        -0x9t
        0x2t
        -0x28t
        0x11t
        0x19t
        0x19t
        0x11t
        0x16t
        0xft
        -0x28t
        0x1ct
        0xbt
        0x21t
        -0x28t
        0xet
        0xft
        0xdt
        0x19t
        0xet
        0xft
        0x1ct
        0xbt
        0x9t
        0x14t
        -0x16t
        0x2dt
        0x1ft
        0x2bt
        0x29t
        -0x16t
        0x1dt
        0x31t
        0x20t
        0x25t
        0x2bt
        -0x16t
        0x20t
        0x21t
        0x1ft
        0x2bt
        0x20t
        0x21t
        0x2et
        -0x16t
        0x1dt
        0x1dt
        0x1ft
        0xet
        0xct
        0x17t
        -0x13t
        0x30t
        0x22t
        0x2et
        0x2ct
        -0x13t
        0x20t
        0x34t
        0x23t
        0x28t
        0x2et
        -0x13t
        0x23t
        0x24t
        0x22t
        0x2et
        0x23t
        0x24t
        0x31t
        -0x13t
        0x2ct
        0x2ft
        -0xet
        0x18t
        0x16t
        0x21t
        -0x9t
        0x3at
        0x2ct
        0x38t
        0x36t
        -0x9t
        0x3ft
        0x32t
        0x2dt
        0x2et
        0x38t
        -0x9t
        0x2dt
        0x2et
        0x2ct
        0x38t
        0x2dt
        0x2et
        0x3bt
        -0x9t
        0x3ft
        0x39t
        0x1t
        0x3ft
        0x2ft
        0x19t
        0x1ct
        0x20t
        0x33t
        -0x20t
        -0x30t
        -0x46t
        -0x43t
        -0x3et
        -0x2ct
        0x31t
        0x21t
        0x34t
        0x11t
        0xft
        0x38t
        0x34t
        0x12t
        0x15t
        0x17t
        0x2at
        0x33t
        0x4bt
        0x49t
        0x50t
        0x50t
        0x49t
        0x4et
        0x47t
        0x0t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x43t
        0x0t
        -0x17t
        0x2t
        -0x1t
        0x2t
        0x3t
        0xbt
        0x2t
        -0x4ct
        -0x2bt
        -0x16t
        -0x29t
        -0x4ct
        0x0t
        -0x7t
        0xat
        -0x7t
        0x0t
        -0x32t
        -0x4ct
        0x2ct
        0x45t
        0x42t
        0x45t
        0x46t
        0x4et
        0x45t
        -0x9t
        0x18t
        0x2dt
        0x1at
        -0x9t
        0x47t
        0x49t
        0x46t
        0x3dt
        0x40t
        0x43t
        0x3ct
        0x11t
        -0x9t
        0xct
        0x25t
        0x22t
        0x25t
        0x26t
        0x2et
        0x25t
        -0x29t
        -0x1t
        -0x4t
        0xdt
        -0x6t
        -0x29t
        0x23t
        0x1ct
        0x2dt
        0x1ct
        0x23t
        -0x29t
        0x2at
        0x2bt
        0x29t
        0x20t
        0x25t
        0x1et
        -0xft
        -0x29t
        0x32t
        0x4bt
        0x48t
        0x4bt
        0x4ct
        0x54t
        0x4bt
        -0x3t
        0x25t
        0x22t
        0x33t
        0x20t
        -0x3t
        0x4dt
        0x4ft
        0x4ct
        0x43t
        0x46t
        0x49t
        0x42t
        -0x3t
        0x50t
        0x51t
        0x4ft
        0x46t
        0x4bt
        0x44t
        0x17t
        -0x3t
        -0x7t
        0xat
        0x2t
        0x10t
        0xet
        0xat
        0x1et
        -0x10t
        -0x22t
        -0x24t
        -0x3ct
        -0x41t
        -0x58t
        -0x24t
        -0x1ct
        -0x55t
        -0x57t
        -0x5ct
        0x3et
        0x14t
        0xdt
        0x19t
        0x2dt
        0x1ct
        0x21t
        0x27t
        -0x19t
        0x1dt
        0x19t
        0x1bt
        -0x15t
        0x0t
        0x14t
        0x3t
        0x8t
        0xet
        -0x32t
        0x4t
        0x0t
        0x2t
        -0x2et
        -0x34t
        0x9t
        0xet
        0x2t
        -0x19t
        -0x4t
        -0x17t
        -0x49t
        0x42t
        0x57t
        0x44t
        0x13t
        0x49t
        0x17t
        0x4t
        0xct
        0x18t
        0x15t
        0x2at
        0x28t
        0x28t
        -0x12t
        -0x15t
        -0x4t
        -0x49t
        -0x9t
        0x5t
        -0xet
        -0x40t
        0x11t
        0xdt
        0x13t
        0x1bt
        0xct
        -0x8t
        -0x14t
        -0x3t
        -0xct
        -0x7t
        -0x10t
        -0x9t
        -0x1t
        -0x10t
        -0x14t
        -0x1t
        -0x1t
        0xct
        0xet
        0xbt
        0x10t
        0xbt
        0x11t
        -0x14t
        -0x26t
        -0x1at
        -0x14t
        -0x12t
        -0x19t
        -0x20t
        -0x1dt
        -0x2ft
        -0x22t
        -0x1ct
        -0x21t
        -0x1dt
        -0x6t
        -0x14t
        -0x7t
        -0x7t
        -0x18t
        -0xbt
        -0xat
        -0x3t
        -0x47t
        0x9t
        -0x4t
        -0x9t
        -0x8t
        0x2t
        -0x3et
        -0xct
        0x9t
        -0xat
        0x2bt
        0x1et
        0x21t
        0x21t
        0x1at
        0x2at
        0x1dt
        0x20t
        0x20t
        0x19t
        0x17t
        -0x1at
        0x35t
        0x28t
        0x2bt
        0x2bt
        0x24t
        0x2ft
        0x2bt
        0x34t
        0x32t
        0x2t
        -0x13t
        -0xat
        -0xct
        -0x4t
        -0x13t
        0x60t
        0x4bt
        0x58t
        0x55t
        0x4ct
        0x52t
        0x5at
        0x4bt
        0x2t
        -0x13t
        -0x6t
        -0x9t
        -0xct
        -0x4t
        -0x13t
    .end array-data
.end method

.method public static A0B(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Cy;",
            ">;)V"
        }
    .end annotation

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_4b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_4b

    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cy;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    const/16 v2, 0x247

    const/16 v1, 0x19

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v4, 0x1

    :goto_27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_4b

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Cy;

    const/16 v2, 0x291

    const/16 v1, 0x16

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4b
    return-void

    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_27
.end method

.method public static A0C(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 11

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    const/4 p0, 0x0

    if-nez v0, :cond_17

    if-nez p2, :cond_18

    const/16 v2, 0x2e

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    return p0

    :cond_18
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_bf

    const/16 v5, 0x6e

    const/16 v4, 0xd

    const/16 v3, 0x13

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_37

    :goto_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_37
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "hakUGYeRw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    const/16 v2, 0x8a

    const/16 v1, 0xd

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    const/16 v2, 0x97

    const/16 v1, 0x10

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    const/16 v5, 0x7b

    const/16 v4, 0xf

    const/16 v3, 0x23

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_a8

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    :goto_87
    const/16 v2, 0x3c

    const/16 v1, 0xa

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    const/16 v2, 0x16c

    const/16 v1, 0xa

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    :cond_a7
    return p0

    :cond_a8
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "EEwaDdP6hCUFsSlrf0IgL40CqnGWtmyD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "0sHU723LRgirr3xWcDqxLM5fqrJixtiS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto :goto_87

    :cond_bf
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_d6

    const/16 v2, 0x260

    const/16 v1, 0x13

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    return p0

    :cond_d6
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-ge v0, v3, :cond_15a

    const/16 v2, 0x212

    const/16 v1, 0x19

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_131

    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "I2XnTXPHshEGYaXC6U4zicLut"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    :goto_fe
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x38d

    const/4 v1, 0x3

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_159

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    const/16 v2, 0x37b

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_13f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_131
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "WA2DMfsAb4qPRbwhTckvxt3Oj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    goto :goto_fe

    :cond_13f
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "ikTWzPZnBqNKNF5U8hE3rEiIh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_15a

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0xec

    const/4 v1, 0x2

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    :cond_159
    return p0

    :cond_15a
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v4, 0x10

    if-ne v0, v4, :cond_23d

    const/16 v2, 0x2c1

    const/16 v1, 0x1a

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23d

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3b2

    const/4 v1, 0x4

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3d2

    const/4 v1, 0x6

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3f7

    const/4 v1, 0x5

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x403

    const/16 v1, 0x9

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3fc

    const/4 v1, 0x7

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3b6

    const/4 v1, 0x3

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x5a

    const/4 v1, 0x5

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x5f

    const/4 v1, 0x5

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x64

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x69

    const/4 v1, 0x5

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x15c

    const/4 v1, 0x4

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x306

    const/4 v1, 0x6

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23d

    :cond_23c
    return p0

    :cond_23d
    sget v3, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_24e

    goto/16 :goto_31

    :cond_24e
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "tnRGvETTi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_2d9

    const/16 v2, 0x2a7

    const/16 v1, 0x1a

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x46

    const/4 v1, 0x5

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x4b

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c3

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v4, 0x50

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_2c4

    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "Sr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "zUD"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v1, 0x3

    const/4 v0, 0x3

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c3

    :goto_2b2
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x55

    const/4 v1, 0x5

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d9

    :cond_2c3
    return p0

    :cond_2c4
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "DeHWw2fWCjgMmVyUN9OyqRVSX"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v1, 0x5

    const/16 v0, 0x24

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c3

    goto :goto_2b2

    :cond_2d9
    sget v4, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v3, 0x18

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_2ee

    goto/16 :goto_31

    :cond_2ee
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "Ia"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "P3O"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/16 v2, 0x3d8

    const/4 v1, 0x7

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v6

    if-ge v4, v3, :cond_3f3

    const/16 v2, 0x273

    const/16 v1, 0xf

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_3e8

    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "KiHLQPnXR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v3, :cond_339

    :goto_329
    const/16 v2, 0x1c9

    const/16 v1, 0x16

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    :cond_339
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_3d9

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    :goto_34e
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x412

    const/16 v1, 0x8

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x41a

    const/4 v1, 0x7

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x40c

    const/4 v1, 0x6

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x2fb

    const/4 v1, 0x6

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3c6

    const/16 v1, 0xc

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x37

    const/4 v1, 0x5

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x2f5

    const/4 v1, 0x6

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d8

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x301

    const/4 v1, 0x5

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    :cond_3d8
    return p0

    :cond_3d9
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "xnGQuYocR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f3

    goto/16 :goto_34e

    :cond_3e8
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "37Lb1d6thx8YO69UbmwcSx6lm"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_339

    goto/16 :goto_329

    :cond_3f3
    sget v3, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v2, 0x3c1

    const/4 v1, 0x5

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x13

    if-gt v3, v5, :cond_480

    const/16 v2, 0x282

    const/16 v1, 0xf

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_480

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x19

    if-eq v1, v0, :cond_472

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_480

    :goto_426
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3b0

    const/4 v1, 0x2

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_471

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3e5

    const/4 v1, 0x7

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_471

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_471

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3df

    const/4 v1, 0x6

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_471

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    const/16 v2, 0x3ec

    const/4 v1, 0x2

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_480

    :cond_471
    return p0

    :cond_472
    sget-object v2, Lcom/facebook/ads/redexgen/X/D9;->A02:[Ljava/lang/String;

    const-string v1, "blvbufqIPxoQJr0fY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_480

    goto :goto_426

    :cond_480
    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    if-gt v0, v5, :cond_49d

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49d

    const/16 v2, 0x2db

    const/16 v1, 0x1a

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49d

    return p0

    :cond_49d
    const/16 v2, 0x39a

    const/16 v1, 0xe

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4be

    const/16 v2, 0x22b

    const/16 v1, 0x1c

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4be

    return p0

    :cond_4be
    const/4 v0, 0x1

    return v0
.end method

.method public static A0D(Ljava/lang/String;)Z
    .registers 5

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_4c

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x1bf

    const/16 v1, 0xa

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const/16 v2, 0x1b7

    const/16 v1, 0x8

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_2a
    const/16 v2, 0x1df

    const/16 v1, 0x16

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/16 v2, 0x1f5

    const/16 v1, 0x1d

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D9;->A07(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_4a
    const/4 v0, 0x1

    :goto_4b
    return v0

    :cond_4c
    const/4 v0, 0x0

    goto :goto_4b
.end method
