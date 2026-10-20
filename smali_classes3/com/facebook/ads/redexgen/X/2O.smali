###### Class com.facebook.ads.redexgen.X.C07162o (com.facebook.ads.redexgen.X.2o)
.class public final Lcom/facebook/ads/redexgen/X/2o;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Ljava/lang/String;

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/Hh;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "y3MdhIgBOQEfONjtg81Qtbi8GqjfngaU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ayjyD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uFpqfpJ7hSL4OommhWSR8KeefHSBvEcd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jYbvzJN34gTcdSRocF6CBPzhG3OB5Yct"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RwlI3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XQjKxHQSRLuUXJnTYFWTsxujqzA"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GTWh6mQOWxWX5OlOf9c"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GbfE4nIjdQIOu6XrpHRmDAGo7RW"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2o;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2o;->A02()V

    const/16 v2, 0x45

    const/4 v1, 0x4

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/2o;->A09:I

    const/16 v2, 0x49

    const/4 v1, 0x4

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/2o;->A0A:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const/4 v2, 0x5

    const/16 v1, 0xb

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BP;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hh;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2o;->A07(Ljava/util/List;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2o;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Hh;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2o;->A08(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v3

    if-nez v3, :cond_1c

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_8

    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lt v0, v1, :cond_41

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Hh;->A02()C

    move-result v1

    const v0, 0xfeff

    if-eq v1, v0, :cond_30

    const v0, 0xfffe

    if-ne v1, v0, :cond_41

    :cond_30
    const/16 v2, 0x10

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0T(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_41
    const/16 v2, 0x16

    const/4 v1, 0x5

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0T(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/2o;->A07:[B

    return-void

    :array_a
    .array-data 1
        -0x37t
        -0x25t
        -0x18t
        -0x21t
        -0x24t
        -0x28t
        -0x4t
        -0x49t
        -0x15t
        -0x38t
        -0x17t
        -0x19t
        -0xdt
        -0x18t
        -0x17t
        -0xat
        -0x57t
        -0x58t
        -0x66t
        -0x7ft
        -0x7bt
        -0x76t
        -0x41t
        -0x42t
        -0x50t
        -0x69t
        -0x5et
        -0x44t
        -0x2bt
        -0x34t
        -0x21t
        -0x29t
        -0x34t
        -0x36t
        -0x25t
        -0x34t
        -0x35t
        -0x79t
        -0x26t
        -0x24t
        -0x37t
        -0x25t
        -0x30t
        -0x25t
        -0x2dt
        -0x34t
        -0x79t
        -0x33t
        -0x2at
        -0x27t
        -0x2ct
        -0x38t
        -0x25t
        -0x6bt
        -0x1et
        -0x30t
        -0x23t
        -0x1et
        -0x64t
        -0x1et
        -0x2ct
        -0x1ft
        -0x28t
        -0x2bt
        -0x32t
        -0x40t
        -0x33t
        -0x3ct
        -0x3ft
        0x30t
        0x31t
        0x36t
        0x29t
        -0x21t
        -0x33t
        -0x26t
        -0x1dt
    .end array-data
.end method

.method public static A03(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 9

    if-eq p1, p2, :cond_13

    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v2, v0, 0x18

    ushr-int/lit8 v0, p1, 0x8

    or-int/2addr v2, v0

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    or-int/lit8 v0, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    return-void
.end method

.method public static A04(Landroid/text/SpannableStringBuilder;IIIII)V
    .registers 13

    if-eq p1, p2, :cond_39

    or-int/lit8 v4, p5, 0x21

    and-int/lit8 v0, p1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    :goto_b
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_51

    const/4 v2, 0x1

    :goto_10
    if-eqz v6, :cond_45

    if-eqz v2, :cond_3c

    const/4 v1, 0x3

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1d
    :goto_1d
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3a

    :goto_21
    if-eqz v5, :cond_2b

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2b
    if-nez v5, :cond_39

    if-nez v6, :cond_39

    if-nez v2, :cond_39

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_39
    return-void

    :cond_3a
    const/4 v5, 0x0

    goto :goto_21

    :cond_3c
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1d

    :cond_45
    if-eqz v2, :cond_1d

    const/4 v1, 0x2

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p3, p4, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1d

    :cond_51
    const/4 v2, 0x0

    goto :goto_10

    :cond_53
    const/4 v6, 0x0

    goto :goto_b
.end method

.method public static A05(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 8

    if-eq p1, p2, :cond_c

    new-instance v1, Landroid/text/style/TypefaceSpan;

    invoke-direct {v1, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    or-int/lit8 v0, p5, 0x21

    invoke-virtual {p0, v1, p3, p4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/Hh;Landroid/text/SpannableStringBuilder;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v2

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-lt v2, v0, :cond_35

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2o;->A08(Z)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v5

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A0E()I

    move-result v2

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/Hh;->A0Z(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v8

    iget v3, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:I

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/2o;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v9, p0, Lcom/facebook/ads/redexgen/X/2o;->A02:I

    move-object v7, v1

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/2o;->A03(Landroid/text/SpannableStringBuilder;IIIII)V

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private A07(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const v6, 0x3f59999a    # 0.85f

    const/16 v2, 0x36

    const/16 v1, 0xa

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    if-eqz p1, :cond_ce

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_ce

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x30

    if-eq v1, v0, :cond_2d

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    const/16 v0, 0x35

    if-ne v1, v0, :cond_ce

    :cond_2d
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    const/16 v0, 0x18

    aget-byte v0, v4, v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:I

    const/16 v0, 0x1a

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    const/16 v0, 0x1b

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    const/16 v0, 0x1c

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    const/16 v0, 0x1d

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/2o;->A02:I

    array-length v1, v4

    const/16 v0, 0x2b

    sub-int/2addr v1, v0

    invoke-static {v4, v0, v1}, Lcom/facebook/ads/redexgen/X/Hx;->A0R([BII)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    const/16 v8, 0x40

    const/4 v7, 0x5

    const/16 v3, 0x8

    sget-object v1, Lcom/facebook/ads/redexgen/X/2o;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_8c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8c
    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A08:[Ljava/lang/String;

    const-string v1, "N60L8QydNUmR0MfdRB9J1gzWK8S"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v8, v7, v3}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v7

    :cond_97
    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/lang/String;

    const/16 v0, 0x19

    aget-byte v0, v4, v0

    mul-int/lit8 v3, v0, 0x14

    iput v3, p0, Lcom/facebook/ads/redexgen/X/2o;->A01:I

    aget-byte v0, v4, v5

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_a8

    const/4 v5, 0x1

    :cond_a8
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/2o;->A05:Z

    if-eqz v5, :cond_cb

    const/16 v0, 0xa

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x8

    const/16 v0, 0xb

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v1, v0

    int-to-float v2, v1

    int-to-float v0, v3

    div-float/2addr v2, v0

    iput v2, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:F

    const/4 v1, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(FFF)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:F

    goto :goto_d9

    :cond_cb
    iput v6, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:F

    goto :goto_d9

    :cond_ce
    iput v5, p0, Lcom/facebook/ads/redexgen/X/2o;->A03:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2o;->A02:I

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/2o;->A05:Z

    iput v6, p0, Lcom/facebook/ads/redexgen/X/2o;->A00:F

    :goto_d9
    return-void
.end method

.method public static A08(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const/16 p0, 0x1b

    const/16 v1, 0x1b

    const/16 v0, 0x14

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A0b([BIZ)Lcom/facebook/ads/redexgen/X/FW;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/FX;
        }
    .end annotation

    move-object v1, p0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    move-object/from16 v3, p1

    move/from16 v2, p2

    invoke-virtual {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Hh;->A0b([BI)V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2o;->A01(Lcom/facebook/ads/redexgen/X/Hh;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/facebook/ads/redexgen/X/VT;->A01:Lcom/facebook/ads/redexgen/X/VT;

    return-object v0

    :cond_19
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget v8, v1, Lcom/facebook/ads/redexgen/X/2o;->A03:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/high16 v12, 0xff0000

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/2o;->A04(Landroid/text/SpannableStringBuilder;IIIII)V

    iget v8, v1, Lcom/facebook/ads/redexgen/X/2o;->A02:I

    const/4 v9, -0x1

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/2o;->A03(Landroid/text/SpannableStringBuilder;IIIII)V

    iget-object v8, v1, Lcom/facebook/ads/redexgen/X/2o;->A04:Ljava/lang/String;

    const/16 v3, 0x36

    const/16 v2, 0xa

    const/16 v0, 0x1c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/2o;->A00(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/2o;->A05(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Ljava/lang/String;III)V

    iget v9, v1, Lcom/facebook/ads/redexgen/X/2o;->A00:F

    :goto_4a
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v2

    const/16 v0, 0x8

    if-lt v2, v0, :cond_d1

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A06()I

    move-result v4

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v6

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A08()I

    move-result v5

    sget v0, Lcom/facebook/ads/redexgen/X/2o;->A09:I

    const/4 v3, 0x0

    const/4 v2, 0x2

    if-ne v5, v0, :cond_a2

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lt v0, v2, :cond_75

    const/4 v3, 0x1

    :cond_75
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2o;->A08(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/2o;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x5

    if-eq v2, v0, :cond_8a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8a
    sget-object v3, Lcom/facebook/ads/redexgen/X/2o;->A08:[Ljava/lang/String;

    const-string v2, "XgeQwtNzfjcS7NtzyEXlUfPnJ3FfDbJq"

    const/4 v0, 0x0

    aput-object v2, v3, v0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v3

    const/4 v2, 0x0

    :goto_98
    if-ge v2, v3, :cond_c9

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-direct {v1, v0, v7}, Lcom/facebook/ads/redexgen/X/2o;->A06(Lcom/facebook/ads/redexgen/X/Hh;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    :cond_a2
    sget v0, Lcom/facebook/ads/redexgen/X/2o;->A0A:I

    if-ne v5, v0, :cond_c9

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A05:Z

    if-eqz v0, :cond_c9

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A04()I

    move-result v0

    if-lt v0, v2, :cond_b3

    const/4 v3, 0x1

    :cond_b3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/2o;->A08(Z)V

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0I()I

    move-result v0

    int-to-float v3, v0

    iget v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A01:I

    int-to-float v0, v0

    div-float/2addr v3, v0

    const/4 v2, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A00(FFF)F

    move-result v9

    :cond_c9
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/2o;->A06:Lcom/facebook/ads/redexgen/X/Hh;

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Hh;->A0Y(I)V

    goto/16 :goto_4a

    :cond_d1
    nop

    new-instance v6, Lcom/facebook/ads/redexgen/X/FV;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/high16 v13, -0x80000000

    const/4 v14, 0x1

    move-object v1, v6

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/FV;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VT;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VT;-><init>(Lcom/facebook/ads/redexgen/X/FV;)V

    return-object v0
.end method
