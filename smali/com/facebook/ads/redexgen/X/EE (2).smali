###### Class com.facebook.ads.redexgen.X.EE (com.facebook.ads.redexgen.X.EE)
.class public final Lcom/facebook/ads/redexgen/X/EE;
.super Lcom/facebook/ads/redexgen/X/Yw;
.source ""


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4M;

.field public A01:Lcom/facebook/ads/redexgen/X/4M;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "C44Ajl3kvJruV1G0pt7gVRuztfjSJyFq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "J5x5lFquh7whloqA7FngbvBzLsCb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NWBvU5bW0Pue"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BTAVkHunqM91yRRN2KcoYuZCergWfboL"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "2NY5ANPTvwBPWrnTgdotgLNYCmp8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bg7eF9CjngMlwdFplTojabi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lLeEucKPPYu6Z0yxrpg2o1MG4v3W39r2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Yw;-><init>()V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/4c;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4M;)I
    .registers 7

    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p3, p2}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A1X()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v1

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4M;->A0B()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :goto_1c
    sub-int/2addr v2, v1

    return v2

    :cond_1e
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4M;->A06()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    goto :goto_1c
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4M;)Landroid/view/View;
    .registers 11

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A1X()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v6

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4M;->A0B()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    sget-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const-string v1, "QSrTWOl4jyYASaYHeqwJw7nAVlZS9nVf"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    div-int/lit8 v0, v3, 0x2

    add-int/2addr v6, v0

    goto :goto_3a

    :cond_34
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4M;->A06()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    :goto_3a
    const v4, 0x7fffffff

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v5, :cond_5b

    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    sub-int/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_58

    move v4, v0

    move-object v7, v2

    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5b
    return-object v7
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4M;)Landroid/view/View;
    .registers 10

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v6

    if-nez v6, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v1, 0x0

    const v5, 0x7fffffff

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v6, :cond_37

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_34

    move v5, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    sget-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const-string v1, "0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object v1, v3

    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_37
    return-object v1
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EE;->A00:Lcom/facebook/ads/redexgen/X/4M;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4c;

    if-eq v0, p1, :cond_e

    :cond_8
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4M;->A00(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/ZA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EE;->A00:Lcom/facebook/ads/redexgen/X/4M;

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EE;->A00:Lcom/facebook/ads/redexgen/X/4M;

    return-object v0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EE;->A01:Lcom/facebook/ads/redexgen/X/4M;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4M;->A02:Lcom/facebook/ads/redexgen/X/4c;

    if-eq v0, p1, :cond_e

    :cond_8
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/4M;->A01(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/Z9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/EE;->A01:Lcom/facebook/ads/redexgen/X/4M;

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EE;->A01:Lcom/facebook/ads/redexgen/X/4M;

    return-object v0
.end method


# virtual methods
.method public final A0C(Lcom/facebook/ads/redexgen/X/4c;II)I
    .registers 13

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A0Z()I

    move-result v8

    const/4 v4, -0x1

    if-nez v8, :cond_8

    return v4

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EE;->A04(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/EE;->A02(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4M;)Landroid/view/View;

    move-result-object v1

    :cond_17
    :goto_17
    if-nez v1, :cond_42

    return v4

    :cond_1a
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EE;->A03(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_36

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_36
    sget-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const-string v1, "gb7KateBwDTMhlVKT6fWGE4qrSBelOuo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/EE;->A02(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4M;)Landroid/view/View;

    move-result-object v1

    goto :goto_17

    :cond_42
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v3

    if-ne v3, v4, :cond_49

    return v4

    :cond_49
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_a1

    if-lez p2, :cond_9f

    const/4 v6, 0x1

    :goto_53
    const/4 v5, 0x0

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4o;

    if-eqz v0, :cond_89

    check-cast p1, Lcom/facebook/ads/redexgen/X/4o;

    add-int/lit8 v0, v8, -0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/4o;->A4L(I)Landroid/graphics/PointF;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_95

    sget-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const-string v1, "yuw4mNpzW34AqVSRehlxNeo"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wkUUhZpWZ02e"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_89

    :goto_7a
    iget v0, v4, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_87

    iget v0, v4, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_88

    :cond_87
    const/4 v7, 0x1

    :cond_88
    move v5, v7

    :cond_89
    if-eqz v5, :cond_90

    if-eqz v6, :cond_8f

    add-int/lit8 v3, v3, -0x1

    :cond_8f
    :goto_8f
    return v3

    :cond_90
    if-eqz v6, :cond_8f

    add-int/lit8 v3, v3, 0x1

    goto :goto_8f

    :cond_95
    sget-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const-string v1, "mSLQWLSJnMsLfeZB8hd0gvJZQvTgwPgU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_89

    goto :goto_7a

    :cond_9f
    const/4 v6, 0x0

    goto :goto_53

    :cond_a1
    if-lez p3, :cond_a5

    const/4 v6, 0x1

    goto :goto_53

    :cond_a5
    const/4 v6, 0x0

    goto :goto_53
.end method

.method public final A0D(Lcom/facebook/ads/redexgen/X/4c;)Landroid/view/View;
    .registers 3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EE;->A04(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/EE;->A01(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4M;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EE;->A03(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/EE;->A01(Lcom/facebook/ads/redexgen/X/4c;Lcom/facebook/ads/redexgen/X/4M;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0E(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/ZB;
    .registers 4

    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4o;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yw;->A00:Lcom/facebook/ads/redexgen/X/ED;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ED;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/EF;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/EF;-><init>(Lcom/facebook/ads/redexgen/X/EE;Landroid/content/Context;)V

    return-object v0
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/4c;Landroid/view/View;)[I
    .registers 10

    const/4 v0, 0x2

    new-array v3, v0, [I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A24()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_31

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EE;->A03(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/EE;->A00(Lcom/facebook/ads/redexgen/X/4c;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4M;)I

    move-result v0

    aput v0, v3, v6

    :goto_14
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4c;->A25()Z

    move-result v5

    const/4 v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_31
    aput v6, v3, v6

    goto :goto_14

    :cond_34
    sget-object v2, Lcom/facebook/ads/redexgen/X/EE;->A02:[Ljava/lang/String;

    const-string v1, "E62MX6H1I4NpqQbgkpQnwXfK7jhgOp7C"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v5, :cond_48

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EE;->A04(Lcom/facebook/ads/redexgen/X/4c;)Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/EE;->A00(Lcom/facebook/ads/redexgen/X/4c;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4M;)I

    move-result v0

    aput v0, v3, v4

    :goto_47
    return-object v3

    :cond_48
    aput v6, v3, v4

    goto :goto_47
.end method
