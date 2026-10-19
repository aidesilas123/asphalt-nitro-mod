###### Class com.facebook.ads.redexgen.X.G9 (com.facebook.ads.redexgen.X.G9)
.class public final Lcom/facebook/ads/redexgen/X/G9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/G7;,
        Lcom/facebook/ads/redexgen/X/G8;
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/regex/Pattern;

.field public static final A04:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "JYYG6mQudNNGYNEgDR02nAMcKzDjIK4P"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2FeNcZ4AMvklOu4dQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gTW6toOfk8MVsyPSs"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RutE2HgswW2Ba8ERBuDpKSxIcN55U9"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rp2dSjsGIei"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VbvhM5GUqSDZ5Gwz8nmiFAQ41xb0JLlL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "3r4p5hSJjLrlxa79edZPjpayqJig4NbN"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nYAJe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/G9;->A05()V

    const/16 v2, 0xa1

    const/16 v1, 0x1a

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G9;->A03:Ljava/util/regex/Pattern;

    const/4 v2, 0x3

    const/16 v1, 0xc

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/G9;->A04:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/G9;->A00:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static A00(Ljava/lang/String;)I
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_c0

    :cond_a
    const/4 v0, -0x1

    :goto_b
    packed-switch v0, :pswitch_data_d2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2b

    const/16 v1, 0x16

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x80000000

    return v0

    :sswitch_39
    const/16 v2, 0xc5

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5d

    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "DMfdGkOFUxynodxW9z1tlml8oHZW88"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_a

    :goto_5b
    const/4 v0, 0x1

    goto :goto_b

    :cond_5d
    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "ZWUMzT4FbwhCC9zvg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "lQdDUKdfIZs4MkB9q"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_a

    goto :goto_5b

    :sswitch_6c
    const/16 v2, 0xfe

    const/4 v1, 0x6

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :sswitch_7d
    const/16 v3, 0xcb

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_ba

    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "1rUDZc1zpmKXAlK5wqzuXN7L1n8yuk"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x3

    const/16 v0, 0x30

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto/16 :goto_b

    :sswitch_a5
    const/16 v2, 0x119

    const/4 v1, 0x5

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto/16 :goto_b

    :pswitch_b7
    return v4

    :pswitch_b8
    return v5

    :pswitch_b9
    return v6

    :cond_ba
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_data_c0
    .sparse-switch
        -0x514d33ab -> :sswitch_39
        -0x4009266b -> :sswitch_6c
        0x188db -> :sswitch_7d
        0x68ac462 -> :sswitch_a5
    .end sparse-switch

    :pswitch_data_d2
    .packed-switch 0x0
        :pswitch_b7
        :pswitch_b8
        :pswitch_b8
        :pswitch_b9
    .end packed-switch
.end method

.method public static A01(Ljava/lang/String;I)I
    .registers 4

    const/16 v0, 0x3e

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_d
    return v0

    :cond_e
    add-int/lit8 v0, v1, 0x1

    goto :goto_d
.end method

.method public static A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a6

    :cond_7
    const/4 v0, -0x1

    :goto_8
    packed-switch v0, :pswitch_data_c0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    const/16 v1, 0x19

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :sswitch_35
    const/16 v2, 0xc5

    const/4 v1, 0x6

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_46
    const/16 v2, 0xfe

    const/4 v1, 0x6

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_57
    const/16 v2, 0xcb

    const/4 v1, 0x3

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_68
    const/16 v2, 0xf4

    const/4 v1, 0x4

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_79
    const/16 v2, 0x110

    const/4 v1, 0x5

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_8

    :sswitch_8b
    const/16 v2, 0x119

    const/4 v1, 0x5

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_8

    :pswitch_9d
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :pswitch_a0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object v0

    :pswitch_a3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object v0

    :sswitch_data_a6
    .sparse-switch
        -0x514d33ab -> :sswitch_35
        -0x4009266b -> :sswitch_46
        0x188db -> :sswitch_57
        0x32a007 -> :sswitch_68
        0x677c21c -> :sswitch_79
        0x68ac462 -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9d
        :pswitch_a0
        :pswitch_a0
        :pswitch_a3
        :pswitch_a3
    .end packed-switch
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 p0, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_20

    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "n2qP40ip31gyFkT4bwxWbWgEBn8x5R"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object p0

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    const/16 v2, 0x9c

    const/4 v1, 0x5

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A0m(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static A05()V
    .registers 1

    const/16 v0, 0x120

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/G9;->A01:[B

    return-void

    :array_a
    .array-data 1
        0x27t
        0x7ct
        0x47t
        0x65t
        0x11t
        0x1et
        0x66t
        0x72t
        0x64t
        0x77t
        0x65t
        0x11t
        0x1et
        0x66t
        0x64t
        0x64t
        0x5et
        0x42t
        0x38t
        0x1ft
        0x7t
        0x10t
        0x1dt
        0x18t
        0x15t
        0x51t
        0x10t
        0x1dt
        0x18t
        0x16t
        0x1ft
        0x1ct
        0x14t
        0x1ft
        0x5t
        0x51t
        0x7t
        0x10t
        0x1dt
        0x4t
        0x14t
        0x4bt
        0x51t
        0x19t
        0x3et
        0x26t
        0x31t
        0x3ct
        0x39t
        0x34t
        0x70t
        0x31t
        0x3et
        0x33t
        0x38t
        0x3ft
        0x22t
        0x70t
        0x26t
        0x31t
        0x3ct
        0x25t
        0x35t
        0x6at
        0x70t
        0x51t
        0x69t
        0x6bt
        0x72t
        0x72t
        0x6bt
        0x6ct
        0x65t
        0x22t
        0x60t
        0x63t
        0x66t
        0x22t
        0x61t
        0x77t
        0x67t
        0x22t
        0x71t
        0x67t
        0x76t
        0x76t
        0x6bt
        0x6ct
        0x65t
        0x38t
        0x22t
        0x69t
        0x51t
        0x53t
        0x4at
        0x4at
        0x53t
        0x54t
        0x5dt
        0x1at
        0x59t
        0x4ft
        0x5ft
        0x1at
        0x4dt
        0x53t
        0x4et
        0x52t
        0x1at
        0x58t
        0x5bt
        0x5et
        0x1at
        0x52t
        0x5ft
        0x5bt
        0x5et
        0x5ft
        0x48t
        0x0t
        0x1at
        0xft
        0x34t
        0x31t
        0x34t
        0x35t
        0x2dt
        0x34t
        0x7at
        0x39t
        0x2ft
        0x3ft
        0x7at
        0x29t
        0x3ft
        0x2et
        0x2et
        0x33t
        0x34t
        0x3dt
        0x7at
        0x15t
        0x27t
        0x20t
        0x34t
        0x36t
        0x36t
        0x1t
        0x37t
        0x27t
        0x12t
        0x23t
        0x30t
        0x31t
        0x27t
        0x30t
        0x3at
        0x41t
        0x3dt
        0x4ft
        0x3ct
        0x58t
        0x2et
        0x5at
        0x55t
        0x2dt
        0x2ft
        0x5at
        0x75t
        0x2dt
        0x2bt
        0x2bt
        0x38t
        0x5at
        0x75t
        0x2dt
        0x2et
        0x5at
        0x55t
        0x2dt
        0x2ft
        0x2et
        0x28t
        0x2ct
        0x2ft
        0x39t
        0x22t
        0x6at
        0x67t
        0x62t
        0x6ct
        0x65t
        0x30t
        0x3ct
        0x21t
        0x6dt
        0x24t
        0x4ct
        0x4at
        0x41t
        0x5bt
        0x4at
        0x5dt
        0x18t
        0x13t
        0x19t
        0x14t
        0x7t
        0x42t
        0x63t
        0x6dt
        0x64t
        0x65t
        0x78t
        0x63t
        0x64t
        0x6dt
        0x2at
        0x7ft
        0x64t
        0x79t
        0x7ft
        0x7at
        0x7at
        0x65t
        0x78t
        0x7et
        0x6ft
        0x6et
        0x2at
        0x6ft
        0x64t
        0x7et
        0x63t
        0x7et
        0x73t
        0x30t
        0x2at
        0x2dt
        0x2ct
        0x35t
        0x38t
        0x37t
        0x3et
        0x9t
        0x0t
        0x3t
        0x11t
        0x72t
        0x77t
        0x70t
        0x7bt
        0x54t
        0x4ct
        0x18t
        0x1ct
        0x11t
        0x11t
        0x19t
        0x10t
        0x57t
        0x5bt
        0x4at
        0x49t
        0x4ft
        0x50t
        0x4ct
        0x56t
        0x4bt
        0x56t
        0x50t
        0x51t
        0x22t
        0x39t
        0x37t
        0x38t
        0x24t
        0x3at
        0x20t
        0x33t
        0x2ct
        0x1dt
        0x1at
        0xft
        0x1ct
        0x1at
        0x6ft
        0x4at
    .end array-data
.end method

.method public static A06(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/G4;II)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A08()I

    move-result v1

    const/4 v0, -0x1

    const/16 v3, 0x21

    if-eq v1, v0, :cond_18

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A08()I

    move-result v1

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_18
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0O()Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_26
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0P()Z

    move-result v0

    if-eqz v0, :cond_34

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_34
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0N()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A06()I

    move-result v1

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_46
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0M()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A05()I

    move-result v1

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_58
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0H()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_c6

    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "tzfwj6Yb5L7snAfsv0bj9UNvpNFUfxvv"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v4, :cond_80

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0H()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_80
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0A()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_92

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A0A()Landroid/text/Layout$Alignment;

    move-result-object v1

    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_92
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A07()I

    move-result v0

    packed-switch v0, :pswitch_data_cc

    :goto_99
    return-void

    :pswitch_9a
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A04()F

    move-result v0

    float-to-int v2, v0

    const/4 v1, 0x1

    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, v2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_99

    :pswitch_a9
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A04()F

    move-result v1

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_99

    :pswitch_b6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/G4;->A04()F

    move-result v1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_99

    :cond_c6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_a9
        :pswitch_b6
    .end packed-switch
.end method

.method public static A07(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ba

    :cond_7
    const/4 v0, -0x1

    :goto_8
    packed-switch v0, :pswitch_data_cc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xd1

    const/16 v1, 0x1f

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x10

    const/4 v1, 0x2

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    return-void

    :pswitch_41
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_40

    :pswitch_47
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_40

    :pswitch_4d
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_40

    :pswitch_53
    const/16 v3, 0x26

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_67

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_67
    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "j55CB"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_40

    :sswitch_72
    const/16 v2, 0xce

    const/4 v1, 0x2

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_83
    const/16 v2, 0xfc

    const/4 v1, 0x2

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_8

    :sswitch_95
    const/16 v2, 0xc0

    const/4 v1, 0x3

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto/16 :goto_8

    :sswitch_a7
    const/16 v2, 0x104

    const/4 v1, 0x4

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto/16 :goto_8

    nop

    :sswitch_data_ba
    .sparse-switch
        0xced -> :sswitch_72
        0xd88 -> :sswitch_83
        0x179c4 -> :sswitch_95
        0x337f11 -> :sswitch_a7
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_41
        :pswitch_47
        :pswitch_4d
        :pswitch_53
    .end packed-switch
.end method

.method public static A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;)V
    .registers 9

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/facebook/ads/redexgen/X/G9;->A04:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :goto_10
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "ISZNO"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v3, :cond_e2

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    :try_start_39
    const/16 v2, 0xf8

    const/4 v1, 0x4

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-static {v6, p1}, Lcom/facebook/ads/redexgen/X/G9;->A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;)V

    goto :goto_10

    :cond_4c
    const/16 v2, 0xbb

    const/4 v1, 0x5

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/G9;->A02(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A0B(Landroid/text/Layout$Alignment;)Lcom/facebook/ads/redexgen/X/G6;

    goto :goto_10

    :cond_63
    const/16 v2, 0x108

    const/16 v1, 0x8

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-static {v6, p1}, Lcom/facebook/ads/redexgen/X/G9;->A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;)V

    goto :goto_10

    :cond_77
    const/16 v2, 0x115

    const/4 v1, 0x4

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/GA;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A05(F)Lcom/facebook/ads/redexgen/X/G6;

    goto :goto_10

    :cond_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x79

    const/16 v1, 0x14

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xf

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10
    :try_end_be
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_be} :catch_be

    :catch_be
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x41

    const/16 v1, 0x1a

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_e2
    return-void
.end method

.method public static A09(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_47

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/G9;->A00(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A06(I)Lcom/facebook/ads/redexgen/X/G6;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1b
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GA;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A03(F)Lcom/facebook/ads/redexgen/X/G6;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/G6;->A07(I)Lcom/facebook/ads/redexgen/X/G6;

    :goto_34
    return-void

    :cond_35
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_3d

    add-int/lit8 v0, v0, -0x1

    :cond_3d
    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A03(F)Lcom/facebook/ads/redexgen/X/G6;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A07(I)Lcom/facebook/ads/redexgen/X/G6;

    goto :goto_34

    :cond_47
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A06(I)Lcom/facebook/ads/redexgen/X/G6;

    goto :goto_1b
.end method

.method public static A0A(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_23

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/G9;->A00(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A08(I)Lcom/facebook/ads/redexgen/X/G6;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_1b
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/GA;->A00(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A04(F)Lcom/facebook/ads/redexgen/X/G6;

    return-void

    :cond_23
    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/G6;->A08(I)Lcom/facebook/ads/redexgen/X/G6;

    goto :goto_1b
.end method

.method public static A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G7;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/G7;",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G4;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G8;",
            ">;)V"
        }
    .end annotation

    iget v4, p1, Lcom/facebook/ads/redexgen/X/G7;->A00:I

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    iget-object v7, p1, Lcom/facebook/ads/redexgen/X/G7;->A01:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v6, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_e4

    :cond_11
    const/4 v8, -0x1

    :goto_12
    const/16 v7, 0x21

    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_a3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :sswitch_2c
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v8, 0x6

    goto :goto_12

    :sswitch_3c
    const/16 v2, 0xc3

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v8, 0x0

    goto :goto_12

    :sswitch_4d
    const/16 v2, 0xc4

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v8, 0x3

    goto :goto_12

    :sswitch_5e
    const/16 v2, 0xd0

    const/4 v1, 0x1

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v8, 0x1

    goto :goto_12

    :sswitch_6f
    const/16 v2, 0x11e

    const/4 v1, 0x1

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v8, 0x2

    goto :goto_12

    :sswitch_80
    const/16 v2, 0x11f

    const/4 v1, 0x1

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v8, 0x5

    goto :goto_12

    :sswitch_91
    const/16 v2, 0xf0

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v8, 0x4

    goto/16 :goto_12

    :cond_a3
    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "fbk5bLqQNEDh8uMBzoI0ZNvOUZBwB"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    packed-switch v8, :pswitch_data_102

    return-void

    :pswitch_ae
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v0, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c8

    :pswitch_b7
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2, v0, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_c8

    :pswitch_c0
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p2, v0, v4, v3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_c8
    :pswitch_c8
    invoke-interface {p4}, Ljava/util/List;->clear()V

    invoke-static {p3, p0, p1, p4}, Lcom/facebook/ads/redexgen/X/G9;->A0D(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G7;Ljava/util/List;)V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_d3
    if-ge v1, v2, :cond_e3

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/G8;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G8;->A01:Lcom/facebook/ads/redexgen/X/G4;

    invoke-static {p2, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/G9;->A06(Landroid/text/SpannableStringBuilder;Lcom/facebook/ads/redexgen/X/G4;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    :cond_e3
    return-void

    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_2c
        0x62 -> :sswitch_3c
        0x63 -> :sswitch_4d
        0x69 -> :sswitch_5e
        0x75 -> :sswitch_6f
        0x76 -> :sswitch_80
        0x3291ee -> :sswitch_91
    .end sparse-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_b7
        :pswitch_c0
        :pswitch_c8
        :pswitch_c8
        :pswitch_c8
        :pswitch_c8
    .end packed-switch
.end method

.method public static A0C(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/G6;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G4;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :cond_10
    :goto_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_f4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sparse-switch v7, :sswitch_data_110

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    sget-object v4, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x55

    if-eq v4, v0, :cond_ee

    sget-object v6, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v4, "1EgemSjEd6OX6IjZrpNfGkrOscE7SpVJ"

    const/4 v0, 0x0

    aput-object v4, v6, v0

    const-string v4, "BPkE8PNmcvUgQGAm1QCgLjutlWPlJ3J2"

    const/4 v0, 0x5

    aput-object v4, v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :sswitch_3e
    add-int/lit8 v4, v5, 0x1

    const/16 v0, 0x3b

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    add-int/lit8 v4, v5, 0x1

    const/16 v0, 0x20

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v0, -0x1

    if-ne v6, v0, :cond_6d

    move v6, v4

    :goto_52
    if-eq v6, v0, :cond_75

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/G9;->A07(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    if-ne v6, v4, :cond_6a

    const/4 v5, 0x1

    const/4 v4, 0x1

    const/16 v0, 0x11

    invoke-static {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6a
    add-int/lit8 v5, v6, 0x1

    goto :goto_10

    :cond_6d
    if-ne v4, v0, :cond_70

    goto :goto_52

    :cond_70
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_52

    :cond_75
    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :sswitch_7b
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v4, v0, :cond_86

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_86
    move v9, v5

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v8, 0x0

    const/16 v6, 0x2f

    const/4 v4, 0x1

    if-ne v0, v6, :cond_c0

    const/4 v7, 0x1

    :goto_94
    add-int/lit8 v0, v9, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A01(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v0, v5, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_a3

    const/4 v8, 0x1

    :cond_a3
    if-eqz v7, :cond_a6

    const/4 v4, 0x2

    :cond_a6
    add-int/2addr v4, v9

    if-eqz v8, :cond_bd

    add-int/lit8 v0, v5, -0x2

    :goto_ab
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/G9;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/G9;->A0E(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto/16 :goto_10

    :cond_bd
    add-int/lit8 v0, v5, -0x1

    goto :goto_ab

    :cond_c0
    const/4 v7, 0x0

    goto :goto_94

    :cond_c2
    if-eqz v7, :cond_df

    :cond_c4
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_cc

    goto/16 :goto_10

    :cond_cc
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/G7;

    invoke-static {p0, v0, v2, p3, v1}, Lcom/facebook/ads/redexgen/X/G9;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G7;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/G7;->A01:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    goto/16 :goto_10

    :cond_df
    if-nez v8, :cond_10

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/G7;->A01(Ljava/lang/String;I)Lcom/facebook/ads/redexgen/X/G7;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_ee
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_f4
    :goto_f4
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_104

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/G7;

    invoke-static {p0, v0, v2, p3, v1}, Lcom/facebook/ads/redexgen/X/G9;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G7;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    goto :goto_f4

    :cond_104
    invoke-static {}, Lcom/facebook/ads/redexgen/X/G7;->A00()Lcom/facebook/ads/redexgen/X/G7;

    move-result-object v0

    invoke-static {p0, v0, v2, p3, v1}, Lcom/facebook/ads/redexgen/X/G9;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G7;Landroid/text/SpannableStringBuilder;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/G6;->A0C(Landroid/text/SpannableStringBuilder;)Lcom/facebook/ads/redexgen/X/G6;

    return-void

    nop

    :sswitch_data_110
    .sparse-switch
        0x26 -> :sswitch_3e
        0x3c -> :sswitch_7b
    .end sparse-switch
.end method

.method public static A0D(Ljava/util/List;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G7;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G4;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/G7;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G8;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_42

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/G4;

    iget-object v8, p2, Lcom/facebook/ads/redexgen/X/G7;->A01:Ljava/lang/String;

    iget-object v7, p2, Lcom/facebook/ads/redexgen/X/G7;->A03:[Ljava/lang/String;

    iget-object v3, p2, Lcom/facebook/ads/redexgen/X/G7;->A02:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_3c

    sget-object v2, Lcom/facebook/ads/redexgen/X/G9;->A02:[Ljava/lang/String;

    const-string v1, "AMyBO4NnCnMpgJ1A04yWFmVBrU3uxkkG"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4pWDMPx0mcGHcptb8cUlFxOOK6mkNbT4"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4, p1, v8, v7, v3}, Lcom/facebook/ads/redexgen/X/G4;->A09(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_39

    new-instance v0, Lcom/facebook/ads/redexgen/X/G8;

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/G8;-><init>(ILcom/facebook/ads/redexgen/X/G4;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_42
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public static A0E(Ljava/lang/String;)Z
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_76

    :cond_9
    const/4 v0, -0x1

    :goto_a
    packed-switch v0, :pswitch_data_90

    return v4

    :sswitch_e
    const/16 v2, 0xc3

    const/4 v1, 0x1

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_a

    :sswitch_1f
    const/16 v2, 0xc4

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :sswitch_30
    const/16 v2, 0xd0

    const/4 v1, 0x1

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    goto :goto_a

    :sswitch_41
    const/16 v2, 0x11e

    const/4 v1, 0x1

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x4

    goto :goto_a

    :sswitch_52
    const/16 v2, 0x11f

    const/4 v1, 0x1

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x5

    goto :goto_a

    :sswitch_63
    const/16 v2, 0xf0

    const/4 v1, 0x4

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    goto :goto_a

    :pswitch_74
    return v3

    nop

    :sswitch_data_76
    .sparse-switch
        0x62 -> :sswitch_e
        0x63 -> :sswitch_1f
        0x69 -> :sswitch_30
        0x75 -> :sswitch_41
        0x76 -> :sswitch_52
        0x3291ee -> :sswitch_63
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
    .end packed-switch
.end method

.method public static A0F(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/G6;Ljava/lang/StringBuilder;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Matcher;",
            "Lcom/facebook/ads/redexgen/X/Hh;",
            "Lcom/facebook/ads/redexgen/X/G6;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G4;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GA;->A01(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lcom/facebook/ads/redexgen/X/G6;->A0A(J)Lcom/facebook/ads/redexgen/X/G6;

    move-result-object v3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/GA;->A01(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/G6;->A09(J)Lcom/facebook/ads/redexgen/X/G6;
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1a} :catch_50

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/facebook/ads/redexgen/X/G9;->A08(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;)V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_25
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_40

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_48
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p3, p5}, Lcom/facebook/ads/redexgen/X/G9;->A0C(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/G6;Ljava/util/List;)V

    return v2

    :catch_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    const/16 v1, 0x1e

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x8d

    const/16 v1, 0xf

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G9;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method


# virtual methods
.method public final A0G(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/G6;Ljava/util/List;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Hh;",
            "Lcom/facebook/ads/redexgen/X/G6;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/G4;",
            ">;)Z"
        }
    .end annotation

    move-object v4, p0

    move-object v7, p1

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-nez v3, :cond_a

    return v2

    :cond_a
    sget-object v1, Lcom/facebook/ads/redexgen/X/G9;->A03:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    move-object v8, p2

    move-object v10, p3

    if-eqz v0, :cond_20

    const/4 v5, 0x0

    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/G9;->A00:Ljava/lang/StringBuilder;

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/G9;->A0F(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/G6;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_20
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/Hh;->A0P()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    return v2

    :cond_27
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/G9;->A00:Ljava/lang/StringBuilder;

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/G9;->A0F(Ljava/lang/String;Ljava/util/regex/Matcher;Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/G6;Ljava/lang/StringBuilder;Ljava/util/List;)Z

    move-result v0

    return v0

    :cond_3c
    return v2
.end method
