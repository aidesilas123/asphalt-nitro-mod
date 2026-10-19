###### Class com.facebook.ads.redexgen.X.D3 (com.facebook.ads.redexgen.X.D3)
.class public final Lcom/facebook/ads/redexgen/X/D3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Wm;


# static fields
.field public static A03:[B


# instance fields
.field public final A00:J

.field public final A01:[J

.field public final A02:[J


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D3;->A02()V

    return-void
.end method

.method public constructor <init>([J[JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:[J

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:[J

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:J

    return-void
.end method

.method public static A00(JJLcom/facebook/ads/redexgen/X/Bg;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/D3;
    .registers 23

    move-wide/from16 v2, p2

    const/16 v0, 0xa

    move-object/from16 v14, p5

    invoke-virtual {v14, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v4

    const/4 v0, 0x0

    if-gtz v4, :cond_11

    return-object v0

    :cond_11
    move-object/from16 v1, p4

    iget v6, v1, Lcom/facebook/ads/redexgen/X/Bg;->A03:I

    int-to-long v7, v4

    const/16 v0, 0x7d00

    if-lt v6, v0, :cond_6d

    const/16 v0, 0x480

    :goto_1c
    int-to-long v9, v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v9, v4

    int-to-long v11, v6

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Hx;->A0F(JJJ)J

    move-result-wide v6

    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v13

    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v16

    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v15

    const/4 v0, 0x2

    invoke-virtual {v14, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Bg;->A02:I

    int-to-long v0, v0

    add-long v4, v2, v0

    new-array v12, v13, [J

    new-array v11, v13, [J

    const/4 v10, 0x0

    :goto_40
    if-ge v10, v13, :cond_70

    int-to-long v8, v10

    mul-long/2addr v8, v6

    int-to-long v0, v13

    div-long/2addr v8, v0

    aput-wide v8, v12, v10

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, v11, v10

    packed-switch v15, :pswitch_data_ba

    const/4 v0, 0x0

    return-object v0

    :pswitch_53
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v0

    goto :goto_66

    :pswitch_58
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    goto :goto_66

    :pswitch_5d
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A0G()I

    move-result v0

    goto :goto_66

    :pswitch_62
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Hh;->A0H()I

    move-result v0

    :goto_66
    mul-int v0, v0, v16

    int-to-long v0, v0

    add-long/2addr v2, v0

    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    :cond_6d
    const/16 v0, 0x240

    goto :goto_1c

    :cond_70
    const-wide/16 v8, -0x1

    move-wide/from16 v0, p0

    cmp-long v4, v0, v8

    if-eqz v4, :cond_b3

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x2

    const/16 v5, 0x19

    const/16 v4, 0x4a

    invoke-static {v8, v5, v4}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x6a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/D3;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    new-instance v0, Lcom/facebook/ads/redexgen/X/D3;

    invoke-direct {v0, v12, v11, v6, v7}, Lcom/facebook/ads/redexgen/X/D3;-><init>([J[JJ)V

    return-object v0

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_53
        :pswitch_58
        :pswitch_5d
        :pswitch_62
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/D3;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

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

    const/16 v0, 0x25

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/D3;->A03:[B

    return-void

    :array_a
    .array-data 1
        0x47t
        0x4bt
        0x1dt
        0x9t
        0x19t
        0x2t
        0x6bt
        0x2ft
        0x2at
        0x3ft
        0x2at
        0x6bt
        0x38t
        0x22t
        0x31t
        0x2et
        0x6bt
        0x26t
        0x22t
        0x38t
        0x26t
        0x2at
        0x3ft
        0x28t
        0x23t
        0x71t
        0x6bt
        0x0t
        0x34t
        0x24t
        0x3ft
        0x5t
        0x33t
        0x33t
        0x3dt
        0x33t
        0x24t
    .end array-data
.end method


# virtual methods
.method public final A6k()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:J

    return-wide v0
.end method

.method public final A7l(J)Lcom/facebook/ads/redexgen/X/Bi;
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:[J

    const/4 v4, 0x1

    invoke-static {v0, p1, p2, v4, v4}, Lcom/facebook/ads/redexgen/X/Hx;->A0B([JJZZ)I

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:[J

    aget-wide v2, v0, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:[J

    aget-wide v0, v0, v7

    new-instance v6, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(JJ)V

    iget-wide v1, v6, Lcom/facebook/ads/redexgen/X/Bk;->A01:J

    cmp-long v0, v1, p1

    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:[J

    array-length v0, v0

    sub-int/2addr v0, v4

    if-ne v7, v0, :cond_26

    :cond_20
    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0

    :cond_26
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v4, v1, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:[J

    add-int/lit8 v0, v7, 0x1

    aget-wide v2, v1, v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/facebook/ads/redexgen/X/Bk;-><init>(JJ)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Bi;

    invoke-direct {v0, v6, v1}, Lcom/facebook/ads/redexgen/X/Bi;-><init>(Lcom/facebook/ads/redexgen/X/Bk;Lcom/facebook/ads/redexgen/X/Bk;)V

    return-object v0
.end method

.method public final A7z(J)J
    .registers 6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/D3;->A02:[J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/D3;->A01:[J

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0B([JJZZ)I

    move-result v0

    aget-wide v0, v2, v0

    return-wide v0
.end method

.method public final A95()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
