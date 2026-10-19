###### Class com.facebook.ads.redexgen.X.XK (com.facebook.ads.redexgen.X.XK)
.class public final Lcom/facebook/ads/redexgen/X/XK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/AJ;


# static fields
.field public static A06:[Ljava/lang/String;

.field public static final A07:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Ljava/nio/ByteBuffer;

.field public A05:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ah04u6Q1dWL1egRXsMbkKPPKVNg3n80Y"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1r3Xl"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QdGXgsTRn6hV21sTZ0R1NqLOMYSBKtb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "W5J07OSQmEt2BpZCmOH8LkruncIVNrBM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eos"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Srtad58bv8C1EQlDg1Sg05LzKtWehsxy"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6l07m1yopJeFlxaeyKeGX2bioVISysWk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "EvvDtS6FF2cIgMDn1y2HucXqTtg4jIlT"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/XK;->A06:[Ljava/lang/String;

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/XK;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A00:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A02:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A04:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static A00(ILjava/nio/ByteBuffer;)V
    .registers 7

    const-wide v3, 0x3e00000000200000L    # 4.656612875245797E-10

    int-to-double v1, p0

    mul-double/2addr v1, v3

    double-to-float v0, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/XK;->A07:I

    if-ne v1, v0, :cond_35

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/XK;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_39

    sget-object v2, Lcom/facebook/ads/redexgen/X/XK;->A06:[Ljava/lang/String;

    const-string v1, "4Wp1fSxBSz27MSPaqgAWdYVJBUm2UDMg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "ROimvzAXRxuGV4aswmxntShxO5JnpSBy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_35
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void

    :cond_39
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A4N(III)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AI;
        }
    .end annotation

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hx;->A0b(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A01:I

    if-ne v0, p1, :cond_14

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A00:I

    if-ne v0, p2, :cond_14

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A02:I

    if-ne v0, p3, :cond_14

    const/4 v0, 0x0

    return v0

    :cond_14
    iput p1, p0, Lcom/facebook/ads/redexgen/X/XK;->A01:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/XK;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/XK;->A02:I

    const/4 v0, 0x1

    return v0

    :cond_1c
    new-instance v0, Lcom/facebook/ads/redexgen/X/AI;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/AI;-><init>(III)V

    throw v0
.end method

.method public final A7O()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XK;->A04:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A04:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public final A7P()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A00:I

    return v0
.end method

.method public final A7Q()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final A7R()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A01:I

    return v0
.end method

.method public final A8l()Z
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A02:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0b(I)Z

    move-result v0

    return v0
.end method

.method public final A8q()Z
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A05:Z

    if-eqz v0, :cond_27

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XK;->A04:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/XK;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_29

    sget-object v2, Lcom/facebook/ads/redexgen/X/XK;->A06:[Ljava/lang/String;

    const-string v1, "qfZMyeN6d8pBtgFrDPBavvok2D4WqpK2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    if-ne v3, v0, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26

    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AE6()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A05:Z

    return-void
.end method

.method public final AE7(Ljava/nio/ByteBuffer;)V
    .registers 8

    iget v1, p0, Lcom/facebook/ads/redexgen/X/XK;->A02:I

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_82

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v1, v2, v3

    if-eqz v4, :cond_7d

    :goto_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, v1, :cond_77

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    :goto_29
    if-eqz v4, :cond_8a

    :goto_2b
    if-ge v3, v2, :cond_b2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    sget-object v4, Lcom/facebook/ads/redexgen/X/XK;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0x1c

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x66

    if-eq v4, v0, :cond_84

    sget-object v5, Lcom/facebook/ads/redexgen/X/XK;->A06:[Ljava/lang/String;

    const-string v4, "tg0osbUMfAK2L8b7LXggWdc0GJyIN6RO"

    const/4 v0, 0x5

    aput-object v4, v5, v0

    const-string v4, "LN5IASfbHFxc5GOwRpJRg3zlfXbH1jQ8"

    const/4 v0, 0x7

    aput-object v4, v5, v0

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XK;->A00(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v3, v3, 0x4

    goto :goto_2b

    :cond_77
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_29

    :cond_7d
    div-int/lit8 v0, v1, 0x3

    mul-int/lit8 v1, v0, 0x4

    goto :goto_13

    :cond_82
    const/4 v4, 0x0

    goto :goto_7

    :cond_84
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8a
    :goto_8a
    if-ge v3, v2, :cond_b2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/XK;->A00(ILjava/nio/ByteBuffer;)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_8a

    :cond_b2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A04:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final flush()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A04:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A05:Z

    return-void
.end method

.method public final reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XK;->flush()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A00:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A02:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/AJ;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/XK;->A03:Ljava/nio/ByteBuffer;

    return-void
.end method
