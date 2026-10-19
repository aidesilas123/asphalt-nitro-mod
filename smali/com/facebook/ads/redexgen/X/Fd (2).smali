###### Class com.facebook.ads.redexgen.X.C1008Fd (com.facebook.ads.redexgen.X.Fd)
.class public final Lcom/facebook/ads/redexgen/X/Fd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/39;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation


# static fields
.field public static A0M:[B

.field public static A0N:[Ljava/lang/String;

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I

.field public static final A0R:[I

.field public static final A0S:[I

.field public static final A0T:[I

.field public static final A0U:[I

.field public static final A0V:[I

.field public static final A0W:[I

.field public static final A0X:[I

.field public static final A0Y:[Z


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

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

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public final A0K:Landroid/text/SpannableStringBuilder;

.field public final A0L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bEAjJCvVtkePzUcw9rvynCWhWZ7YtTC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sFv5If9m5Sphdt63zNjPhUbGsirLMRkb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "dm26J1OSzusJji0dpgrnr09k5LC689lq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Nx5OZNPL7zWyatFSZAWV1dERcLRuFkfb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8nXEVS4hfg5ng3YQnnC7NT8u0hAmIJYk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "i1gAYPXKkwHe1sE5BOr5igG8IxAvgiYs"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Y1prefJax7dGS9GUqUH50jWlMMgJtsPr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K9Y4TfEKpnP3QqzXtNTgN9rOyJLVMPLw"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Fd;->A04()V

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-static {v8, v8, v8, v7}, Lcom/facebook/ads/redexgen/X/Fd;->A01(IIII)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Fd;->A0P:I

    invoke-static {v7, v7, v7, v7}, Lcom/facebook/ads/redexgen/X/Fd;->A01(IIII)I

    move-result v10

    sput v10, Lcom/facebook/ads/redexgen/X/Fd;->A0O:I

    const/4 v6, 0x3

    invoke-static {v7, v7, v7, v6}, Lcom/facebook/ads/redexgen/X/Fd;->A01(IIII)I

    move-result v9

    sput v9, Lcom/facebook/ads/redexgen/X/Fd;->A0Q:I

    const/4 v5, 0x7

    new-array v0, v5, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0V:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0W:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_be

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0X:[I

    new-array v0, v5, [Z

    fill-array-data v0, :array_d0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0Y:[Z

    new-array v0, v5, [I

    aput v10, v0, v7

    const/4 v4, 0x1

    aput v9, v0, v4

    aput v10, v0, v8

    aput v10, v0, v6

    const/4 v3, 0x4

    aput v9, v0, v3

    const/4 v2, 0x5

    aput v10, v0, v2

    const/4 v1, 0x6

    aput v10, v0, v1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0U:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_d8

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0T:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_ea

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0S:[I

    new-array v0, v5, [I

    aput v10, v0, v7

    aput v10, v0, v4

    aput v10, v0, v8

    aput v10, v0, v6

    aput v10, v0, v3

    aput v9, v0, v2

    aput v9, v0, v1

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0R:[I

    return-void

    :array_9a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_be
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_d0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_d8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_ea
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fd;->A08()V

    return-void
.end method

.method public static A00(III)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Fd;->A01(IIII)I

    move-result v0

    return v0
.end method

.method public static A01(IIII)I
    .registers 9

    const/4 v4, 0x0

    const/4 v0, 0x4

    invoke-static {p0, v4, v0}, Lcom/facebook/ads/redexgen/X/HI;->A00(III)I

    invoke-static {p1, v4, v0}, Lcom/facebook/ads/redexgen/X/HI;->A00(III)I

    invoke-static {p2, v4, v0}, Lcom/facebook/ads/redexgen/X/HI;->A00(III)I

    invoke-static {p3, v4, v0}, Lcom/facebook/ads/redexgen/X/HI;->A00(III)I

    packed-switch p3, :pswitch_data_32

    const/16 v3, 0xff

    :goto_13
    const/4 v2, 0x1

    if-le p0, v2, :cond_27

    const/16 v1, 0xff

    :goto_18
    if-le p1, v2, :cond_25

    const/16 v0, 0xff

    :goto_1c
    if-le p2, v2, :cond_20

    const/16 v4, 0xff

    :cond_20
    invoke-static {v3, v1, v0, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_1c

    :cond_27
    const/4 v1, 0x0

    goto :goto_18

    :pswitch_29
    const/16 v3, 0xff

    goto :goto_13

    :pswitch_2c
    const/16 v3, 0x7f

    goto :goto_13

    :pswitch_2f
    const/4 v3, 0x0

    goto :goto_13

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
    .end packed-switch
.end method

.method private final A02()Landroid/text/SpannableString;
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_67

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    const/16 v3, 0x21

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1f

    const/4 v0, 0x2

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    if-eq v0, v6, :cond_2d

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2d
    iget v7, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_42

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_42
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const-string v1, "UcnYu1PwHAGC3vbuX83YmC5zO9IPxpwr"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_57

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A03:I

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_57
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    if-eq v0, v6, :cond_67

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:I

    new-instance v1, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_67
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0M:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Fd;->A0M:[B

    return-void

    :array_a
    .array-data 1
        0x51t
        0x6at
        0x61t
        0x7ct
        0x74t
        0x61t
        0x67t
        0x70t
        0x61t
        0x60t
        0x24t
        0x6et
        0x71t
        0x77t
        0x70t
        0x6dt
        0x62t
        0x6dt
        0x67t
        0x65t
        0x70t
        0x6dt
        0x6bt
        0x6at
        0x24t
        0x72t
        0x65t
        0x68t
        0x71t
        0x61t
        0x3et
        0x24t
    .end array-data
.end method


# virtual methods
.method public final A05()Lcom/facebook/ads/redexgen/X/Va;
    .registers 16

    move-object v1, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fd;->A0H()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const-string v1, "XXMrNDw86HMhGPknailYt8C4YmEezPlD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_25
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_2b
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_46

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_46
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fd;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A07:I

    packed-switch v0, :pswitch_data_f0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v2, 0x20

    const/16 v0, 0x59

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Fd;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A07:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_74
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_9a

    :pswitch_77
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x57

    if-eq v2, v0, :cond_90

    sget-object v3, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const-string v2, "GUzkX8UKOS2SBWNLmpbuPvYZfRUrk3bC"

    const/4 v0, 0x1

    aput-object v2, v3, v0

    goto :goto_9a

    :cond_90
    sget-object v3, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const-string v2, "qTQORRfF62rpJvlAVACWybIcEIDyrroZ"

    const/4 v0, 0x1

    aput-object v2, v3, v0

    goto :goto_9a

    :pswitch_98
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_9a
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A0H:Z

    if-eqz v0, :cond_e2

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    int-to-float v9, v0

    const/high16 v3, 0x42c60000    # 99.0f

    div-float/2addr v9, v3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A0D:I

    int-to-float v2, v0

    div-float/2addr v2, v3

    :goto_a8
    const v6, 0x3f666666    # 0.9f

    mul-float/2addr v9, v6

    const v0, 0x3d4ccccd    # 0.05f

    add-float/2addr v9, v0

    mul-float/2addr v6, v2

    add-float/2addr v6, v0

    iget v3, v1, Lcom/facebook/ads/redexgen/X/Fd;->A00:I

    rem-int/lit8 v0, v3, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_da

    const/4 v8, 0x0

    :goto_ba
    div-int/lit8 v0, v3, 0x3

    if-nez v0, :cond_d2

    const/4 v10, 0x0

    :goto_bf
    iget v13, v1, Lcom/facebook/ads/redexgen/X/Fd;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/Fd;->A0O:I

    if-eq v13, v0, :cond_d0

    const/4 v12, 0x1

    :goto_c6
    new-instance v3, Lcom/facebook/ads/redexgen/X/Va;

    const/4 v7, 0x0

    const/4 v11, 0x1

    iget v14, v1, Lcom/facebook/ads/redexgen/X/Fd;->A09:I

    invoke-direct/range {v3 .. v14}, Lcom/facebook/ads/redexgen/X/Va;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v3

    :cond_d0
    const/4 v12, 0x0

    goto :goto_c6

    :cond_d2
    div-int/lit8 v0, v3, 0x3

    if-ne v0, v2, :cond_d8

    const/4 v10, 0x1

    goto :goto_bf

    :cond_d8
    const/4 v10, 0x2

    goto :goto_bf

    :cond_da
    rem-int/lit8 v0, v3, 0x3

    if-ne v0, v2, :cond_e0

    const/4 v8, 0x1

    goto :goto_ba

    :cond_e0
    const/4 v8, 0x2

    goto :goto_ba

    :cond_e2
    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    int-to-float v9, v0

    const/high16 v0, 0x43510000    # 209.0f

    div-float/2addr v9, v0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/Fd;->A0D:I

    int-to-float v2, v0

    const/high16 v0, 0x42940000    # 74.0f

    div-float/2addr v2, v0

    goto :goto_a8

    nop

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_74
        :pswitch_77
        :pswitch_98
        :pswitch_74
    .end packed-switch
.end method

.method public final A06()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_f
    return-void
.end method

.method public final A07()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0A:I

    return-void
.end method

.method public final A08()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fd;->A07()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0G:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0J:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A09:I

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0H:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0D:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A00:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0B:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0I:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A07:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0F:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/Fd;->A0O:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/Fd;->A0P:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A03:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:I

    return-void
.end method

.method public final A09(C)V
    .registers 8

    const/16 v0, 0xa

    if-ne p1, v0, :cond_66

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Fd;->A02()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1a

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    :cond_1a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    if-eq v0, v1, :cond_20

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    :cond_20
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    if-eq v0, v1, :cond_26

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    :cond_26
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    if-eq v0, v1, :cond_2c

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    :cond_2c
    :goto_2c
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0I:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0B:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_4d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4d
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const-string v1, "z94yFfaTy8Odmt8n2fLZMjDbCxUThPz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_60

    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v0, 0xf

    if-lt v1, v0, :cond_6b

    :cond_60
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2c

    :cond_66
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_6b
    return-void
.end method

.method public final A0A(II)V
    .registers 4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0A:I

    if-eq v0, p1, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Fd;->A09(C)V

    :cond_9
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0A:I

    return-void
.end method

.method public final A0B(III)V
    .registers 10

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    const/16 v4, 0x21

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A03:I

    if-eq v0, p1, :cond_1f

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A03:I

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    sget v0, Lcom/facebook/ads/redexgen/X/Fd;->A0P:I

    if-eq p1, v0, :cond_2d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A04:I

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A03:I

    :cond_2d
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    if-eq v0, v5, :cond_49

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:I

    if-eq v0, p2, :cond_49

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:I

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_49
    sget v0, Lcom/facebook/ads/redexgen/X/Fd;->A0O:I

    if-eq p2, v0, :cond_57

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A02:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Fd;->A01:I

    :cond_57
    return-void
.end method

.method public final A0C(IIIZZII)V
    .registers 14

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    const/16 v5, 0x21

    const/4 v4, -0x1

    if-eq v0, v4, :cond_35

    if-nez p4, :cond_1e

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    const/4 v0, 0x2

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    :cond_1e
    :goto_1e
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_40

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    if-eqz p4, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A06:I

    goto :goto_1e

    :cond_40
    sget-object v2, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const-string v1, "GaQXCBjIxpWixMOvnA1JS7CVs7IBjZSt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v3, v4, :cond_60

    if-nez p5, :cond_5f

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v3, v2, v1, v0, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput v4, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    if-eqz p5, :cond_5f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0C:I

    goto :goto_5f
.end method

.method public final A0D(IIZIIII)V
    .registers 8

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0E:I

    iput p7, p0, Lcom/facebook/ads/redexgen/X/Fd;->A07:I

    return-void
.end method

.method public final A0E(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0J:Z

    return-void
.end method

.method public final A0F(ZZZIZIIIIIII)V
    .registers 24

    move-object v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0G:Z

    iput-boolean p1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0J:Z

    iput-boolean p2, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0I:Z

    iput p4, v0, Lcom/facebook/ads/redexgen/X/Fd;->A09:I

    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0H:Z

    move/from16 v1, p6

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0D:I

    move/from16 v1, p7

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A05:I

    move/from16 v1, p10

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A00:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0B:I

    add-int/lit8 v1, p8, 0x1

    if-eq v2, v1, :cond_5d

    add-int/lit8 v4, p8, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v2, v1

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x73

    if-eq v2, v1, :cond_57

    sget-object v3, Lcom/facebook/ads/redexgen/X/Fd;->A0N:[Ljava/lang/String;

    const-string v2, "GL1AptVbsbHBPnQiC9PDsuTMTdKpKMZ4"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    iput v4, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0B:I

    :goto_3a
    if-eqz p2, :cond_46

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0B:I

    if-ge v2, v1, :cond_50

    :cond_46
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v1, 0xf

    if-lt v2, v1, :cond_5d

    :cond_50
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3a

    :cond_57
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5d
    move/from16 v2, p11

    if-eqz v2, :cond_84

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0F:I

    if-eq v1, v2, :cond_84

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Fd;->A0F:I

    add-int/lit8 v2, v2, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0U:[I

    aget v3, v1, v2

    sget v4, Lcom/facebook/ads/redexgen/X/Fd;->A0Q:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0Y:[Z

    aget-boolean v5, v1, v2

    const/4 v6, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0W:[I

    aget v7, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0X:[I

    aget v8, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0V:[I

    aget v9, v1, v2

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/Fd;->A0D(IIZIIII)V

    :cond_84
    move/from16 v2, p12

    if-eqz v2, :cond_ac

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Fd;->A08:I

    if-eq v1, v2, :cond_ac

    iput v2, v0, Lcom/facebook/ads/redexgen/X/Fd;->A08:I

    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0S:[I

    aget v9, v1, v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0T:[I

    aget v10, v1, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Fd;->A0C(IIIZZII)V

    sget v3, Lcom/facebook/ads/redexgen/X/Fd;->A0P:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/Fd;->A0R:[I

    aget v2, v1, v2

    sget v1, Lcom/facebook/ads/redexgen/X/Fd;->A0O:I

    invoke-virtual {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Fd;->A0B(III)V

    :cond_ac
    return-void
.end method

.method public final A0G()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0G:Z

    return v0
.end method

.method public final A0H()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Fd;->A0G()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0K:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final A0I()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Fd;->A0J:Z

    return v0
.end method
