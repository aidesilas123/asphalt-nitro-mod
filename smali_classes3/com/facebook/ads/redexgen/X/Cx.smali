###### Class com.facebook.ads.redexgen.X.C0955Cx (com.facebook.ads.redexgen.X.Cx)
.class public final Lcom/facebook/ads/redexgen/X/Cx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Cw;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Cx;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Bb;)Lcom/facebook/ads/redexgen/X/W2;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v10, p0

    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x10

    new-instance v7, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v7, v9}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    invoke-static {v10, v7}, Lcom/facebook/ads/redexgen/X/Cw;->A00(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v0

    iget v3, v0, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    const/16 v2, 0x6f

    const/4 v1, 0x4

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    const/4 v13, 0x0

    if-eq v3, v0, :cond_23

    return-object v13

    :cond_23
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    const/4 v8, 0x0

    const/4 v0, 0x4

    invoke-interface {v10, v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v4

    const/16 v2, 0xc3

    const/4 v1, 0x4

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v3

    const/16 v2, 0xc7

    const/16 v1, 0xf

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v5

    if-eq v4, v3, :cond_69

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x73

    const/16 v1, 0x19

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_69
    invoke-static {v10, v7}, Lcom/facebook/ads/redexgen/X/Cw;->A00(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v1

    :goto_6d
    iget v4, v1, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    const/16 v3, 0xda

    const/4 v2, 0x4

    const/16 v0, 0x20

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    if-eq v4, v0, :cond_89

    iget-wide v0, v1, Lcom/facebook/ads/redexgen/X/Cw;->A01:J

    long-to-int v2, v0

    invoke-interface {v10, v2}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    invoke-static {v10, v7}, Lcom/facebook/ads/redexgen/X/Cw;->A00(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v1

    goto :goto_6d

    :cond_89
    iget-wide v2, v1, Lcom/facebook/ads/redexgen/X/Cw;->A01:J

    const-wide/16 v11, 0x10

    cmp-long v0, v2, v11

    if-ltz v0, :cond_dd

    const/4 v0, 0x1

    :goto_92
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Hh;->A00:[B

    invoke-interface {v10, v0, v8, v9}, Lcom/facebook/ads/redexgen/X/Bb;->ADl([BII)V

    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0C()I

    move-result v6

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0C()I

    move-result v14

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0B()I

    move-result v15

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0B()I

    move-result v16

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0C()I

    move-result v4

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0C()I

    move-result v3

    mul-int v0, v14, v3

    div-int/lit8 v7, v0, 0x8

    if-ne v4, v7, :cond_12e

    sparse-switch v6, :sswitch_data_160

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa6

    const/16 v1, 0x1d

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_dd
    const/4 v0, 0x0

    goto :goto_92

    :sswitch_df
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Hx;->A02(I)I

    move-result v8

    goto :goto_e9

    :sswitch_e4
    const/16 v0, 0x20

    if-ne v3, v0, :cond_e9

    const/4 v8, 0x4

    :cond_e9
    :goto_e9
    if-nez v8, :cond_11b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8c

    const/16 v1, 0x1a

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_11b
    iget-wide v1, v1, Lcom/facebook/ads/redexgen/X/Cw;->A01:J

    long-to-int v0, v1

    sub-int/2addr v0, v9

    invoke-interface {v10, v0}, Lcom/facebook/ads/redexgen/X/Bb;->A3S(I)V

    new-instance v13, Lcom/facebook/ads/redexgen/X/W2;

    move/from16 p0, v8

    move/from16 v18, v3

    move/from16 v17, v4

    invoke-direct/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/W2;-><init>(IIIIII)V

    return-object v13

    :cond_12e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x1a

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xa

    const/4 v1, 0x7

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_160
    .sparse-switch
        0x1 -> :sswitch_df
        0x3 -> :sswitch_e4
        0xfffe -> :sswitch_df
    .end sparse-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Cx;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x24

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

    const/16 v0, 0xde

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Cx;->A00:[B

    return-void

    :array_a
    .array-data 1
        0x27t
        0x61t
        0x68t
        0x75t
        0x27t
        0x73t
        0x7et
        0x77t
        0x62t
        0x27t
        0x21t
        0x3at
        0x7dt
        0x75t
        0x6et
        0x20t
        0x3at
        0x7bt
        0x50t
        0x4dt
        0x56t
        0x53t
        0x18t
        0x51t
        0x4bt
        0x18t
        0x4ct
        0x57t
        0x57t
        0x18t
        0x54t
        0x59t
        0x4at
        0x5ft
        0x5dt
        0x18t
        0x10t
        0x46t
        0xat
        0x7ft
        0x7at
        0x13t
        0x11t
        0x18t
        0x4ct
        0x57t
        0x18t
        0x4bt
        0x53t
        0x51t
        0x48t
        0x3t
        0x18t
        0x51t
        0x5ct
        0x2t
        0x18t
        0x51t
        0x6ct
        0x64t
        0x71t
        0x77t
        0x60t
        0x71t
        0x70t
        0x34t
        0x76t
        0x78t
        0x7bt
        0x77t
        0x7ft
        0x34t
        0x75t
        0x78t
        0x7dt
        0x73t
        0x7at
        0x79t
        0x71t
        0x7at
        0x60t
        0x2et
        0x34t
        0x67t
        0x49t
        0x40t
        0x41t
        0x5ct
        0x47t
        0x40t
        0x49t
        0xet
        0x5bt
        0x40t
        0x45t
        0x40t
        0x41t
        0x59t
        0x40t
        0xet
        0x79t
        0x6ft
        0x78t
        0xet
        0x4dt
        0x46t
        0x5bt
        0x40t
        0x45t
        0x14t
        0xet
        0x6t
        0x1dt
        0x12t
        0x12t
        0x6at
        0x51t
        0x4ct
        0x4at
        0x4ft
        0x4ft
        0x50t
        0x4dt
        0x4bt
        0x5at
        0x5bt
        0x1ft
        0x6dt
        0x76t
        0x79t
        0x79t
        0x1ft
        0x59t
        0x50t
        0x4dt
        0x52t
        0x5et
        0x4bt
        0x5t
        0x1ft
        0x14t
        0x2ft
        0x32t
        0x34t
        0x31t
        0x31t
        0x2et
        0x33t
        0x35t
        0x24t
        0x25t
        0x61t
        0x16t
        0x0t
        0x17t
        0x61t
        0x23t
        0x28t
        0x35t
        0x61t
        0x25t
        0x24t
        0x31t
        0x35t
        0x29t
        0x61t
        0x6ft
        0x54t
        0x49t
        0x4ft
        0x4at
        0x4at
        0x55t
        0x48t
        0x4et
        0x5ft
        0x5et
        0x1at
        0x6dt
        0x7bt
        0x6ct
        0x1at
        0x5ct
        0x55t
        0x48t
        0x57t
        0x5bt
        0x4et
        0x1at
        0x4et
        0x43t
        0x4at
        0x5ft
        0x0t
        0x1at
        0x7et
        0x68t
        0x7ft
        0x6ct
        0x7et
        0x48t
        0x5ft
        0x61t
        0x4ct
        0x48t
        0x4dt
        0x4ct
        0x5bt
        0x7bt
        0x4ct
        0x48t
        0x4dt
        0x4ct
        0x5bt
        0xat
        0xft
        0x1at
        0xft
        0x62t
        0x69t
        0x70t
        0x24t
    .end array-data
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/W2;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Bb;->AEm()V

    const/16 v7, 0x8

    new-instance v6, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v6, v7}, Lcom/facebook/ads/redexgen/X/Hh;-><init>(I)V

    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/Cw;->A00(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v5

    :goto_14
    iget v3, v5, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    const/16 v2, 0xd6

    const/4 v1, 0x4

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    if-eq v3, v0, :cond_9a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x53

    const/16 v1, 0x1c

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xc7

    const/16 v1, 0xf

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x8

    iget-wide v3, v5, Lcom/facebook/ads/redexgen/X/Cw;->A01:J

    add-long/2addr v3, v0

    iget v8, v5, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    const/16 v2, 0x6f

    const/4 v1, 0x4

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_67

    const-wide/16 v3, 0xc

    :cond_67
    const-wide/32 v1, 0x7fffffff

    cmp-long v0, v3, v1

    if-gtz v0, :cond_77

    long-to-int v0, v3

    invoke-interface {p0, v0}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    invoke-static {p0, v6}, Lcom/facebook/ads/redexgen/X/Cw;->A00(Lcom/facebook/ads/redexgen/X/Bb;Lcom/facebook/ads/redexgen/X/Hh;)Lcom/facebook/ads/redexgen/X/Cw;

    move-result-object v5

    goto :goto_14

    :cond_77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x11

    const/16 v1, 0x28

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Cx;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Cw;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/9d;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/9d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    invoke-interface {p0, v7}, Lcom/facebook/ads/redexgen/X/Bb;->AFe(I)V

    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/Bb;->A7a()J

    move-result-wide v2

    iget-wide v0, v5, Lcom/facebook/ads/redexgen/X/Cw;->A01:J

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/W2;->A06(JJ)V

    return-void
.end method
