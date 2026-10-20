###### Class com.facebook.ads.redexgen.X.C4L (com.facebook.ads.redexgen.X.4L)
.class public final Lcom/facebook/ads/redexgen/X/4L;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4K;
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1CU3iw4Trc3qggngkxP7P26jEGLrLZaR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qcH7HKgKdAybLTWn0rmK7JyCE0S9C8rn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oNJ0dA1Zpt4CixMfeWT18n5RxX88Y0E3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FZ8N3xW3PfzdZjJWrErZ2QIuE13XuJtD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DvPOKoiXqOiYMgjx6IqCziqOSBLzEcJY"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "MpMZeZ7xc490HXAXJonG5r1KTyiIoUHH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NGMd8PbmdSzgSLgNcWdVjgLa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jY1Ixh6DMe9BpV8yAbg842YJP45AQ2Eb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4L;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4K;

    return-void
.end method

.method private A00(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_7
    if-ltz v2, :cond_1c

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3x;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_18

    if-eqz v3, :cond_19

    return v2

    :cond_18
    const/4 v3, 0x1

    :cond_19
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method private A01(Ljava/util/List;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ">;II)V"
        }
    .end annotation

    move-object v1, p1

    move v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/3x;

    move v4, p3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/3x;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    packed-switch v0, :pswitch_data_24

    :goto_14
    :pswitch_14
    return-void

    :pswitch_15
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4L;->A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3x;ILcom/facebook/ads/redexgen/X/3x;)V

    goto :goto_14

    :pswitch_1a
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4L;->A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3x;ILcom/facebook/ads/redexgen/X/3x;)V

    goto :goto_14

    :pswitch_1f
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/4L;->A02(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3x;ILcom/facebook/ads/redexgen/X/3x;)V

    goto :goto_14

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1a
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private A02(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3x;ILcom/facebook/ads/redexgen/X/3x;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3x;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-ge v1, v0, :cond_9

    add-int/lit8 v2, v2, -0x1

    :cond_9
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-ge v1, v0, :cond_11

    add-int/lit8 v2, v2, 0x1

    :cond_11
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-gt v1, v0, :cond_1e

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_1e
    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    if-gt v1, v0, :cond_2b

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    :cond_2b
    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    add-int/2addr v0, v2

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final A03(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3x;ILcom/facebook/ads/redexgen/X/3x;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3x;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    const/4 v4, 0x1

    if-ge v1, v0, :cond_9a

    const/4 v6, 0x0

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-ne v1, v0, :cond_1a

    iget v3, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    sub-int/2addr v1, v0

    if-ne v3, v1, :cond_1a

    const/4 v7, 0x1

    :cond_1a
    :goto_1a
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    const/4 v5, 0x2

    if-ge v1, v0, :cond_62

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_26
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-gt v1, v0, :cond_3f

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    add-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_31
    :goto_31
    if-eqz v7, :cond_ae

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-interface {v0, p3}, Lcom/facebook/ads/redexgen/X/4K;->AEJ(Lcom/facebook/ads/redexgen/X/3x;)V

    return-void

    :cond_3f
    iget v3, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v1, v0

    if-ge v3, v1, :cond_31

    iget v3, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v3, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    sub-int/2addr v3, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    add-int/2addr v1, v4

    const/4 v0, 0x0

    invoke-interface {v2, v5, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/4K;->AAI(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3x;

    move-result-object v2

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    sub-int/2addr v1, v0

    iput v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    goto :goto_31

    :cond_62
    iget v3, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v1, v0

    if-ge v3, v1, :cond_26

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v0, v4

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iput v5, p3, Lcom/facebook/ads/redexgen/X/3x;->A00:I

    iput v4, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v3, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/4L;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_158

    sget-object v2, Lcom/facebook/ads/redexgen/X/4L;->A01:[Ljava/lang/String;

    const-string v1, "8AUTweiK2qHuqKAjuAP9RAHRjtqC9cI5"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fxjAamJyQJjVOLb9u9QxKoC9co41mLuZ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_99

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/4K;->AEJ(Lcom/facebook/ads/redexgen/X/3x;)V

    :cond_99
    return-void

    :cond_9a
    const/4 v6, 0x1

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v0, v4

    if-ne v1, v0, :cond_1a

    iget v3, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    if-ne v3, v1, :cond_1a

    const/4 v7, 0x1

    goto/16 :goto_1a

    :cond_ae
    if-eqz v6, :cond_11b

    if-eqz v2, :cond_cc

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-le v1, v0, :cond_bf

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_bf
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-le v1, v0, :cond_cc

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    :cond_cc
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-le v1, v0, :cond_d9

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_d9
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-le v1, v0, :cond_e6

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    :cond_e6
    :goto_e6
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/facebook/ads/redexgen/X/4L;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x5

    aget-object v3, v3, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_152

    sget-object v3, Lcom/facebook/ads/redexgen/X/4L;->A01:[Ljava/lang/String;

    const-string v1, "R1vl9Esi4EQuoIO0IEs3BYKA9Bp2yfIo"

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, "ll7MLLjNdpT1F8Cd0W3dCYnGe1w6KT9M"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    if-eq v1, v0, :cond_117

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_111
    if-eqz v2, :cond_116

    invoke-interface {p1, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_116
    return-void

    :cond_117
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_111

    :cond_11b
    if-eqz v2, :cond_137

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-lt v1, v0, :cond_12a

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_12a
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-lt v1, v0, :cond_137

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, v2, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    :cond_137
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-lt v1, v0, :cond_144

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_144
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-lt v1, v0, :cond_e6

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v1, v0

    iput v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    goto :goto_e6

    :cond_152
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_158
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A04(Ljava/util/List;ILcom/facebook/ads/redexgen/X/3x;ILcom/facebook/ads/redexgen/X/3x;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ">;I",
            "Lcom/facebook/ads/redexgen/X/3x;",
            "I",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    const/4 v3, 0x4

    const/4 v5, 0x1

    if-ge v1, v0, :cond_5a

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_f
    :goto_f
    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    if-gt v1, v0, :cond_38

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    add-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    :cond_1a
    :goto_1a
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    if-lez v0, :cond_2f

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_24
    if-eqz v6, :cond_29

    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_29
    if-eqz v4, :cond_2e

    invoke-interface {p1, p2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2e
    return-void

    :cond_2f
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-interface {v0, p5}, Lcom/facebook/ads/redexgen/X/4K;->AEJ(Lcom/facebook/ads/redexgen/X/3x;)V

    goto :goto_24

    :cond_38
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_1a

    iget v7, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v7, v0

    iget v0, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    sub-int/2addr v7, v0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    add-int/2addr v1, v5

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v7, v0}, Lcom/facebook/ads/redexgen/X/4K;->AAI(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3x;

    move-result-object v4

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v0, v7

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    goto :goto_1a

    :cond_5a
    iget v2, p3, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget v1, p5, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    add-int/2addr v1, v0

    if-ge v2, v1, :cond_f

    iget v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    sub-int/2addr v0, v5

    iput v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A01:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4L;->A00:Lcom/facebook/ads/redexgen/X/4K;

    iget v1, p3, Lcom/facebook/ads/redexgen/X/3x;->A02:I

    iget-object v0, p5, Lcom/facebook/ads/redexgen/X/3x;->A03:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, v5, v0}, Lcom/facebook/ads/redexgen/X/4K;->AAI(IIILjava/lang/Object;)Lcom/facebook/ads/redexgen/X/3x;

    move-result-object v6

    goto :goto_f
.end method


# virtual methods
.method public final A05(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/3x;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4L;->A00(Ljava/util/List;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_d

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A01(Ljava/util/List;II)V

    goto :goto_0

    :cond_d
    return-void
.end method
