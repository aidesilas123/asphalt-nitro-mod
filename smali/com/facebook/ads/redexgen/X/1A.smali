###### Class com.facebook.ads.redexgen.X.C1A (com.facebook.ads.redexgen.X.1A)
.class public final Lcom/facebook/ads/redexgen/X/1A;
.super Lcom/facebook/ads/redexgen/X/3E;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/I8;,
        Lcom/facebook/ads/redexgen/X/I7;
    }
.end annotation


# static fields
.field public static A0b:Z

.field public static A0c:Z

.field public static A0d:[B

.field public static A0e:[Ljava/lang/String;

.field public static final A0f:[I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/I8;

.field public A01:F

.field public A02:F

.field public A03:F

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:I

.field public A0A:I

.field public A0B:I

.field public A0C:I

.field public A0D:I

.field public A0E:I

.field public A0F:I

.field public A0G:I

.field public A0H:J

.field public A0I:J

.field public A0J:J

.field public A0K:J

.field public A0L:J

.field public A0M:J

.field public A0N:Landroid/view/Surface;

.field public A0O:Landroid/view/Surface;

.field public A0P:Lcom/facebook/ads/redexgen/X/I7;

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public final A0T:I

.field public final A0U:J

.field public final A0V:Landroid/content/Context;

.field public final A0W:Lcom/facebook/ads/redexgen/X/IB;

.field public final A0X:Lcom/facebook/ads/redexgen/X/IK;

.field public final A0Y:Z

.field public final A0Z:[J

.field public final A0a:[J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1acRM6Cf6EhxOJODmj0H0eP8VC35ZmTt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "cV9GjlkLQwwiHa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "i1c6IC1hwgIn8DthxqNi0XpoGO8BN4qE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "gFn4mUSFpSKHUauCdH5nTsZh8y8bn5UZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9nkQNk0PAkkX03QPU4alH8fTsKo9h28D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "s2uNxYIY6duU338ylAtcR72UhbPyFCsP"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VOm8bC2ft6X0ZlQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HWs0n0OHt4vGmZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1A;->A0D()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/facebook/ads/redexgen/X/1A;->A0f:[I

    return-void

    nop

    :array_3c
    .array-data 4
        0x780
        0x640
        0x5a0
        0x500
        0x3c0
        0x356
        0x280
        0x21c
        0x1e0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/D4;JLcom/facebook/ads/redexgen/X/BK;ZLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/IL;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/D4;",
            "J",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/facebook/ads/redexgen/X/IL;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2, p5, p6}, Lcom/facebook/ads/redexgen/X/3E;-><init>(ILcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;Z)V

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0U:J

    iput p9, p0, Lcom/facebook/ads/redexgen/X/1A;->A0T:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0V:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0W:Lcom/facebook/ads/redexgen/X/IB;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IK;

    invoke-direct {v0, p7, p8}, Lcom/facebook/ads/redexgen/X/IK;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/IL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/1A;->A0M()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Y:Z

    const/16 v1, 0xa

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Z:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0a:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0M:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0K:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A02:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0F:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A07()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 6

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A09:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_3c

    const/4 p0, 0x0

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_1c

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr p0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1c
    iget v3, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A09:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_36

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "PFjSJxahL7zuosjl0ltO07DmFDIUFrxC"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v3, p0

    return v3

    :cond_36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    iget-object v2, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    invoke-static {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A01(Lcom/facebook/ads/redexgen/X/Cy;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Cy;Ljava/lang/String;II)I
    .registers 9

    const/4 v4, -0x1

    if-eq p2, v4, :cond_5

    if-ne p3, v4, :cond_6

    :cond_5
    return v4

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_106

    :cond_d
    const/4 v0, -0x1

    :goto_e
    packed-switch v0, :pswitch_data_120

    return v4

    :sswitch_12
    const/16 v2, 0x4f3

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_e

    :sswitch_24
    const/16 v2, 0x506

    const/16 v1, 0xa

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    goto :goto_e

    :sswitch_36
    const/16 v2, 0x510

    const/16 v1, 0xd

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :sswitch_48
    const/16 v2, 0x4fd

    const/16 v1, 0x9

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_e

    :sswitch_5a
    const/16 v2, 0x51d

    const/16 v1, 0x13

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_e

    :sswitch_6c
    const/16 v2, 0x530

    const/16 v1, 0x13

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    goto :goto_e

    :pswitch_7e
    mul-int/2addr p2, p3

    const/4 v0, 0x2

    goto :goto_ff

    :pswitch_81
    const/16 v2, 0x6f

    const/16 v1, 0xe

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    const/16 v2, 0x4c

    const/4 v1, 0x6

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x1ef

    const/4 v1, 0x6

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    const/16 v2, 0x48

    const/4 v1, 0x4

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:Z

    if-eqz v0, :cond_ca

    :cond_c9
    return v4

    :cond_ca
    const/16 v0, 0x10

    invoke-static {p2, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result v4

    invoke-static {p3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_f4

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "x2yMHKGTgYRqVR8BBJa50R3gpwcpbPk7"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "MDbyzLCCUwawERMs5O7i0Z9U5SWznnDD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    mul-int/2addr v4, v3

    mul-int/lit8 v0, v4, 0x10

    mul-int/lit8 p2, v0, 0x10

    const/4 v0, 0x2

    goto :goto_ff

    :cond_f4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_fa
    mul-int/2addr p2, p3

    const/4 v0, 0x2

    goto :goto_ff

    :pswitch_fd
    mul-int/2addr p2, p3

    const/4 v0, 0x4

    :goto_ff
    mul-int/lit8 v1, p2, 0x3

    mul-int/lit8 v0, v0, 0x2

    div-int/2addr v1, v0

    return v1

    nop

    :sswitch_data_106
    .sparse-switch
        -0x63306f58 -> :sswitch_12
        -0x63185e82 -> :sswitch_24
        0x46cdc642 -> :sswitch_36
        0x4f62373a -> :sswitch_48
        0x5f50bed8 -> :sswitch_5a
        0x5f50bed9 -> :sswitch_6c
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7e
        :pswitch_81
        :pswitch_fa
        :pswitch_fd
        :pswitch_fd
    .end packed-switch
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Landroid/graphics/Point;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    const/4 v9, 0x0

    if-le v1, v0, :cond_72

    const/4 v11, 0x1

    :goto_8
    if-eqz v11, :cond_6f

    iget v8, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    :goto_c
    if-eqz v11, :cond_6c

    iget v7, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    :goto_10
    int-to-float v6, v7

    int-to-float v0, v8

    div-float/2addr v6, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/1A;->A0f:[I

    array-length v4, v5

    :goto_16
    const/4 v1, 0x0

    if-ge v9, v4, :cond_74

    aget v3, v5, v9

    int-to-float v0, v3

    mul-float/2addr v0, v6

    float-to-int v2, v0

    if-le v3, v8, :cond_22

    if-gt v2, v7, :cond_23

    :cond_22
    return-object v1

    :cond_23
    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_44

    if-eqz v11, :cond_42

    move v0, v2

    :goto_2c
    if-eqz v11, :cond_40

    :goto_2e
    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Cy;->A0E(II)Landroid/graphics/Point;

    move-result-object v10

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A01:F

    iget v3, v10, Landroid/graphics/Point;->x:I

    iget v2, v10, Landroid/graphics/Point;->y:I

    float-to-double v0, v0

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Cy;->A0H(IID)Z

    move-result v0

    if-eqz v0, :cond_69

    return-object v10

    :cond_40
    move v3, v2

    goto :goto_2e

    :cond_42
    move v0, v3

    goto :goto_2c

    :cond_44
    const/16 v1, 0x10

    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result v0

    mul-int/lit8 v3, v0, 0x10

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A04(II)I

    move-result v0

    mul-int/lit8 v2, v0, 0x10

    mul-int v1, v3, v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D9;->A00()I

    move-result v0

    if-gt v1, v0, :cond_69

    if-eqz v11, :cond_67

    move v1, v2

    :goto_5d
    if-eqz v11, :cond_65

    :goto_5f
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_65
    move v3, v2

    goto :goto_5f

    :cond_67
    move v1, v3

    goto :goto_5d

    :cond_69
    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_6c
    iget v7, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    goto :goto_10

    :cond_6f
    iget v8, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    goto :goto_c

    :cond_72
    const/4 v11, 0x0

    goto :goto_8

    :cond_74
    return-object v1
.end method

.method private final A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/I7;ZI)Landroid/media/MediaFormat;
    .registers 11

    new-instance v4, Landroid/media/MediaFormat;

    invoke-direct {v4}, Landroid/media/MediaFormat;-><init>()V

    const/16 v2, 0x446

    const/4 v1, 0x4

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x54f

    const/4 v1, 0x5

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x3cb

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0P:Ljava/util/List;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/DA;->A06(Landroid/media/MediaFormat;Ljava/util/List;)V

    const/16 v2, 0x3ba

    const/16 v1, 0xa

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A01:F

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A03(Landroid/media/MediaFormat;Ljava/lang/String;F)V

    const/16 v2, 0x49c

    const/16 v1, 0x10

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0B:I

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/DA;->A02(Landroid/media/MediaFormat;Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;)V

    const/16 v2, 0x437

    const/16 v1, 0x9

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/I7;->A02:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x41f

    const/16 v1, 0xa

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/I7;->A00:I

    invoke-virtual {v4, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v2, 0x429

    const/16 v1, 0xe

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lcom/facebook/ads/redexgen/X/I7;->A01:I

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/DA;->A04(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    const/4 v5, 0x0

    if-lt v1, v0, :cond_98

    const/16 v2, 0x481

    const/16 v1, 0x8

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_98
    if-eqz p3, :cond_c3

    const/16 v2, 0x36b

    const/16 v1, 0x8

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_b9

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b9
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "LIFMuRLmQz6XdmDBeptCblAg9hMw0FnF"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, v3, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c3
    if-eqz p4, :cond_c8

    invoke-static {v4, p4}, Lcom/facebook/ads/redexgen/X/1A;->A0K(Landroid/media/MediaFormat;I)V

    :cond_c8
    return-object v4
.end method

.method private final A04(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/redexgen/X/I7;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    iget v5, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v4, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1A;->A00(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v3

    array-length v1, p3

    const/4 v0, 0x1

    if-ne v1, v0, :cond_12

    new-instance v0, Lcom/facebook/ads/redexgen/X/I7;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/I7;-><init>(III)V

    return-object v0

    :cond_12
    const/4 v8, 0x0

    array-length v6, p3

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v6, :cond_45

    aget-object v7, p3, v2

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A03:Z

    invoke-static {v0, p2, v7}, Lcom/facebook/ads/redexgen/X/1A;->A0V(ZLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2a

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-ne v0, v1, :cond_43

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    or-int/2addr v8, v0

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p1, v7}, Lcom/facebook/ads/redexgen/X/1A;->A00(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_43
    const/4 v0, 0x0

    goto :goto_2b

    :cond_45
    if-eqz v8, :cond_c2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2ab

    const/16 v1, 0x2b

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v2, 0x563

    const/4 v1, 0x1

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x20a

    const/16 v1, 0x17

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1A;->A02(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_c2

    iget v0, v1, Landroid/graphics/Point;->x:I

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v0, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {p1, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/1A;->A01(Lcom/facebook/ads/redexgen/X/Cy;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa4

    const/16 v1, 0x22

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    new-instance v0, Lcom/facebook/ads/redexgen/X/I7;

    invoke-direct {v0, v5, v4, v3}, Lcom/facebook/ads/redexgen/X/I7;-><init>(III)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0d:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x59

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A06()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0R:Z

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1b

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0S:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1C()Landroid/media/MediaCodec;

    move-result-object v2

    if-eqz v2, :cond_1b

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/I8;

    invoke-direct {v0, p0, v2, v1}, Lcom/facebook/ads/redexgen/X/I8;-><init>(Lcom/facebook/ads/redexgen/X/1A;Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/I6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A00:Lcom/facebook/ads/redexgen/X/I8;

    :cond_1b
    return-void
.end method

.method private A07()V
    .registers 3

    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0E:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0C:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A03:F

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0D:I

    return-void
.end method

.method private A08()V
    .registers 7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A09:I

    if-lez v0, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0H:J

    sub-long v2, v4, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A09:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/facebook/ads/redexgen/X/IK;->A02(IJ)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A09:I

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/1A;->A0H:J

    :cond_18
    return-void
.end method

.method private A09()V
    .registers 6

    iget v4, p0, Lcom/facebook/ads/redexgen/X/1A;->A08:I

    const/4 v1, -0x1

    if-ne v4, v1, :cond_9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    if-eq v0, v1, :cond_3c

    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0E:I

    if-ne v0, v4, :cond_21

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0C:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    if-ne v1, v0, :cond_21

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0D:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A07:I

    if-ne v1, v0, :cond_21

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A03:F

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_3c

    :cond_21
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A01(IIIF)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0E:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0C:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A07:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0D:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A03:F

    :cond_3c
    return-void
.end method

.method private A0A()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0R:Z

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A03(Landroid/view/Surface;)V

    :cond_b
    return-void
.end method

.method private A0B()V
    .registers 7

    iget v4, p0, Lcom/facebook/ads/redexgen/X/1A;->A0E:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2a

    iget v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0C:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "GSr0Qxmd2Qhu1M0N5tyB3p9H4Vler7W"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v3, v5, :cond_35

    :cond_2a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0C:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0D:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A03:F

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A01(IIIF)V

    :cond_35
    return-void
.end method

.method private A0C()V
    .registers 6

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0U:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0U:J

    add-long/2addr v2, v0

    :goto_f
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    return-void

    :cond_12
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_f
.end method

.method public static A0D()V
    .registers 1

    const/16 v0, 0x564

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/1A;->A0d:[B

    return-void

    :array_a
    .array-data 1
        0xat
        0xdt
        0xbt
        0xat
        0x5dt
        0x5bt
        0x5dt
        0x5ft
        0x70t
        0x76t
        0x70t
        0x75t
        0x6t
        0x76t
        0x77t
        0x6at
        0x70t
        0x77t
        0x1t
        0x6ct
        0x1ct
        0x1bt
        0x1dt
        0x1ct
        0x7et
        0xdt
        0xft
        0xet
        0x9t
        0x5et
        0xbt
        0xft
        0x4ct
        0x3at
        0x3dt
        0x3dt
        0x3dt
        0x20t
        0x6ct
        0x31t
        0x47t
        0x40t
        0x40t
        0x40t
        0x0t
        0x1ct
        0x5t
        0x3t
        0x40t
        0x36t
        0x31t
        0x30t
        0x31t
        0x60t
        0x35t
        0x39t
        0x40t
        0x36t
        0x31t
        0x33t
        0x31t
        0x60t
        0x35t
        0x39t
        0x51t
        0x56t
        0x44t
        0x51t
        0x52t
        0x55t
        0x47t
        0x5dt
        0x58t
        0x5ft
        0x4dt
        0x4at
        0x4at
        0x66t
        0x6at
        0x71t
        0x64t
        0x65t
        0x18t
        0x28t
        0x2ct
        0x38t
        0x9t
        0x36t
        0x2et
        0x3ct
        0x2bt
        0x14t
        0x50t
        0x64t
        0x63t
        0x70t
        0x4et
        0x5ft
        0x7et
        0x65t
        0x74t
        0x4et
        0x23t
        0x9t
        0x7t
        0xat
        0x8t
        0x0t
        0x66t
        0x7at
        0x13t
        0x23t
        0x33t
        0x20t
        0x37t
        0x28t
        0x20t
        0x41t
        0x55t
        0x2at
        0x41t
        0x53t
        0x51t
        0x50t
        0x54t
        0x3dt
        0x2dt
        0x3et
        0x29t
        0x36t
        0x3et
        0x20t
        0x3et
        0x2bt
        0x29t
        0x4dt
        0x33t
        0x41t
        0x37t
        0x24t
        0x4ct
        0x42t
        0x43t
        0x42t
        0x2bt
        0x3dt
        0x44t
        0x46t
        0x67t
        0x74t
        0x6ct
        0x15t
        0x12t
        0x14t
        0x1dt
        0x55t
        0x46t
        0x4ft
        0x2et
        0x25t
        0x49t
        0x5ft
        0x26t
        0x26t
        0x51t
        0x7dt
        0x76t
        0x77t
        0x71t
        0x32t
        0x7ft
        0x73t
        0x6at
        0x32t
        0x60t
        0x77t
        0x61t
        0x7dt
        0x7et
        0x67t
        0x66t
        0x7bt
        0x7dt
        0x7ct
        0x32t
        0x73t
        0x76t
        0x78t
        0x67t
        0x61t
        0x66t
        0x77t
        0x76t
        0x32t
        0x66t
        0x7dt
        0x28t
        0x32t
        0x68t
        0x44t
        0x46t
        0x42t
        0x44t
        0x78t
        0x1at
        0xft
        0x7ft
        0x7ct
        0x7et
        0x79t
        0x7at
        0x73t
        0x6at
        0x78t
        0x7et
        0x60t
        0x7et
        0xct
        0x60t
        0x6ft
        0x4dt
        0x50t
        0x7ct
        0x75t
        0x6ct
        0x7et
        0x78t
        0x66t
        0x77t
        0x56t
        0x4dt
        0x5ct
        0x2bt
        0x22t
        0x3bt
        0x29t
        0x2ft
        0x31t
        0x3et
        0x1ct
        0x7t
        0x3t
        0x2ct
        0x25t
        0x3ct
        0x2et
        0x28t
        0x36t
        0x3bt
        0x8t
        0x10t
        0x36t
        0x31t
        0x43t
        0x70t
        0x63t
        0x74t
        0x55t
        0x72t
        0x67t
        0x74t
        0x59t
        0x55t
        0x1et
        0x6bt
        0x69t
        0x69t
        0x69t
        0x2bt
        0x5et
        0x5ct
        0x5ct
        0x5et
        0xbt
        0x7et
        0x7ct
        0x7ct
        0x7bt
        0x7ft
        0xat
        0xbt
        0x8t
        0x8t
        0x40t
        0x35t
        0x34t
        0x37t
        0x35t
        0x5at
        0x2ft
        0x2et
        0x2dt
        0x29t
        0x1et
        0x6bt
        0x6bt
        0x69t
        0x69t
        0x19t
        0x3et
        0x33t
        0x2ct
        0x3at
        0x1ct
        0x37t
        0x3at
        0x3ct
        0x34t
        0x7ft
        0x4t
        0x33t
        0x3at
        0x38t
        0x3et
        0x3ct
        0x26t
        0x19t
        0x2dt
        0x3et
        0x32t
        0x3at
        0xct
        0x36t
        0x25t
        0x3at
        0x73t
        0x7ft
        0x28t
        0x26t
        0x20t
        0x21t
        0x2at
        0x2at
        0x30t
        0x28t
        0x2dt
        0x23t
        0x58t
        0x5ct
        0x59t
        0x5ft
        0x2at
        0x24t
        0x22t
        0x23t
        0x28t
        0x28t
        0x32t
        0x3et
        0x3at
        0x3at
        0x5ct
        0x5bt
        0x5dt
        0x54t
        0x21t
        0x2ft
        0x29t
        0x28t
        0x23t
        0x23t
        0x39t
        0x35t
        0x31t
        0x31t
        0x57t
        0x50t
        0x54t
        0x51t
        0x16t
        0x18t
        0x1et
        0x1ft
        0x14t
        0x14t
        0xet
        0x2t
        0x6t
        0x6t
        0x60t
        0x67t
        0x62t
        0x60t
        0x54t
        0x5at
        0x5ct
        0x5dt
        0x56t
        0x56t
        0x4ct
        0x44t
        0x51t
        0x5ft
        0x26t
        0x24t
        0x23t
        0x2bt
        0x7ft
        0x71t
        0x77t
        0x76t
        0x7dt
        0x7dt
        0x67t
        0x6ft
        0x7at
        0x74t
        0xft
        0xbt
        0xet
        0xdt
        0x3at
        0x34t
        0x32t
        0x33t
        0x38t
        0x38t
        0x22t
        0x2at
        0x3ft
        0x31t
        0x4at
        0x48t
        0x4ct
        0x44t
        0xct
        0x22t
        0x4t
        0x5t
        0xet
        0xet
        0x14t
        0x8t
        0x9t
        0x7t
        0x7ct
        0x7et
        0x7at
        0x78t
        0x4bt
        0x65t
        0x43t
        0x42t
        0x49t
        0x49t
        0x53t
        0x4bt
        0x4et
        0x40t
        0x3bt
        0x3ft
        0x3dt
        0x35t
        0x2ct
        0x33t
        0x26t
        0x28t
        0x2at
        0x49t
        0x2ct
        0x61t
        0x7et
        0x6at
        0x68t
        0x64t
        0x4t
        0x61t
        0x9t
        0x16t
        0x17t
        0xft
        0x12t
        0x6ct
        0x9t
        0x77t
        0x50t
        0x58t
        0x57t
        0x50t
        0x57t
        0x46t
        0x13t
        0x66t
        0xbt
        0x9t
        0xct
        0x0t
        0xdt
        0x10t
        0x48t
        0x36t
        0x33t
        0x62t
        0x37t
        0x33t
        0x16t
        0x1bt
        0xet
        0x12t
        0xat
        0x14t
        0x4t
        0x1bt
        0x65t
        0x7dt
        0x78t
        0x79t
        0x7ft
        0x8t
        0x70t
        0x26t
        0x3et
        0x36t
        0x3at
        0x29t
        0x26t
        0x2ct
        0x3et
        0x46t
        0x4ct
        0x59t
        0x37t
        0x35t
        0x1dt
        0x1ct
        0x11t
        0x19t
        0x3bt
        0x17t
        0x1ct
        0x1dt
        0x1bt
        0x2et
        0x11t
        0x1ct
        0x1dt
        0x17t
        0x2at
        0x1dt
        0x16t
        0x1ct
        0x1dt
        0xat
        0x1dt
        0xat
        0x72t
        0x6at
        0x75t
        0x78t
        0x75t
        0x7dt
        0x1et
        0x8t
        0x65t
        0x64t
        0x61t
        0x1at
        0x73t
        0x65t
        0x8t
        0xat
        0xet
        0x77t
        0x28t
        0x2at
        0x3ft
        0x49t
        0x0t
        0x8t
        0x8t
        0x0t
        0xbt
        0x2t
        0x2ct
        0xdt
        0x6t
        0x33t
        0xft
        0x16t
        0x10t
        0x56t
        0x37t
        0x29t
        0x4ft
        0x41t
        0x48t
        0x60t
        0x8t
        0x5t
        0x32t
        0x20t
        0x50t
        0x4ft
        0x54t
        0x55t
        0x52t
        0x2ft
        0x23t
        0x34t
        0x3dt
        0x46t
        0x41t
        0x4bt
        0x2at
        0x3dt
        0x34t
        0x4ct
        0x4bt
        0x4at
        0x37t
        0x20t
        0x29t
        0x51t
        0x56t
        0x56t
        0x45t
        0x59t
        0x50t
        0x7ct
        0x7et
        0x63t
        0x1bt
        0x7ft
        0x10t
        0x28t
        0x21t
        0x2et
        0x34t
        0x2ft
        0x2dt
        0x76t
        0x58t
        0x61t
        0x70t
        0x61t
        0x3ct
        0x25t
        0x3ft
        0x57t
        0x3bt
        0x4ft
        0x2dt
        0x14t
        0x5t
        0x14t
        0x48t
        0x50t
        0x4ct
        0x4dt
        0x22t
        0x49t
        0x3at
        0x3t
        0x61t
        0x67t
        0x62t
        0x6dt
        0x8t
        0xet
        0xat
        0xct
        0x34t
        0x51t
        0x57t
        0x52t
        0x78t
        0x1dt
        0x1at
        0x18t
        0x19t
        0x77t
        0x13t
        0x51t
        0x4dt
        0x31t
        0x36t
        0x58t
        0x45t
        0x5ft
        0x55t
        0x19t
        0x10t
        0x79t
        0x76t
        0x41t
        0x57t
        0x4bt
        0x48t
        0x51t
        0x50t
        0x4dt
        0x4bt
        0x4at
        0x57t
        0x4t
        0x51t
        0x4at
        0x4ft
        0x4at
        0x4bt
        0x53t
        0x4at
        0xat
        0x4t
        0x67t
        0x4bt
        0x40t
        0x41t
        0x47t
        0x4t
        0x49t
        0x45t
        0x5ct
        0x4t
        0x56t
        0x41t
        0x57t
        0x4bt
        0x48t
        0x51t
        0x50t
        0x4dt
        0x4bt
        0x4at
        0x1et
        0x4t
        0x1bt
        0x1et
        0x18t
        0x65t
        0xct
        0x1ct
        0x1et
        0x79t
        0x7dt
        0x44t
        0x7bt
        0x76t
        0x63t
        0x72t
        0x48t
        0x47t
        0x65t
        0x78t
        0x6bt
        0x7dt
        0xct
        0x12t
        0x8t
        0xct
        0xft
        0x79t
        0x1t
        0x17t
        0x66t
        0x78t
        0x62t
        0x66t
        0x65t
        0xdt
        0x33t
        0x25t
        0x54t
        0x4at
        0x5ft
        0x52t
        0x57t
        0x21t
        0x44t
        0x52t
        0x23t
        0x3dt
        0x28t
        0x25t
        0x20t
        0x5dt
        0xft
        0x34t
        0x34t
        0x7bt
        0x36t
        0x3at
        0x35t
        0x22t
        0x7bt
        0x28t
        0x2ft
        0x29t
        0x3et
        0x3at
        0x36t
        0x7bt
        0x38t
        0x33t
        0x3at
        0x35t
        0x3ct
        0x3et
        0x28t
        0x77t
        0x7bt
        0x28t
        0x34t
        0x7bt
        0x3ft
        0x29t
        0x34t
        0x2bt
        0x2bt
        0x32t
        0x35t
        0x3ct
        0x7bt
        0x34t
        0x3dt
        0x3dt
        0x28t
        0x3et
        0x2ft
        0x61t
        0x7bt
        0x43t
        0x24t
        0x40t
        0x24t
        0x25t
        0x51t
        0x54t
        0x37t
        0x54t
        0x2ct
        0x47t
        0x2bt
        0x3ct
        0x3ft
        0xct
        0x11t
        0x66t
        0xct
        0x1bt
        0x17t
        0x72t
        0x75t
        0x75t
        0x70t
        0x56t
        0x3dt
        0x3et
        0x53t
        0x5ct
        0x5et
        0x43t
        0xet
        0x6ct
        0x64t
        0x19t
        0x5dt
        0x20t
        0x5bt
        0x42t
        0x56t
        0x47t
        0x4at
        0x4ct
        0xet
        0x50t
        0x46t
        0x50t
        0x50t
        0x4at
        0x4ct
        0x4dt
        0xet
        0x4at
        0x47t
        0x9t
        0x1dt
        0x1ct
        0x7t
        0x45t
        0xet
        0x1at
        0xbt
        0x1dt
        0xct
        0x11t
        0xet
        0x53t
        0x1ct
        0x11t
        0xat
        0xat
        0x11t
        0x13t
        0xbt
        0x1at
        0x7t
        0x18t
        0x45t
        0x4t
        0xdt
        0xet
        0x1ct
        0x20t
        0x31t
        0x2ct
        0x33t
        0x6et
        0x31t
        0x2at
        0x24t
        0x2bt
        0x37t
        0x5ft
        0x4et
        0x53t
        0x4ct
        0x11t
        0x48t
        0x53t
        0x4ct
        0x67t
        0x72t
        0x35t
        0x3at
        0x2ft
        0x6at
        0x1et
        0x1ft
        0x18t
        0x60t
        0x76t
        0x6bt
        0x74t
        0x52t
        0x6dt
        0x60t
        0x61t
        0x6bt
        0x46t
        0x71t
        0x62t
        0x62t
        0x61t
        0x76t
        0x6bt
        0x61t
        0x62t
        0xat
        0x3t
        0x1ft
        0x18t
        0x9t
        0x1et
        0x2dt
        0x39t
        0x2at
        0x26t
        0x2et
        0x66t
        0x39t
        0x2at
        0x3ft
        0x2et
        0x7et
        0x6bt
        0x70t
        0x7ft
        0x7ft
        0x70t
        0x77t
        0x2bt
        0x26t
        0x2at
        0x24t
        0x2bt
        0x37t
        0x36t
        0x2at
        0x3dt
        0x1t
        0x3bt
        0x6bt
        0x68t
        0x33t
        0x32t
        0x1t
        0x3at
        0x2at
        0x2bt
        0x32t
        0x3bt
        0x24t
        0x12t
        0x1ft
        0x16t
        0x7et
        0x1bt
        0x78t
        0x73t
        0x70t
        0x7dt
        0x7dt
        0x29t
        0x26t
        0x22t
        0x24t
        0x4et
        0x28t
        0x29t
        0x21t
        0x27t
        0x54t
        0x4ft
        0x54t
        0x4et
        0xbt
        0xdt
        0xdt
        0x10t
        0x1t
        0x8t
        0x3bt
        0x37t
        0x50t
        0x55t
        0x40t
        0x18t
        0x52t
        0x46t
        0x5et
        0x4ft
        0x43t
        0x44t
        0x59t
        0x6ft
        0x66t
        0x5ct
        0x7bt
        0x35t
        0x37t
        0x3bt
        0x34t
        0x34t
        0x33t
        0x34t
        0x3dt
        0x7bt
        0x77t
        0x64t
        0x7ft
        0x78t
        0x79t
        0x49t
        0x70t
        0x39t
        0x35t
        0x2ct
        0x79t
        0x3ct
        0x31t
        0x3dt
        0x33t
        0x3ct
        0x20t
        0x13t
        0x1ft
        0x6t
        0x53t
        0x17t
        0x10t
        0xet
        0xbt
        0xat
        0x53t
        0xdt
        0x17t
        0x4t
        0x1bt
        0x2dt
        0x21t
        0x38t
        0x6dt
        0x37t
        0x29t
        0x24t
        0x34t
        0x28t
        0x36t
        0x33t
        0x6dt
        0x69t
        0x64t
        0x6ft
        0x4ct
        0x48t
        0x4ct
        0x44t
        0x60t
        0x6ft
        0x63t
        0x6ft
        0x7at
        0x66t
        0x12t
        0x15t
        0x1ft
        0x17t
        0x10t
        0x1dt
        0x9t
        0xft
        0x23t
        0x1at
        0x4ft
        0xdt
        0xet
        0xdt
        0x38t
        0x29t
        0x26t
        0x2dt
        0x24t
        0x24t
        0x17t
        0x2ct
        0x32t
        0x23t
        0x2ct
        0x27t
        0x2et
        0x2et
        0x1dt
        0x26t
        0x2et
        0x5at
        0x4bt
        0x44t
        0x4ft
        0x46t
        0x46t
        0x75t
        0x4et
        0x59t
        0x70t
        0x61t
        0x6et
        0x65t
        0x6ct
        0x6ct
        0x5ft
        0x64t
        0x74t
        0x53t
        0x51t
        0x4at
        0x4ct
        0x51t
        0x4at
        0x57t
        0x5at
        0x46t
        0x51t
        0x58t
        0x51t
        0x55t
        0x47t
        0x51t
        0x7bt
        0x41t
        0x40t
        0x44t
        0x41t
        0x40t
        0x76t
        0x41t
        0x52t
        0x52t
        0x51t
        0x46t
        0x1bt
        0x6t
        0x1dt
        0x8t
        0x1dt
        0x0t
        0x6t
        0x7t
        0x44t
        0xdt
        0xct
        0xet
        0x1bt
        0xct
        0xct
        0x1at
        0x71t
        0x3bt
        0x32t
        0x37t
        0x7at
        0x32t
        0x33t
        0x3at
        0x41t
        0x53t
        0x5ct
        0x46t
        0x5dt
        0x5ct
        0x5bt
        0x6et
        0x76t
        0x74t
        0x6dt
        0x4bt
        0x74t
        0x79t
        0x78t
        0x72t
        0x5ft
        0x68t
        0x7bt
        0x7bt
        0x78t
        0x6ft
        0x47t
        0x52t
        0x5at
        0x57t
        0x5ct
        0x6ct
        0x41t
        0x5ct
        0x44t
        0x4at
        0x5dt
        0x52t
        0x61t
        0x5bt
        0x4bt
        0xct
        0xdt
        0x16t
        0x16t
        0x1dt
        0x14t
        0x1dt
        0x1ct
        0x55t
        0x8t
        0x14t
        0x19t
        0x1t
        0x1at
        0x19t
        0x1bt
        0x13t
        0x1dt
        0xet
        0x19t
        0x5t
        0xet
        0xet
        0x34t
        0x26t
        0x5et
        0x3et
        0x21t
        0x2ct
        0x2dt
        0x27t
        0x67t
        0x7bt
        0x2ft
        0x38t
        0x38t
        0x37t
        0x28t
        0x25t
        0x24t
        0x2et
        0x6et
        0x20t
        0x37t
        0x22t
        0x0t
        0x1ft
        0x12t
        0x13t
        0x19t
        0x59t
        0x1et
        0x13t
        0x0t
        0x15t
        0x26t
        0x39t
        0x34t
        0x35t
        0x3ft
        0x7ft
        0x3dt
        0x20t
        0x64t
        0x26t
        0x7dt
        0x35t
        0x23t
        0x44t
        0x5bt
        0x56t
        0x57t
        0x5dt
        0x1dt
        0x4at
        0x1ft
        0x44t
        0x5ct
        0x56t
        0x1ct
        0x5dt
        0x5ct
        0x0t
        0x1ct
        0x44t
        0x42t
        0xat
        0x32t
        0x2dt
        0x20t
        0x21t
        0x2bt
        0x6bt
        0x3ct
        0x69t
        0x32t
        0x2at
        0x20t
        0x6at
        0x2bt
        0x2at
        0x76t
        0x6at
        0x32t
        0x34t
        0x7dt
        0x61t
        0x77t
        0x62t
        0x65t
        0x79t
        0x78t
        0x6et
        0x71t
        0x60t
        0x6bt
        0x7ct
        0x7dt
        0x3dt
        0x23t
        0x2et
        0x3et
        0x22t
        0xft
        0x17t
        0x17t
        0x1ct
        0xbt
        0x27t
        0x1et
        0x73t
        0x6bt
        0x6bt
        0x60t
        0x77t
        0x5bt
        0x62t
        0x6at
        0x43t
    .end array-data
.end method

.method private final A0E(I)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A02:I

    add-int/2addr v0, p1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A09:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A05:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A05:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Au;->A05:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Au;->A05:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A09:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0T:I

    if-lt v1, v0, :cond_28

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A08()V

    :cond_28
    return-void
.end method

.method private final A0F(Landroid/media/MediaCodec;IJ)V
    .registers 8

    const/16 v2, 0x3a2

    const/16 v1, 0xf

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1A;->A0E(I)V

    return-void
.end method

.method private final A0G(Landroid/media/MediaCodec;IJ)V
    .registers 10

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A09()V

    const/16 v2, 0x489

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0L:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A06:I

    add-int/2addr v0, v4

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A06:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A05:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1A;->A1R()V

    return-void
.end method

.method private final A0H(Landroid/media/MediaCodec;IJ)V
    .registers 8

    const/16 v2, 0x4bb

    const/16 v1, 0xf

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A08:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A08:I

    return-void
.end method

.method private final A0I(Landroid/media/MediaCodec;IJJ)V
    .registers 11

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A09()V

    const/16 v2, 0x489

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hu;->A02(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p5, p6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hu;->A00()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0L:J

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A06:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/facebook/ads/redexgen/X/Au;->A06:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A05:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1A;->A1R()V

    return-void
.end method

.method public static A0J(Landroid/media/MediaCodec;Landroid/view/Surface;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public static A0K(Landroid/media/MediaFormat;I)V
    .registers 5

    const/16 v2, 0x4d9

    const/16 v1, 0x11

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/MediaFormat;->setFeatureEnabled(Ljava/lang/String;Z)V

    const/16 v2, 0x35b

    const/16 v1, 0x10

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method private A0L(Landroid/view/Surface;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    if-nez p1, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    if-eqz v0, :cond_23

    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    if-eq v0, p1, :cond_9c

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_3c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1D()Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/1A;->A0T(Lcom/facebook/ads/redexgen/X/Cy;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0V:Landroid/content/Context;

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Cy;->A05:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    iget-object p1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    goto :goto_8

    :cond_3c
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "451d0u4cD9rJ2w2guGtx9AsvugCig8Nc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A7t()I

    move-result v4

    const/4 v0, 0x1

    const/4 v3, 0x2

    if-eq v4, v0, :cond_4d

    if-ne v4, v3, :cond_62

    :cond_4d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1C()Landroid/media/MediaCodec;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_74

    if-eqz v2, :cond_74

    if-eqz p1, :cond_74

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Q:Z

    if-nez v0, :cond_74

    invoke-static {v2, p1}, Lcom/facebook/ads/redexgen/X/1A;->A0J(Landroid/media/MediaCodec;Landroid/view/Surface;)V

    :cond_62
    :goto_62
    if-eqz p1, :cond_7b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    if-eq p1, v0, :cond_7b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A0B()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A06()V

    if-ne v4, v3, :cond_ba

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A0C()V

    goto :goto_ba

    :cond_74
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1A;->A1G()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1I()V

    goto :goto_62

    :cond_7b
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A07()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_91

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A06()V

    goto :goto_ba

    :cond_91
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "pSIGciD2qJewSpKsBqH446Zc9mkVUpAR"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A06()V

    goto :goto_ba

    :cond_9c
    if-eqz p1, :cond_ba

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_bb

    if-eq p1, v3, :cond_ba

    :goto_b4
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A0B()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A0A()V

    :cond_ba
    :goto_ba
    return-void

    :cond_bb
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "4gXhdQ7K18codO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "dCZzuzcRJjaMd3"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eq p1, v3, :cond_ba

    goto :goto_b4
.end method

.method public static A0M()Z
    .registers 3

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x16

    if-gt v1, v0, :cond_2a

    const/16 v2, 0x3b4

    const/4 v1, 0x6

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v2, 0x221

    const/4 v1, 0x6

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static A0N(J)Z
    .registers 5

    const-wide/16 v1, -0x7530

    cmp-long v0, p0, v1

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static A0O(J)Z
    .registers 5

    const-wide/32 v1, -0x7a120

    cmp-long v0, p0, v1

    if-gez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private final A0P(JJ)Z
    .registers 6

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1A;->A0O(J)Z

    move-result v0

    return v0
.end method

.method private final A0Q(JJ)Z
    .registers 6

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1A;->A0N(J)Z

    move-result v0

    return v0
.end method

.method private final A0R(JJ)Z
    .registers 8

    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/1A;->A0N(J)Z

    move-result v0

    if-eqz v0, :cond_f

    const-wide/32 v1, 0x186a0

    cmp-long v0, p3, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private final A0S(Landroid/media/MediaCodec;IJJ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-virtual {p0, p5, p6}, Lcom/facebook/ads/redexgen/X/Dl;->A0z(J)I

    move-result v3

    if-nez v3, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Au;->A03:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Au;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1A;->A0E(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1A;->A1F()V

    return v1
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/Cy;)Z
    .registers 4

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_20

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0S:Z

    if-nez v0, :cond_20

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A02:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/1A;->A0U(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A05:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0V:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;->A05(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private final A0U(Ljava/lang/String;)Z
    .registers 10

    sget v0, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/4 v6, 0x0

    const/16 v7, 0x1b

    if-ge v0, v7, :cond_17

    const/16 v2, 0x233

    const/16 v1, 0xa

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    return v6

    :cond_18
    const-class v4, Lcom/facebook/ads/redexgen/X/1A;

    monitor-enter v4

    :try_start_1b
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/1A;->A0c:Z

    if-nez v0, :cond_943

    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A03:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_94a

    goto/16 :goto_905

    :sswitch_2b
    const/16 v2, 0x1d3

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x32

    goto/16 :goto_909

    :sswitch_3e
    const/16 v2, 0xe8

    const/16 v1, 0xa

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x19

    goto/16 :goto_909

    :sswitch_52
    const/16 v2, 0xde

    const/16 v1, 0xa

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x18

    goto/16 :goto_909

    :sswitch_66
    const/16 v2, 0x1cc

    const/4 v1, 0x7

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x31

    goto/16 :goto_909

    :sswitch_79
    const/16 v2, 0x1c5

    const/4 v1, 0x7

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x30

    goto/16 :goto_909

    :sswitch_8c
    const/16 v2, 0x1da

    const/16 v1, 0xc

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x34

    goto/16 :goto_909

    :sswitch_a0
    const/16 v2, 0x24d

    const/16 v1, 0x8

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x4f

    goto/16 :goto_909

    :sswitch_b4
    const/16 v2, 0x4b4

    const/4 v1, 0x7

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x5f

    goto/16 :goto_909

    :sswitch_c7
    const/16 v2, 0x3e6

    const/16 v1, 0xe

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x33

    goto/16 :goto_909

    :sswitch_db
    const/16 v2, 0x94

    const/4 v1, 0x7

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x11

    goto/16 :goto_909

    :sswitch_ee
    const/16 v2, 0x554

    const/4 v1, 0x7

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x6f

    goto/16 :goto_909

    :sswitch_101
    const/16 v2, 0x3d1

    const/16 v1, 0xe

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x2e

    goto/16 :goto_909

    :sswitch_114
    const/16 v2, 0xfd

    const/16 v1, 0xa

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    goto/16 :goto_909

    :sswitch_126
    const/16 v2, 0x3df

    const/4 v1, 0x7

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x2f

    goto/16 :goto_909

    :sswitch_139
    const/16 v2, 0x3fa

    const/16 v1, 0x8

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x36

    goto/16 :goto_909

    :sswitch_14d
    const/16 v2, 0x1f5

    const/4 v1, 0x7

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x3b

    goto/16 :goto_909

    :sswitch_160
    const/16 v2, 0x45e

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x4b

    goto/16 :goto_909

    :sswitch_174
    const/16 v2, 0x402

    const/16 v1, 0x9

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x37

    goto/16 :goto_909

    :sswitch_188
    const/16 v2, 0x27

    const/16 v1, 0x9

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x7

    goto/16 :goto_909

    :sswitch_19b
    const/16 v2, 0x410

    const/4 v1, 0x7

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x3d

    goto/16 :goto_909

    :sswitch_1ad
    const/16 v2, 0x19b

    const/16 v1, 0xe

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x2c

    goto/16 :goto_909

    :sswitch_1c1
    const/16 v2, 0x18d

    const/16 v1, 0xe

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x2b

    goto/16 :goto_909

    :sswitch_1d5
    const/16 v2, 0x17f

    const/16 v1, 0xe

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x2a

    goto/16 :goto_909

    :sswitch_1e9
    const/16 v2, 0x2a0

    const/16 v1, 0x8

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x5d

    goto/16 :goto_909

    :sswitch_1fd
    const/16 v2, 0x281

    const/16 v1, 0xb

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x55

    goto/16 :goto_909

    :sswitch_211
    const/16 v2, 0x300

    const/16 v1, 0x8

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x67

    goto/16 :goto_909

    :sswitch_225
    const/16 v2, 0x2f8

    const/16 v1, 0x8

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x66

    goto/16 :goto_909

    :sswitch_239
    const/16 v2, 0x2f0

    const/16 v1, 0x8

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x65

    goto/16 :goto_909

    :sswitch_24d
    const/16 v2, 0x2e8

    const/16 v1, 0x8

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x64

    goto/16 :goto_909

    :sswitch_261
    const/16 v2, 0x38

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x9

    goto/16 :goto_909

    :sswitch_275
    const/16 v2, 0x30

    const/16 v1, 0x8

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x8

    goto/16 :goto_909

    :sswitch_289
    const/16 v2, 0x3c4

    const/4 v1, 0x7

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x2d

    goto/16 :goto_909

    :sswitch_29c
    const/16 v2, 0x417

    const/16 v1, 0x8

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x3e

    goto/16 :goto_909

    :sswitch_2b0
    const/16 v2, 0x9b

    const/16 v1, 0x9

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x12

    goto/16 :goto_909

    :sswitch_2c4
    const/16 v2, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x5

    goto/16 :goto_909

    :sswitch_2d7
    const/16 v2, 0x40b

    const/4 v1, 0x5

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x3a

    goto/16 :goto_909

    :sswitch_2ea
    const/16 v2, 0x33e

    const/4 v1, 0x5

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x71

    goto/16 :goto_909

    :sswitch_2fd
    const/16 v2, 0x337

    const/4 v1, 0x5

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x6a

    goto/16 :goto_909

    :sswitch_310
    const/16 v2, 0x299

    const/4 v1, 0x5

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x5b

    goto/16 :goto_909

    :sswitch_323
    const/16 v2, 0x290

    const/4 v1, 0x5

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x59

    goto/16 :goto_909

    :sswitch_336
    const/16 v2, 0x26a

    const/4 v1, 0x5

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x57

    goto/16 :goto_909

    :sswitch_349
    const/16 v2, 0x125

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x22

    goto/16 :goto_909

    :sswitch_35b
    const/16 v2, 0x120

    const/4 v1, 0x5

    const/16 v0, 0x45

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x21

    goto/16 :goto_909

    :sswitch_36e
    const/16 v2, 0x11b

    const/4 v1, 0x5

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x20

    goto/16 :goto_909

    :sswitch_381
    const/16 v2, 0x116

    const/4 v1, 0x5

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x1f

    goto/16 :goto_909

    :sswitch_394
    const/16 v2, 0x111

    const/4 v1, 0x5

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x1e

    goto/16 :goto_909

    :sswitch_3a7
    const/16 v2, 0x10c

    const/4 v1, 0x5

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x1d

    goto/16 :goto_909

    :sswitch_3ba
    const/16 v2, 0x107

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x1c

    goto/16 :goto_909

    :sswitch_3cc
    const/16 v2, 0xcd

    const/4 v1, 0x5

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x16

    goto/16 :goto_909

    :sswitch_3df
    const/16 v2, 0x13

    const/4 v1, 0x5

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x4

    goto/16 :goto_909

    :sswitch_3f1
    const/16 v2, 0x5c

    const/16 v1, 0xb

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0xb

    goto/16 :goto_909

    :sswitch_405
    const/16 v2, 0x1ff

    const/16 v1, 0x8

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x3f

    goto/16 :goto_909

    :sswitch_419
    const/16 v2, 0x45a

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x48

    goto/16 :goto_909

    :sswitch_42c
    const/16 v2, 0x442

    const/4 v1, 0x4

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x41

    goto/16 :goto_909

    :sswitch_43f
    const/16 v2, 0x343

    const/4 v1, 0x4

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x72

    goto/16 :goto_909

    :sswitch_452
    const/16 v2, 0x295

    const/4 v1, 0x4

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x5a

    goto/16 :goto_909

    :sswitch_465
    const/16 v2, 0x28c

    const/4 v1, 0x4

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x58

    goto/16 :goto_909

    :sswitch_478
    const/16 v2, 0x246

    const/4 v1, 0x4

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x49

    goto/16 :goto_909

    :sswitch_48b
    const/16 v2, 0x8

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x2

    goto/16 :goto_909

    :sswitch_49d
    const/4 v2, 0x4

    const/4 v1, 0x4

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x1

    goto/16 :goto_909

    :sswitch_4ae
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x0

    goto/16 :goto_909

    :sswitch_4bf
    const/16 v2, 0x3b1

    const/4 v1, 0x3

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x23

    goto/16 :goto_909

    :sswitch_4d2
    const/16 v2, 0x39f

    const/4 v1, 0x3

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x15

    goto/16 :goto_909

    :sswitch_4e5
    const/16 v2, 0x39c

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x14

    goto/16 :goto_909

    :sswitch_4f7
    const/16 v2, 0x399

    const/4 v1, 0x3

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x13

    goto/16 :goto_909

    :sswitch_50a
    const/16 v2, 0x354

    const/4 v1, 0x3

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x75

    goto/16 :goto_909

    :sswitch_51d
    const/16 v2, 0x2a8

    const/4 v1, 0x3

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x5e

    goto/16 :goto_909

    :sswitch_530
    const/16 v2, 0x267

    const/4 v1, 0x3

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x56

    goto/16 :goto_909

    :sswitch_543
    const/16 v2, 0x24a

    const/4 v1, 0x3

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x4a

    goto/16 :goto_909

    :sswitch_556
    const/16 v2, 0x207

    const/4 v1, 0x3

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x42

    goto/16 :goto_909

    :sswitch_569
    const/16 v2, 0x1fc

    const/4 v1, 0x3

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x3c

    goto/16 :goto_909

    :sswitch_57c
    const/16 v2, 0x1e6

    const/4 v1, 0x3

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x38

    goto/16 :goto_909

    :sswitch_58f
    const/16 v2, 0x440

    const/4 v1, 0x2

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x40

    goto/16 :goto_909

    :sswitch_5a1
    const/16 v2, 0x33c

    const/4 v1, 0x2

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x6b

    goto/16 :goto_909

    :sswitch_5b4
    const/16 v2, 0x335

    const/4 v1, 0x2

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x69

    goto/16 :goto_909

    :sswitch_5c7
    const/16 v2, 0x29e

    const/4 v1, 0x2

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x5c

    goto/16 :goto_909

    :sswitch_5da
    const/16 v2, 0x88

    const/4 v1, 0x2

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0xe

    goto/16 :goto_909

    :sswitch_5ed
    const/16 v2, 0x55b

    const/16 v1, 0x8

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x70

    goto/16 :goto_909

    :sswitch_601
    const/16 v2, 0xd2

    const/16 v1, 0xc

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x17

    goto/16 :goto_909

    :sswitch_615
    const/16 v2, 0x34d

    const/4 v1, 0x7

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x74

    goto/16 :goto_909

    :sswitch_628
    const/16 v2, 0x67

    const/16 v1, 0x8

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0xc

    goto/16 :goto_909

    :sswitch_63c
    const/16 v2, 0x4ca

    const/16 v1, 0x9

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x63

    goto/16 :goto_909

    :sswitch_650
    const/16 v2, 0x277

    const/16 v1, 0xa

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x54

    goto/16 :goto_909

    :sswitch_664
    const/16 v2, 0x147

    const/16 v1, 0xe

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x26

    goto/16 :goto_909

    :sswitch_678
    const/16 v2, 0x1a9

    const/16 v1, 0xe

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x24

    goto/16 :goto_909

    :sswitch_68c
    const/16 v2, 0x23d

    const/16 v1, 0x9

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x47

    goto/16 :goto_909

    :sswitch_6a0
    const/16 v2, 0x549

    const/4 v1, 0x6

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x6e

    goto/16 :goto_909

    :sswitch_6b3
    const/16 v2, 0x543

    const/4 v1, 0x6

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x6d

    goto/16 :goto_909

    :sswitch_6c6
    const/16 v2, 0x2d6

    const/16 v1, 0x9

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x61

    goto/16 :goto_909

    :sswitch_6da
    const/16 v2, 0x20

    const/4 v1, 0x7

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x6

    goto/16 :goto_909

    :sswitch_6ec
    const/16 v2, 0x450

    const/16 v1, 0xa

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x44

    goto/16 :goto_909

    :sswitch_700
    const/16 v2, 0x4d3

    const/4 v1, 0x6

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x68

    goto/16 :goto_909

    :sswitch_713
    const/16 v2, 0xf2

    const/16 v1, 0xb

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x1a

    goto/16 :goto_909

    :sswitch_727
    const/16 v2, 0x4ac

    const/16 v1, 0x8

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x62

    goto/16 :goto_909

    :sswitch_73b
    const/16 v2, 0xc

    const/4 v1, 0x7

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/4 v7, 0x3

    goto/16 :goto_909

    :sswitch_74d
    const/16 v2, 0x44a

    const/4 v1, 0x6

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x43

    goto/16 :goto_909

    :sswitch_760
    const/16 v2, 0x2df

    const/16 v1, 0x9

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x60

    goto/16 :goto_909

    :sswitch_774
    const/16 v2, 0x3f4

    const/4 v1, 0x6

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x35

    goto/16 :goto_909

    :sswitch_787
    const/16 v2, 0x7d

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0xd

    goto/16 :goto_909

    :sswitch_79b
    const/16 v2, 0x1b7

    const/16 v1, 0xe

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x25

    goto/16 :goto_909

    :sswitch_7af
    const/16 v2, 0x478

    const/16 v1, 0x9

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x4e

    goto/16 :goto_909

    :sswitch_7c3
    const/16 v2, 0x46f

    const/16 v1, 0x9

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x4d

    goto/16 :goto_909

    :sswitch_7d7
    const/16 v2, 0x466

    const/16 v1, 0x9

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x4c

    goto/16 :goto_909

    :sswitch_7eb
    const/16 v2, 0x4ea

    const/16 v1, 0x9

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x6c

    goto/16 :goto_909

    :sswitch_7ff
    const/16 v2, 0x26f

    const/16 v1, 0x8

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x53

    goto/16 :goto_909

    :sswitch_813
    const/16 v2, 0xc6

    const/4 v1, 0x7

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0xf

    goto/16 :goto_909

    :sswitch_826
    const/16 v2, 0x347

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x73

    goto/16 :goto_909

    :sswitch_839
    const/16 v2, 0x52

    const/16 v1, 0xa

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0xa

    goto/16 :goto_909

    :sswitch_84c
    const/16 v2, 0x261

    const/4 v1, 0x6

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x52

    goto/16 :goto_909

    :sswitch_85f
    const/16 v2, 0x25b

    const/4 v1, 0x6

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x51

    goto/16 :goto_909

    :sswitch_872
    const/16 v2, 0x255

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x50

    goto/16 :goto_909

    :sswitch_885
    const/16 v2, 0x22d

    const/4 v1, 0x6

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x46

    goto :goto_909

    :sswitch_897
    const/16 v2, 0x227

    const/4 v1, 0x6

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x45

    goto :goto_909

    :sswitch_8a9
    const/16 v2, 0x8a

    const/16 v1, 0xa

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x10

    goto :goto_909

    :sswitch_8bc
    const/16 v2, 0x1e9

    const/4 v1, 0x6

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x39

    goto :goto_909

    :sswitch_8ce
    const/16 v2, 0x171

    const/16 v1, 0xe

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x29

    goto :goto_909

    :sswitch_8e1
    const/16 v2, 0x163

    const/16 v1, 0xe

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    const/16 v7, 0x28

    goto :goto_909

    :sswitch_8f4
    const/16 v2, 0x155

    const/16 v1, 0xe

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_905

    goto :goto_907

    :cond_905
    :goto_905
    const/4 v7, -0x1

    goto :goto_909

    :goto_907
    const/16 v7, 0x27

    :goto_909
    packed-switch v7, :pswitch_data_b24

    goto :goto_90f

    :pswitch_90d
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/1A;->A0b:Z

    :goto_90f
    sget-object v3, Lcom/facebook/ads/redexgen/X/Hx;->A06:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_c14

    goto :goto_93a

    :sswitch_919
    const/16 v2, 0x44

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93a

    const/4 v6, 0x1

    goto :goto_93b

    :sswitch_92a
    const/16 v2, 0x40

    const/4 v1, 0x4

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93a

    goto :goto_93b

    :cond_93a
    :goto_93a
    const/4 v6, -0x1

    :goto_93b
    packed-switch v6, :pswitch_data_c1e

    goto :goto_941

    :pswitch_93f
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/1A;->A0b:Z

    :goto_941
    sput-boolean v5, Lcom/facebook/ads/redexgen/X/1A;->A0c:Z

    :cond_943
    monitor-exit v4
    :try_end_944
    .catchall {:try_start_1b .. :try_end_944} :catchall_947

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/1A;->A0b:Z

    return v0

    :catchall_947
    move-exception v0

    :try_start_948
    monitor-exit v4
    :try_end_949
    .catchall {:try_start_948 .. :try_end_949} :catchall_947

    throw v0

    :sswitch_data_94a
    .sparse-switch
        -0x7fd6c3bd -> :sswitch_8f4
        -0x7fd6c381 -> :sswitch_8e1
        -0x7fd6c368 -> :sswitch_8ce
        -0x7d026749 -> :sswitch_8bc
        -0x78929d6a -> :sswitch_8a9
        -0x75f50a1e -> :sswitch_897
        -0x75f4fe9d -> :sswitch_885
        -0x736f875c -> :sswitch_872
        -0x736f83c2 -> :sswitch_85f
        -0x736f83c1 -> :sswitch_84c
        -0x7327ce1c -> :sswitch_839
        -0x651ebb62 -> :sswitch_826
        -0x6423293b -> :sswitch_813
        -0x604f5117 -> :sswitch_7ff
        -0x5ca40cc4 -> :sswitch_7eb
        -0x58520ec1 -> :sswitch_7d7
        -0x58520eba -> :sswitch_7c3
        -0x58520eb9 -> :sswitch_7af
        -0x4eaed329 -> :sswitch_79b
        -0x4892fb4f -> :sswitch_787
        -0x465b3df3 -> :sswitch_774
        -0x43e6c939 -> :sswitch_760
        -0x3ec0fcc5 -> :sswitch_74d
        -0x3b33cca0 -> :sswitch_73b
        -0x398ae3f6 -> :sswitch_727
        -0x391f0fb4 -> :sswitch_713
        -0x346837ae -> :sswitch_700
        -0x323788e3 -> :sswitch_6ec
        -0x30f57652 -> :sswitch_6da
        -0x2f88a116 -> :sswitch_6c6
        -0x2f61ed98 -> :sswitch_6b3
        -0x2efd0837 -> :sswitch_6a0
        -0x2e9e9441 -> :sswitch_68c
        -0x2247b8b1 -> :sswitch_678
        -0x1f0fa2b7 -> :sswitch_664
        -0x19af3b41 -> :sswitch_650
        -0x114fad3e -> :sswitch_63c
        -0x10dae90b -> :sswitch_628
        -0x1084b7b7 -> :sswitch_615
        -0xa5988e9 -> :sswitch_601
        -0x35f9fbf -> :sswitch_5ed
        0x84e -> :sswitch_5da
        0xa04 -> :sswitch_5c7
        0xa9b -> :sswitch_5b4
        0xa9f -> :sswitch_5a1
        0xd9b -> :sswitch_58f
        0x11ebd -> :sswitch_57c
        0x127db -> :sswitch_569
        0x12beb -> :sswitch_556
        0x1334d -> :sswitch_543
        0x135c9 -> :sswitch_530
        0x13aea -> :sswitch_51d
        0x158d2 -> :sswitch_50a
        0x1821e -> :sswitch_4f7
        0x18220 -> :sswitch_4e5
        0x18401 -> :sswitch_4d2
        0x18c69 -> :sswitch_4bf
        0x1716e6 -> :sswitch_4ae
        0x171ac8 -> :sswitch_49d
        0x171ac9 -> :sswitch_48b
        0x252f5f -> :sswitch_478
        0x25981d -> :sswitch_465
        0x259b88 -> :sswitch_452
        0x290a13 -> :sswitch_43f
        0x332327 -> :sswitch_42c
        0x33ab63 -> :sswitch_419
        0x27691fb -> :sswitch_405
        0x349f581 -> :sswitch_3f1
        0x3ab0ea7 -> :sswitch_3df
        0x3e53ea5 -> :sswitch_3cc
        0x3f25a44 -> :sswitch_3ba
        0x3f25a46 -> :sswitch_3a7
        0x3f25a49 -> :sswitch_394
        0x3f25e05 -> :sswitch_381
        0x3f25e07 -> :sswitch_36e
        0x3f25e09 -> :sswitch_35b
        0x3f261c6 -> :sswitch_349
        0x48dce49 -> :sswitch_336
        0x48dd589 -> :sswitch_323
        0x48dd8af -> :sswitch_310
        0x4d36832 -> :sswitch_2fd
        0x4f0b0e7 -> :sswitch_2ea
        0x6214744 -> :sswitch_2d7
        0x9d91379 -> :sswitch_2c4
        0xadc0551 -> :sswitch_2b0
        0xea056b3 -> :sswitch_29c
        0x1121dbc3 -> :sswitch_289
        0x1255818c -> :sswitch_275
        0x1263990d -> :sswitch_261
        0x12d90f3a -> :sswitch_24d
        0x12d90f4c -> :sswitch_239
        0x12d98b1b -> :sswitch_225
        0x12d98b22 -> :sswitch_211
        0x1844c711 -> :sswitch_1fd
        0x1e3e8044 -> :sswitch_1e9
        0x2f5336ed -> :sswitch_1d5
        0x2f54115e -> :sswitch_1c1
        0x2f541849 -> :sswitch_1ad
        0x31cf010e -> :sswitch_19b
        0x36ad82f4 -> :sswitch_188
        0x391a0b61 -> :sswitch_174
        0x3f3728cd -> :sswitch_160
        0x448ec687 -> :sswitch_14d
        0x46260f63 -> :sswitch_139
        0x4c505106 -> :sswitch_126
        0x4de67084 -> :sswitch_114
        0x506ac5a9 -> :sswitch_101
        0x5abad9cd -> :sswitch_ee
        0x64d2e6e9 -> :sswitch_db
        0x65e4085b -> :sswitch_c7
        0x6f373556 -> :sswitch_b4
        0x719f1dcb -> :sswitch_a0
        0x75d9a0f0 -> :sswitch_8c
        0x78fc0e50 -> :sswitch_79
        0x790521fb -> :sswitch_66
        0x7a05a409 -> :sswitch_52
        0x7a0696bd -> :sswitch_3e
        0x7a16dfe7 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_b24
    .packed-switch 0x0
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
        :pswitch_90d
    .end packed-switch

    :sswitch_data_c14
    .sparse-switch
        0x1e9d52 -> :sswitch_92a
        0x1e9d5f -> :sswitch_919
    .end sparse-switch

    :pswitch_data_c1e
    .packed-switch 0x0
        :pswitch_93f
        :pswitch_93f
    .end packed-switch
.end method

.method public static A0V(ZLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z
    .registers 5

    iget-object v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0B:I

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0B:I

    if-ne v1, v0, :cond_2a

    if-nez p0, :cond_1e

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    if-ne v1, v0, :cond_2a

    iget v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-ne v1, v0, :cond_2a

    :cond_1e
    iget-object v1, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;

    iget-object v0, p2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0J:Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/ColorInfo;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public final A12()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A08:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A02:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0M:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0K:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A07()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A06()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0W:Lcom/facebook/ads/redexgen/X/IB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IB;->A08()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A00:Lcom/facebook/ads/redexgen/X/I8;

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0S:Z

    :try_start_27
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A12()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_37

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Au;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A05(Lcom/facebook/ads/redexgen/X/Au;)V

    return-void

    :catchall_37
    move-exception v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Au;->A00()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A05(Lcom/facebook/ads/redexgen/X/Au;)V

    throw v2
.end method

.method public final A13()V
    .registers 5

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A13()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A09:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0H:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0L:J

    return-void
.end method

.method public final A14()V
    .registers 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A08()V

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A14()V

    return-void
.end method

.method public final A15(JZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3E;->A15(JZ)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A06()V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0I:J

    const/4 v4, 0x0

    iput v4, p0, Lcom/facebook/ads/redexgen/X/1A;->A05:I

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0K:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Z:[J

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0M:J

    iput v4, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    :cond_20
    if-eqz p3, :cond_26

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1A;->A0C()V

    :goto_25
    return-void

    :cond_26
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    goto :goto_25
.end method

.method public final A16(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3E;->A16(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A11()Lcom/facebook/ads/redexgen/X/9t;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9t;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0G:I

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0S:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3E;->A0U:Lcom/facebook/ads/redexgen/X/Au;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A06(Lcom/facebook/ads/redexgen/X/Au;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0W:Lcom/facebook/ads/redexgen/X/IB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IB;->A09()V

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0M:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_11

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0M:J

    :goto_d
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Dl;->A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V

    return-void

    :cond_11
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Z:[J

    array-length v0, v0

    if-ne v1, v0, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x308

    const/16 v1, 0x2d

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Z:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v0, v1, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x20a

    const/16 v1, 0x17

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Z:[J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    add-int/lit8 v0, v1, -0x1

    aput-wide p2, v2, v0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0a:[J

    add-int/lit8 v2, v1, -0x1

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0K:J

    aput-wide v0, v3, v2

    goto :goto_d

    :cond_58
    add-int/lit8 v3, v1, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_72

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_72
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "ShVF99lXvOUYr05H2Tvsc9mrs3vvqIZt"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    goto :goto_47
.end method

.method public final A1A(Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 7

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/Cy;->A03:Z

    invoke-static {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/1A;->A0V(ZLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v1, p4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0P:Lcom/facebook/ads/redexgen/X/I7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/I7;->A02:I

    if-gt v1, v0, :cond_2c

    iget v1, p4, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0P:Lcom/facebook/ads/redexgen/X/I7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/I7;->A00:I

    if-gt v1, v0, :cond_2c

    invoke-static {p2, p4}, Lcom/facebook/ads/redexgen/X/1A;->A00(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0P:Lcom/facebook/ads/redexgen/X/I7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/I7;->A01:I

    if-gt v1, v0, :cond_2c

    invoke-virtual {p3, p4}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0K(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x3

    goto :goto_29

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method public final A1B(Lcom/facebook/ads/redexgen/X/D4;Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/D4;",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "Lcom/facebook/ads/redexgen/X/X6;",
            ">;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    iget-object v8, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0O:Ljava/lang/String;

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Ha;->A0B(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_a

    return v5

    :cond_a
    const/4 v3, 0x0

    iget-object v2, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H:Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;

    if-eqz v2, :cond_1e

    const/4 v1, 0x0

    :goto_10
    iget v0, v2, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01:I

    if-ge v1, v0, :cond_1e

    invoke-virtual {v2, v1}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;->A01(I)Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData$SchemeData;->A03:Z

    or-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    invoke-interface {p1, v8, v3}, Lcom/facebook/ads/redexgen/X/D4;->A6f(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v4, :cond_4d

    if-eqz v3, :cond_45

    invoke-interface {p1, v8, v5}, Lcom/facebook/ads/redexgen/X/D4;->A6f(Ljava/lang/String;Z)Lcom/facebook/ads/redexgen/X/Cy;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_47

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "FpKuVec84vIeJrb9OhgIMf2bfNz9gMiE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_45

    :goto_44
    return v6

    :cond_45
    const/4 v6, 0x1

    goto :goto_44

    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4d
    invoke-static {p2, v2}, Lcom/facebook/ads/redexgen/X/Dl;->A0x(Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z

    move-result v0

    if-nez v0, :cond_54

    return v6

    :cond_54
    iget-object v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0K:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Cy;->A0I(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_75

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    if-lez v0, :cond_75

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    if-lez v0, :cond_75

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_8c

    iget v3, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v2, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A01:F

    float-to-double v0, v0

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Cy;->A0H(IID)Z

    move-result v6

    :cond_75
    :goto_75
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Cy;->A03:Z

    if-eqz v0, :cond_89

    const/16 v1, 0x10

    :goto_7b
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Cy;->A06:Z

    if-eqz v0, :cond_81

    const/16 v5, 0x20

    :cond_81
    if-eqz v6, :cond_87

    const/4 v0, 0x4

    :goto_84
    or-int/2addr v1, v5

    or-int/2addr v1, v0

    return v1

    :cond_87
    const/4 v0, 0x3

    goto :goto_84

    :cond_89
    const/16 v1, 0x8

    goto :goto_7b

    :cond_8c
    iget v3, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    mul-int/2addr v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_100

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "UMjIK9RMnUz7WxxIT7tVkIDt0MZGN20Y"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D9;->A00()I

    move-result v0

    if-gt v3, v0, :cond_10e

    :goto_ad
    move v6, v7

    if-nez v6, :cond_75

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12a

    const/16 v1, 0x1d

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0F:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x563

    const/4 v1, 0x1

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p3, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A08:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x358

    const/4 v1, 0x3

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Hx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x357

    const/4 v1, 0x1

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_75

    :cond_100
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "1pvxbUpXZPSG1GOfk2zj"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/D9;->A00()I

    move-result v0

    if-gt v3, v0, :cond_10e

    goto :goto_ad

    :cond_10e
    const/4 v7, 0x0

    goto :goto_ad
.end method

.method public final A1F()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1F()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    return-void
.end method

.method public final A1G()V
    .registers 7

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1G()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_36

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    if-eqz v5, :cond_35

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_25

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_25
    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "XHzJ2HWKwUKgXdkRP5t1s0JJnuLP0pfM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v4, v5, :cond_30

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    :cond_30
    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    :cond_35
    return-void

    :catchall_36
    move-exception v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    if-eqz v0, :cond_4a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    if-ne v1, v0, :cond_45

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    :cond_45
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    :cond_4a
    throw v2
.end method

.method public final A1J(J)V
    .registers 10

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    :goto_6
    iget v5, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    if-eqz v5, :cond_44

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0a:[J

    const/4 v3, 0x0

    aget-wide v0, v0, v3

    cmp-long v6, p1, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_3e

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "welnO5ckQSDvaPJP3GxM6gJ3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ltz v6, :cond_44

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Z:[J

    aget-wide v0, v2, v3

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0M:J

    add-int/lit8 v0, v5, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    invoke-static {v2, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0a:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0A:I

    invoke-static {v1, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_3e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_44
    return-void
.end method

.method public final A1K(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 11

    const/16 v2, 0x387

    const/16 v1, 0xa

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    const/16 v2, 0x391

    const/16 v1, 0x8

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v5

    const/16 v2, 0x373

    const/16 v1, 0xb

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x37e

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v3, :cond_d6

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    const/4 v3, 0x1

    :goto_42
    if-eqz v3, :cond_c7

    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    :goto_4e
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A08:I

    if-eqz v3, :cond_b9

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/2addr v1, v4

    :goto_5c
    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_9b

    iget v4, p0, Lcom/facebook/ads/redexgen/X/1A;->A0B:I

    const/16 v0, 0x5a

    if-eq v4, v0, :cond_86

    const/16 v3, 0x10e

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_d9

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "tMLsScMJVvSfEldK2kkn5FelCETUa7Eh"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_95

    :cond_86
    iget v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A08:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A08:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A06:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A01:F

    :cond_95
    :goto_95
    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0F:I

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void

    :cond_9b
    iget v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0B:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_b6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "YnEjoYuo9QDNkry4zztMBrHkotN6qawB"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A07:I

    goto :goto_95

    :cond_b6
    iput v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A07:I

    goto :goto_95

    :cond_b9
    const/16 v2, 0x3cb

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto :goto_5c

    :cond_c7
    const/16 v2, 0x54f

    const/4 v1, 0x5

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_4e

    :cond_d6
    const/4 v3, 0x0

    goto/16 :goto_42

    :cond_d9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/3E;->A1L(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/IK;->A04(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A02:F

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A02:F

    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0B:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0B:I

    return-void
.end method

.method public final A1M(Lcom/facebook/ads/redexgen/X/XE;)V
    .registers 6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A04:I

    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0K:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0K:J

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_1d

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0S:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/1A;->A1R()V

    :cond_1d
    return-void
.end method

.method public final A1N(Lcom/facebook/ads/redexgen/X/Cy;Landroid/media/MediaCodec;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Landroid/media/MediaCrypto;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/D7;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A19()[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/1A;->A04(Lcom/facebook/ads/redexgen/X/Cy;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)Lcom/facebook/ads/redexgen/X/I7;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/1A;->A0P:Lcom/facebook/ads/redexgen/X/I7;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Y:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0G:I

    invoke-direct {p0, p3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->A03(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/I7;ZI)Landroid/media/MediaFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    if-nez v0, :cond_2f

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1A;->A0T(Lcom/facebook/ads/redexgen/X/Cy;)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    if-nez v0, :cond_2b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0V:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/Cy;->A05:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;->A01(Landroid/content/Context;Z)Lcom/facebook/ads/internal/exoplayer2/thirdparty/video/DummySurface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    :cond_2b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    :cond_2f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p2, v2, v1, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    sget v1, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_47

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0S:Z

    if-eqz v0, :cond_47

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/I8;

    invoke-direct {v0, p0, p2, v1}, Lcom/facebook/ads/redexgen/X/I8;-><init>(Lcom/facebook/ads/redexgen/X/1A;Landroid/media/MediaCodec;Lcom/facebook/ads/redexgen/X/I6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A00:Lcom/facebook/ads/redexgen/X/I8;

    :cond_47
    return-void
.end method

.method public final A1O(Ljava/lang/String;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/IK;->A07(Ljava/lang/String;JJ)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/1A;->A0U(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0Q:Z

    return-void
.end method

.method public final A1P(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    move-object/from16 v10, p0

    iget-wide v3, v10, Lcom/facebook/ads/redexgen/X/1A;->A0I:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    move-wide/from16 v11, p1

    if-nez v0, :cond_11

    iput-wide v11, v10, Lcom/facebook/ads/redexgen/X/1A;->A0I:J

    :cond_11
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/1A;->A0M:J

    move-wide/from16 v6, p9

    sub-long v2, v6, v0

    const/4 v4, 0x1

    move-object/from16 v14, p5

    move/from16 v13, p7

    if-eqz p11, :cond_22

    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/1A;->A0H(Landroid/media/MediaCodec;IJ)V

    return v4

    :cond_22
    sub-long v8, v6, v11

    iget-object v1, v10, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    iget-object v0, v10, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    const/16 v21, 0x0

    if-ne v1, v0, :cond_37

    invoke-static {v8, v9}, Lcom/facebook/ads/redexgen/X/1A;->A0N(J)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/1A;->A0H(Landroid/media/MediaCodec;IJ)V

    return v4

    :cond_36
    return v21

    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    const-wide/16 v17, 0x3e8

    mul-long v19, v19, v17

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/Dl;->A7t()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_6e

    const/4 v15, 0x1

    :goto_47
    iget-boolean v0, v10, Lcom/facebook/ads/redexgen/X/1A;->A0R:Z

    if-eqz v0, :cond_57

    if-eqz v15, :cond_8d

    iget-wide v4, v10, Lcom/facebook/ads/redexgen/X/1A;->A0L:J

    sub-long v0, v19, v4

    invoke-direct {v10, v8, v9, v0, v1}, Lcom/facebook/ads/redexgen/X/1A;->A0R(JJ)Z

    move-result v0

    if-eqz v0, :cond_8d

    :cond_57
    sget v5, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_70

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6e
    const/4 v15, 0x0

    goto :goto_47

    :cond_70
    sget-object v4, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "Ps"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const/16 v0, 0x15

    if-lt v5, v0, :cond_89

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object/from16 v1, p0

    move-wide v4, v2

    move-object v2, v14

    move v3, v13

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/1A;->A0I(Landroid/media/MediaCodec;IJJ)V

    :goto_87
    const/4 v0, 0x1

    return v0

    :cond_89
    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/1A;->A0G(Landroid/media/MediaCodec;IJ)V

    goto :goto_87

    :cond_8d
    if-eqz v15, :cond_95

    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/1A;->A0I:J

    cmp-long v4, v11, v0

    if-nez v4, :cond_96

    :cond_95
    return v21

    :cond_96
    move-wide/from16 v4, p3

    sub-long v19, v19, v4

    sub-long v8, v8, v19

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    mul-long v8, v8, v17

    add-long v0, v15, v8

    iget-object v8, v10, Lcom/facebook/ads/redexgen/X/1A;->A0W:Lcom/facebook/ads/redexgen/X/IB;

    invoke-virtual {v8, v6, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/IB;->A07(JJ)J

    move-result-wide v29

    sub-long v0, v29, v15

    div-long v0, v0, v17

    invoke-direct {v10, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/1A;->A0P(JJ)Z

    move-result v6

    if-eqz v6, :cond_dc

    move-object/from16 v22, p0

    move-object/from16 v23, v14

    move/from16 v24, v13

    move-wide/from16 v25, v2

    move-wide/from16 v27, v11

    invoke-direct/range {v22 .. v28}, Lcom/facebook/ads/redexgen/X/1A;->A0S(Landroid/media/MediaCodec;IJJ)Z

    move-result v9

    sget-object v7, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v6, v7, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v6, 0xb

    if-eq v7, v6, :cond_d9

    sget-object v8, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v7, "4"

    const/4 v6, 0x6

    aput-object v7, v8, v6

    if-eqz v9, :cond_dc

    :goto_d8
    return v21

    :cond_d9
    if-eqz v9, :cond_dc

    goto :goto_d8

    :cond_dc
    invoke-direct {v10, v0, v1, v4, v5}, Lcom/facebook/ads/redexgen/X/1A;->A0Q(JJ)Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/1A;->A0F(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_e7
    sget v5, Lcom/facebook/ads/redexgen/X/Hx;->A02:I

    const/16 v4, 0x15

    if-lt v5, v4, :cond_101

    const-wide/32 v5, 0xc350

    cmp-long v4, v0, v5

    if-gez v4, :cond_123

    move-object/from16 v24, p0

    move-object/from16 v25, v14

    move/from16 v26, v13

    move-wide/from16 v27, v2

    invoke-direct/range {v24 .. v30}, Lcom/facebook/ads/redexgen/X/1A;->A0I(Landroid/media/MediaCodec;IJJ)V

    const/4 v0, 0x1

    return v0

    :cond_101
    const-wide/16 v5, 0x7530

    cmp-long v4, v0, v5

    if-gez v4, :cond_123

    const-wide/16 v5, 0x2af8

    cmp-long v4, v0, v5

    if-lez v4, :cond_11e

    const-wide/16 v4, 0x2710

    sub-long/2addr v0, v4

    :try_start_110
    div-long v0, v0, v17

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_11e
    :try_end_116
    .catch Ljava/lang/InterruptedException; {:try_start_110 .. :try_end_116} :catch_116

    :catch_116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return v21

    :cond_11e
    :goto_11e
    invoke-direct {v10, v14, v13, v2, v3}, Lcom/facebook/ads/redexgen/X/1A;->A0G(Landroid/media/MediaCodec;IJ)V

    const/4 v0, 0x1

    return v0

    :cond_123
    return v21
.end method

.method public final A1Q(Lcom/facebook/ads/redexgen/X/Cy;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1A;->A0T(Lcom/facebook/ads/redexgen/X/Cy;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final A1R()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0R:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0R:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0X:Lcom/facebook/ads/redexgen/X/IK;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IK;->A03(Landroid/view/Surface;)V

    :cond_e
    return-void
.end method

.method public final A8L(ILjava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/1A;->A0L(Landroid/view/Surface;)V

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x4

    if-ne p1, v0, :cond_34

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0F:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1C()Landroid/media/MediaCodec;

    move-result-object v4

    if-eqz v4, :cond_8

    iget v3, p0, Lcom/facebook/ads/redexgen/X/1A;->A0F:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_38

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "ynW9njiEKJeSgaNYH6SlaayD7qz19oDR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    goto :goto_8

    :cond_34
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Dl;->A8L(ILjava/lang/Object;)V

    goto :goto_8

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A90()Z
    .registers 10

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/3E;->A90()Z

    move-result v0

    const/4 v8, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0R:Z

    if-nez v0, :cond_36

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0N:Landroid/view/Surface;

    if-eqz v1, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0O:Landroid/view/Surface;

    if-eq v0, v1, :cond_36

    :cond_18
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/3E;->A1C()Landroid/media/MediaCodec;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_39

    sget-object v2, Lcom/facebook/ads/redexgen/X/1A;->A0e:[Ljava/lang/String;

    const-string v1, "3hQTJaHLIy4JZfUSwiFMMfqMh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_36

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1A;->A0S:Z

    if-eqz v0, :cond_3f

    :cond_36
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    return v8

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    const/4 v7, 0x0

    cmp-long v0, v1, v5

    if-nez v0, :cond_47

    return v7

    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_52

    return v8

    :cond_52
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/1A;->A0J:J

    return v7
.end method
