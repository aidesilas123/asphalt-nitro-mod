###### Class com.facebook.ads.redexgen.X.C4D (com.facebook.ads.redexgen.X.4D)
.class public final Lcom/facebook/ads/redexgen/X/4D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ZD;,
        Lcom/facebook/ads/redexgen/X/4C;
    }
.end annotation


# static fields
.field public static A04:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/facebook/ads/redexgen/X/4C;",
            ">;"
        }
    .end annotation
.end field

.field public static A05:[B

.field public static A06:[Ljava/lang/String;

.field public static final A07:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/facebook/ads/redexgen/X/4D;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/ED;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/4C;",
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

    const-string v0, "C"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "thIgEQWd9nx"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nKFIv9xSQBz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WKzZJ6F0j2u08DpGCnjDR9E"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2Nt4JwZoKXCf4OpJNcF1oxTto7W5gJbD"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4D;->A03()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4D;->A07:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4B;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4B;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4D;->A04:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/ED;IJ)Lcom/facebook/ads/redexgen/X/4u;
    .registers 9

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/4D;->A08(Lcom/facebook/ads/redexgen/X/ED;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/ED;->A0r:Lcom/facebook/ads/redexgen/X/4k;

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->A1L()V

    invoke-virtual {v3, p2, v2, p3, p4}, Lcom/facebook/ads/redexgen/X/4k;->A0I(IZJ)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0a()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4k;->A0X(Landroid/view/View;)V

    goto :goto_29

    :cond_26
    invoke-virtual {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/4k;->A0d(Lcom/facebook/ads/redexgen/X/4u;Z)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2d

    :cond_29
    :goto_29
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/ED;->A1r(Z)V

    return-object v1

    :catchall_2d
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/ED;->A1r(Z)V

    throw v0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4D;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x8

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_8
    const/4 v2, 0x0

    if-ge v3, v9, :cond_26

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/ED;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/ZD;->A04(Lcom/facebook/ads/redexgen/X/ED;Z)V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/ZD;->A00:I

    add-int/2addr v4, v0

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_26
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v8, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_44

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_44
    sget-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const-string v1, "OH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "7S"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v7, 0x0

    :goto_51
    if-ge v7, v9, :cond_b3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/ED;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_64

    :cond_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_64
    iget-object v5, v6, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/ZD;->A01:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v0, v5, Lcom/facebook/ads/redexgen/X/ZD;->A02:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v4, v0

    const/4 v3, 0x0

    :goto_74
    iget v0, v5, Lcom/facebook/ads/redexgen/X/ZD;->A00:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v3, v0, :cond_61

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v8, v0, :cond_aa

    new-instance v0, Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4C;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8c
    iget-object v2, v5, Lcom/facebook/ads/redexgen/X/ZD;->A03:[I

    add-int/lit8 v1, v3, 0x1

    aget v2, v2, v1

    if-gt v2, v4, :cond_a8

    const/4 v1, 0x1

    :goto_95
    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/4C;->A04:Z

    iput v4, v0, Lcom/facebook/ads/redexgen/X/4C;->A02:I

    iput v2, v0, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    iput-object v6, v0, Lcom/facebook/ads/redexgen/X/4C;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/ZD;->A03:[I

    aget v1, v1, v3

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4C;->A01:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_74

    :cond_a8
    const/4 v1, 0x0

    goto :goto_95

    :cond_aa
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4C;

    goto :goto_8c

    :cond_b3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    sget-object v0, Lcom/facebook/ads/redexgen/X/4D;->A04:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x1d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4D;->A05:[B

    return-void

    :array_a
    .array-data 1
        0x61t
        0x65t
        0x2ft
        0x5dt
        0x74t
        -0x7et
        -0x7dt
        0x74t
        0x73t
        0x2ft
        0x5ft
        -0x7ft
        0x74t
        0x75t
        0x74t
        -0x7dt
        0x72t
        0x77t
        0x5ct
        0x60t
        0x2at
        0x5at
        0x7ct
        0x6ft
        0x70t
        0x6ft
        0x7et
        0x6dt
        0x72t
    .end array-data
.end method

.method private A04(J)V
    .registers 6

    const/4 v2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_15

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A03:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4C;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4C;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-nez v0, :cond_16

    :cond_15
    return-void

    :cond_16
    invoke-direct {p0, v1, p1, p2}, Lcom/facebook/ads/redexgen/X/4D;->A06(Lcom/facebook/ads/redexgen/X/4C;J)V

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4C;->A00()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private final A05(J)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4D;->A02()V

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4D;->A04(J)V

    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/4C;J)V
    .registers 8

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A04:Z

    if-eqz v0, :cond_2f

    const-wide v1, 0x7fffffffffffffffL

    :goto_9
    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/4C;->A03:Lcom/facebook/ads/redexgen/X/ED;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A01:I

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/4D;->A00(Lcom/facebook/ads/redexgen/X/ED;IJ)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A09:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2e

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0a()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A09:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/ED;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/4D;->A07(Lcom/facebook/ads/redexgen/X/ED;J)V

    :cond_2e
    return-void

    :cond_2f
    move-wide v1, p2

    goto :goto_9
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/ED;J)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/ED;->A0C:Z

    if-eqz v0, :cond_26

    iget-object v3, p1, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_77

    sget-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const-string v1, "t2x0aSlbBonOFe0N5m1ttILNz4IaYpUW"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/40;->A06()I

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->A1O()V

    :cond_26
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    const/4 v0, 0x1

    invoke-virtual {v4, p1, v0}, Lcom/facebook/ads/redexgen/X/ZD;->A04(Lcom/facebook/ads/redexgen/X/ED;Z)V

    iget v0, v4, Lcom/facebook/ads/redexgen/X/ZD;->A00:I

    if-eqz v0, :cond_76

    :try_start_30
    const/4 v2, 0x0

    const/16 v1, 0x12

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4D;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2e;->A01(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/ED;->A0s:Lcom/facebook/ads/redexgen/X/4r;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ED;->A04:Lcom/facebook/ads/redexgen/X/4Q;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4r;->A05(Lcom/facebook/ads/redexgen/X/4Q;)V

    const/4 v3, 0x0

    :goto_43
    iget v0, v4, Lcom/facebook/ads/redexgen/X/ZD;->A00:I
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_6e

    mul-int/lit8 v5, v0, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_77

    sget-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const-string v1, "nG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "TD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_73

    :try_start_64
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/ZD;->A03:[I

    aget v0, v0, v3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/4D;->A00(Lcom/facebook/ads/redexgen/X/ED;IJ)Lcom/facebook/ads/redexgen/X/4u;

    add-int/lit8 v3, v3, 0x2

    goto :goto_43
    :try_end_6e
    .catchall {:try_start_64 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2e;->A00()V

    throw v0

    :cond_73
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2e;->A00()V

    :cond_76
    return-void

    :cond_77
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/ED;I)Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/40;->A06()I

    move-result v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ED;->A01:Lcom/facebook/ads/redexgen/X/40;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/40;->A0A(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ED;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4u;->A03:I

    if-ne v0, p1, :cond_1f

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_22
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A09(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/ED;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/ED;II)V
    .registers 9

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:J

    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/ED;->post(Ljava/lang/Runnable;)Z

    :cond_17
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/ED;->A02:Lcom/facebook/ads/redexgen/X/ZD;

    invoke-virtual {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/ZD;->A03(II)V

    return-void
.end method

.method public final run()V
    .registers 11

    const-wide/16 v4, 0x0

    :try_start_2
    const/16 v2, 0x12

    const/16 v1, 0xb

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4D;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2e;->A01(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_76

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:J

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2e;->A00()V

    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-wide/16 v1, 0x0

    const/4 v8, 0x0

    :goto_25
    if-ge v8, v9, :cond_40

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ED;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/ED;->getDrawingTime()J

    move-result-wide v6

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    :cond_40
    cmp-long v0, v1, v4

    if-nez v0, :cond_64
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_76

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5e

    sget-object v2, Lcom/facebook/ads/redexgen/X/4D;->A06:[Ljava/lang/String;

    const-string v1, "H4nD1dOrFb1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2e;->A00()V

    return-void

    :cond_5e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_64
    :try_start_64
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A00:J

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/4D;->A05(J)V
    :try_end_70
    .catchall {:try_start_64 .. :try_end_70} :catchall_76

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:J

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2e;->A00()V

    return-void

    :catchall_76
    move-exception v0

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:J

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2e;->A00()V

    throw v0
.end method

###### Class com.facebook.ads.redexgen.X.C4B (com.facebook.ads.redexgen.X.4B)
.class public final Lcom/facebook/ads/redexgen/X/4B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/facebook/ads/redexgen/X/4C;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4C;Lcom/facebook/ads/redexgen/X/4C;)I
    .registers 7

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A03:Lcom/facebook/ads/redexgen/X/ED;

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    const/4 v1, 0x1

    :goto_7
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_c
    if-eq v1, v0, :cond_19

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A03:Lcom/facebook/ads/redexgen/X/ED;

    if-nez v0, :cond_13

    :goto_12
    return v2

    :cond_13
    const/4 v2, -0x1

    goto :goto_12

    :cond_15
    const/4 v0, 0x0

    goto :goto_c

    :cond_17
    const/4 v1, 0x0

    goto :goto_7

    :cond_19
    iget-boolean v1, p1, Lcom/facebook/ads/redexgen/X/4C;->A04:Z

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A04:Z

    if-eq v1, v0, :cond_25

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A04:Z

    if-eqz v0, :cond_24

    const/4 v2, -0x1

    :cond_24
    return v2

    :cond_25
    iget v1, p2, Lcom/facebook/ads/redexgen/X/4C;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4C;->A02:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_2d

    return v1

    :cond_2d
    iget v1, p1, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4C;->A00:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_35

    return v1

    :cond_35
    return v3
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/facebook/ads/redexgen/X/4C;

    check-cast p2, Lcom/facebook/ads/redexgen/X/4C;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4B;->A00(Lcom/facebook/ads/redexgen/X/4C;Lcom/facebook/ads/redexgen/X/4C;)I

    move-result v0

    return v0
.end method
