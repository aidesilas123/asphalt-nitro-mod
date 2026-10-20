###### Class com.facebook.ads.redexgen.X.AnonymousClass40 (com.facebook.ads.redexgen.X.40)
.class public final Lcom/facebook/ads/redexgen/X/40;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3z;,
        Lcom/facebook/ads/redexgen/X/3y;
    }
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/3y;

.field public final A01:Lcom/facebook/ads/redexgen/X/3z;

.field public final A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
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

    const-string v0, "QoGKHhEqLDc7cPbroRD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LQzzwNJ4o6QHlfYkxXGOUA5ejYw8qpDj"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6ipC3ASGLl4rMOedI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "OPBJh0aCf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "l4bQelOwEyQeTpTSi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DWBJmVB67PV4ItRyT2e9caL16z1NK91I"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0G1mJvoVA"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nRnK55wdJbrp31Rh0MWe0TNMbF4aeg8Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/40;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3z;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/3y;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    return-void
.end method

.method private A00(I)I
    .registers 6

    const/4 v3, -0x1

    if-gez p1, :cond_4

    return v3

    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3z;->A6I()I

    move-result v2

    move v1, p1

    :goto_b
    if-ge v1, v2, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A03(I)I

    move-result v0

    sub-int v0, v1, v0

    sub-int v0, p1, v0

    if-nez v0, :cond_24

    :goto_19
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_24
    add-int/2addr v1, v0

    goto :goto_b

    :cond_26
    return v1

    :cond_27
    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4e

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
    .registers 4

    const/16 v3, 0x5a

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_16

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_16
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const-string v1, "YzFnrN17WwgSKMGcQI3u7PJ5Pdf81qGi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/facebook/ads/redexgen/X/40;->A03:[B

    return-void

    nop

    :array_26
    .array-data 1
        -0x51t
        -0x5dt
        -0x15t
        -0x14t
        -0x19t
        -0x19t
        -0x18t
        -0xft
        -0x5dt
        -0x11t
        -0x14t
        -0xat
        -0x9t
        -0x43t
        -0x17t
        -0x19t
        -0x12t
        -0x22t
        -0x1dt
        -0x24t
        -0x6bt
        -0x17t
        -0x1ct
        -0x6bt
        -0x16t
        -0x1dt
        -0x23t
        -0x22t
        -0x27t
        -0x26t
        -0x6bt
        -0x2at
        -0x6bt
        -0x15t
        -0x22t
        -0x26t
        -0x14t
        -0x6bt
        -0x17t
        -0x23t
        -0x2at
        -0x17t
        -0x6bt
        -0x14t
        -0x2at
        -0x18t
        -0x6bt
        -0x1dt
        -0x1ct
        -0x17t
        -0x6bt
        -0x23t
        -0x22t
        -0x27t
        -0x27t
        -0x26t
        -0x1dt
        -0x23t
        -0x30t
        -0x34t
        -0x22t
        -0x79t
        -0x30t
        -0x26t
        -0x79t
        -0x2bt
        -0x2at
        -0x25t
        -0x79t
        -0x38t
        -0x79t
        -0x36t
        -0x31t
        -0x30t
        -0x2dt
        -0x35t
        -0x6dt
        -0x79t
        -0x36t
        -0x38t
        -0x2bt
        -0x2bt
        -0x2at
        -0x25t
        -0x79t
        -0x31t
        -0x30t
        -0x35t
        -0x34t
        -0x79t
    .end array-data
.end method

.method private A03(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->ABG(Landroid/view/View;)V

    return-void
.end method

.method private A04(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->ABn(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A05()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3z;->A6I()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A06()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3z;->A6I()I

    move-result v0

    return v0
.end method

.method public final A07(Landroid/view/View;)I
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->A8d(Landroid/view/View;)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3y;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3y;->A03(I)I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method public final A08(I)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_2d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3z;->A6L(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/4u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0I()I

    move-result v0

    if-ne v0, p1, :cond_2a

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0b()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-nez v0, :cond_2a

    return-object v2

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A09(I)Landroid/view/View;
    .registers 4

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A00(I)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3z;->A6H(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0A(I)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->A6H(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A0B()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3y;->A04()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_d
    if-ltz v2, :cond_24

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3z;->ABn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_24
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3z;->AEW()V

    return-void
.end method

.method public final A0C(I)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A00(I)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A09(I)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3z;->A52(I)V

    return-void
.end method

.method public final A0D(I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A00(I)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3z;->A6H(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/3y;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/40;->A04(Landroid/view/View;)Z

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/3z;->AEa(I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_32

    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const-string v1, "KJlsfCUfVwwQNNRDjM0AzdkkAy1m1QjD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    :cond_32
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0E(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->A8d(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A06(I)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A03(Landroid/view/View;)V

    return-void

    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->A8d(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A09(I)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A04(Landroid/view/View;)Z

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3z;->AEa(I)V

    return-void
.end method

.method public final A0G(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->A8d(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A05(I)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A04(Landroid/view/View;)Z

    return-void

    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xe

    const/16 v1, 0x2b

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x21

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0H(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 10

    if-gez p2, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3z;->A6I()I

    move-result v4

    :goto_8
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/40;->A00(I)I

    move-result v4

    goto :goto_8

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const-string v1, "KHr0McsaN13zWmBdzhmfm62h5mt8zSB0"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4, p4}, Lcom/facebook/ads/redexgen/X/3y;->A07(IZ)V

    if-eqz p4, :cond_32

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A03(Landroid/view/View;)V

    :cond_32
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1, v4, p3}, Lcom/facebook/ads/redexgen/X/3z;->A3a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final A0I(Landroid/view/View;IZ)V
    .registers 6

    if-gez p2, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3z;->A6I()I

    move-result v1

    :goto_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/3y;->A07(IZ)V

    if-eqz p3, :cond_12

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A03(Landroid/view/View;)V

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/3z;->addView(Landroid/view/View;I)V

    return-void

    :cond_18
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/40;->A00(I)I

    move-result v1

    goto :goto_8
.end method

.method public final A0J(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/40;->A0I(Landroid/view/View;IZ)V

    return-void
.end method

.method public final A0K(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final A0L(Landroid/view/View;)Z
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3z;->A8d(Landroid/view/View;)I

    move-result v1

    const/4 v0, -0x1

    const/4 v3, 0x1

    if-ne v1, v0, :cond_29

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A04(Landroid/view/View;)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/40;->A04:[Ljava/lang/String;

    const-string v1, "HipCYWSrBpzIS13Odtj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_29
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A08(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/3y;->A09(I)Z

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/40;->A04(Landroid/view/View;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A01:Lcom/facebook/ads/redexgen/X/3z;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/3z;->AEa(I)V

    return v3

    :cond_3f
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A00:Lcom/facebook/ads/redexgen/X/3y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/40;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/40;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
