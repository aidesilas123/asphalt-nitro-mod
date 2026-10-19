###### Class com.facebook.ads.redexgen.X.ZC (com.facebook.ads.redexgen.X.ZC)
.class public Lcom/facebook/ads/redexgen/X/ZC;
.super Lcom/facebook/ads/redexgen/X/4c;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4G;,
        Lcom/facebook/ads/redexgen/X/4F;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/facebook/ads/redexgen/X/4H;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

.field public A04:Lcom/facebook/ads/redexgen/X/4M;

.field public A05:Z

.field public A06:I

.field public A07:Lcom/facebook/ads/redexgen/X/4H;

.field public A08:Z

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public final A0D:Lcom/facebook/ads/redexgen/X/4F;

.field public final A0E:Lcom/facebook/ads/redexgen/X/4G;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "VKH6HNPW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5SG7ZkmA1SrYT5HpW6e3lHPIEdQjCnoY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GUFAcNFlkHbDslOxTlAKu2zM5da70L8W"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8EarDdUd0wjX"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ogiAdIZLqFL2ODTGKcli7xbzAuQZVFku"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "k0c9canuweazyFazM74f3pFcokchiBr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yJQv9VjGutzUoxdr6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vBYUiSK7FkagYmvZS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ZC;->A0V()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0C:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4F;-><init>(Lcom/facebook/ads/redexgen/X/ZC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4G;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4G;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0E:Lcom/facebook/ads/redexgen/X/4G;

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A06:I

    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A2E(I)V

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A0h(Z)V

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A1V(Z)V

    return-void
.end method

.method private final A04(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_a

    :cond_9
    return v4

    :cond_a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A0B:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    if-lez p1, :cond_2a

    const/4 v3, 0x1

    :goto_15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {p0, v3, v2, v0, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A0Y(IIZLcom/facebook/ads/redexgen/X/4r;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p2, v0, p3, v4}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    move-result v0

    add-int/2addr v1, v0

    if-gez v1, :cond_2c

    return v4

    :cond_2a
    const/4 v3, -0x1

    goto :goto_15

    :cond_2c
    if-le v2, v1, :cond_3a

    mul-int/2addr v3, v1

    :goto_2f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    neg-int v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0J(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/4H;->A04:I

    return v3

    :cond_3a
    move v3, p1

    goto :goto_2f
.end method

.method private A05(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Z)I
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_3c

    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A04(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    neg-int v4, v0

    add-int/2addr p1, v4

    if-eqz p4, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "DiKLRwr5Jced9h1IWYQQBSe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sub-int/2addr v3, p1

    if-lez v3, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0J(I)V

    add-int/2addr v3, v4

    return v3

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    return v4

    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method private A06(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Z)I
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_24

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A04(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    neg-int v2, v0

    add-int/2addr p1, v2

    if-eqz p4, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    sub-int/2addr p1, v0

    if-lez p1, :cond_23

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    neg-int v0, p1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0J(I)V

    sub-int/2addr v2, p1

    return v2

    :cond_23
    return v2

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method private final A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I
    .registers 14

    iget v7, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    const/high16 v6, -0x80000000

    if-eq v0, v6, :cond_16

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    if-gez v0, :cond_13

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0e(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;)V

    :cond_16
    iget v5, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    add-int/2addr v5, v0

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0E:Lcom/facebook/ads/redexgen/X/4G;

    :cond_1d
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A09:Z

    if-nez v0, :cond_23

    if-lez v5, :cond_33

    :cond_23
    invoke-virtual {p2, p3}, Lcom/facebook/ads/redexgen/X/4H;->A05(Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4G;->A00()V

    invoke-virtual {p0, p1, p3, p2, v4}, Lcom/facebook/ads/redexgen/X/ZC;->A2H(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4G;)V

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A01:Z

    if-eqz v0, :cond_37

    :cond_33
    :goto_33
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    sub-int/2addr v7, v0

    return v7

    :cond_37
    iget v2, p2, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v1, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    mul-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, p2, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A03:Z

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    if-nez v0, :cond_51

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-nez v0, :cond_5b

    :cond_51
    iget v1, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    sub-int/2addr v5, v0

    :cond_5b
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    if-eq v0, v6, :cond_87

    iget v1, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    if-gez v0, :cond_84

    iget v8, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    iget v3, p2, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "4Yaap7YPoeEmBfNVznjneaOXF1T3Chf"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/2addr v8, v3

    iput v8, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    :cond_84
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0e(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;)V

    :cond_87
    if-eqz p4, :cond_1d

    iget-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4G;->A02:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_a1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "BoRZmQ3r1kYFEVrzuprqJgVQBsgHE2ov"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1d

    goto :goto_33

    :cond_a1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-nez v0, :cond_22

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "JS1EmTokFkofHdCiZDqGUekHou375gK"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_22
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4v;->A00(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4M;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4c;Z)I

    move-result v0

    return v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    iget-boolean v7, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/4v;->A02(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4M;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4c;ZZ)I

    move-result v0

    return v0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-nez v0, :cond_2d

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_27

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "SnDsIEYZVkVP365fclIsQ2wSHS1GnuqA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cd1sjhoNq3y2dBxKlbos6To2J3BafTHs"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A0R(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A0Q(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v6, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0B:Z

    move-object v5, p0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/4v;->A01(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4M;Landroid/view/View;Landroid/view/View;Lcom/facebook/ads/redexgen/X/4c;Z)I

    move-result v0

    return v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A06()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0B()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private A0D()Landroid/view/View;
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0E()Landroid/view/View;
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0H(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0F()Landroid/view/View;
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5
.end method

.method private A0G()Landroid/view/View;
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private final A0H(II)Landroid/view/View;
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    if-le p2, p1, :cond_24

    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_32

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_24
    if-ge p2, p1, :cond_28

    const/4 v0, -0x1

    goto :goto_6

    :cond_28
    const/4 v0, 0x0

    goto :goto_6

    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "tEP4S10y6AtQbDA9ff3H424KLTnX0k7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3

    :cond_32
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_5a

    const/16 v2, 0x4104

    const/16 v1, 0x4004

    :goto_48
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A04:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4z;->A00(IIII)Landroid/view/View;

    move-result-object v0

    :goto_52
    return-object v0

    :cond_53
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A05:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/facebook/ads/redexgen/X/4z;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_52

    :cond_5a
    const/16 v2, 0x1041

    const/16 v1, 0x1001

    goto :goto_48
.end method

.method private final A0J(IIZZ)Landroid/view/View;
    .registers 11

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    const/4 v3, 0x0

    if-eqz p3, :cond_23

    const/16 v4, 0x6003

    :goto_8
    if-eqz p4, :cond_c

    const/16 v3, 0x140

    :cond_c
    iget v5, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    const/16 v4, 0x140

    goto :goto_8

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "NnwW0AnvRBQDKBAe7Vp9NN4SqY6y39Zg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "snWQRfIRwdJNOSPMdDWVpUmegwlUrdsl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A04:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4z;->A00(IIII)Landroid/view/View;

    move-result-object v0

    :goto_3a
    return-object v0

    :cond_3b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4c;->A05:Lcom/facebook/ads/redexgen/X/4z;

    invoke-virtual {v0, p1, p2, v4, v3}, Lcom/facebook/ads/redexgen/X/4z;->A00(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_3a
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 9

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v4

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/ZC;->A2C(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    move-object v2, p2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/ZC;->A2C(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0D()Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0E()Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0E()Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0D()Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0K(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0L(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0L(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0K(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method private A0Q(ZZ)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private A0R(ZZ)Landroid/view/View;
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v0, -0x1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final A0S()Lcom/facebook/ads/redexgen/X/4H;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4H;-><init>()V

    return-object v0
.end method

.method public static A0T(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x76

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0U()V
    .registers 5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2J()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_b
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    :goto_f
    return-void

    :cond_10
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0A:Z

    xor-int/2addr v3, v1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_35

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "rvopS3hSB7itRsuyG"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "9RTUShXs4ZXrU4n03"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    goto :goto_f

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0V()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/ZC;->A0F:[B

    return-void

    :array_a
    .array-data 1
        0x1et
        0x19t
        0x1t
        0x16t
        0x1bt
        0x1et
        0x13t
        0x57t
        0x18t
        0x5t
        0x1et
        0x12t
        0x19t
        0x3t
        0x16t
        0x3t
        0x1et
        0x18t
        0x19t
        0x4dt
    .end array-data
.end method

.method private A0W(II)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    const/4 v0, -0x1

    :goto_13
    iput v0, v2, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    return-void

    :cond_28
    const/4 v0, 0x1

    goto :goto_13
.end method

.method private A0X(II)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    sub-int v0, p2, v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_29

    const/4 v0, 0x1

    :goto_18
    iput v0, v2, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    const/high16 v0, -0x80000000

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    return-void

    :cond_29
    const/4 v0, -0x1

    goto :goto_18
.end method

.method private A0Y(IIZLcom/facebook/ads/redexgen/X/4r;)V
    .registers 10

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A09:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p4}, Lcom/facebook/ads/redexgen/X/ZC;->A0C(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    const/4 v4, -0x1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7c

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0F()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_7a

    :goto_2f
    iput v4, v1, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    sub-int/2addr v2, v0

    :goto_55
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput p2, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    if-eqz p3, :cond_62

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    :cond_62
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v2, v0, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_bc

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "rmKnvh8FAT7bzRdUkYGsCRYa1fX1DRoz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_7a
    const/4 v4, 0x1

    goto :goto_2f

    :cond_7c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0G()Landroid/view/View;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, v2, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_94

    const/4 v4, 0x1

    :cond_94
    iput v4, v1, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    add-int/2addr v1, v0

    iput v1, v2, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    neg-int v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_55

    :cond_bc
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/4F;)V
    .registers 4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0W(II)V

    return-void
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/4F;)V
    .registers 4

    iget v1, p1, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0X(II)V

    return-void
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/4k;I)V
    .registers 8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v4

    if-gez p2, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A06()I

    move-result v3

    sub-int/2addr v3, p2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_31

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v4, :cond_52

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_2e

    :cond_29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/ZC;->A0d(Lcom/facebook/ads/redexgen/X/4k;II)V

    return-void

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_31
    add-int/lit8 v2, v4, -0x1

    :goto_33
    if-ltz v2, :cond_52

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    if-lt v0, v3, :cond_49

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0H(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_4f

    :cond_49
    add-int/lit8 v0, v4, -0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/ads/redexgen/X/ZC;->A0d(Lcom/facebook/ads/redexgen/X/4k;II)V

    return-void

    :cond_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    :cond_52
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/4k;I)V
    .registers 10

    if-gez p2, :cond_3

    return-void

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "66"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_66

    add-int/lit8 v3, v5, -0x1

    :goto_27
    if-ltz v3, :cond_9f

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_4f

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_55

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/4M;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_63

    :cond_4f
    :goto_4f
    add-int/lit8 v0, v5, -0x1

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A0d(Lcom/facebook/ads/redexgen/X/4k;II)V

    return-void

    :cond_55
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "uDZbJl3GZvnd0"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v6}, Lcom/facebook/ads/redexgen/X/4M;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_63

    goto :goto_4f

    :cond_63
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    :cond_66
    const/4 v4, 0x0

    :goto_67
    if-ge v4, v5, :cond_9f

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_99

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "ET87P0AumYMcjI6vylu4qFXoEmTHeXod"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-gt v3, p2, :cond_91

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/4M;->A0G(Landroid/view/View;)I

    move-result v0

    if-le v0, p2, :cond_96

    :cond_91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v4}, Lcom/facebook/ads/redexgen/X/ZC;->A0d(Lcom/facebook/ads/redexgen/X/4k;II)V

    return-void

    :cond_96
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :cond_99
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9f
    return-void

    :cond_a0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0d(Lcom/facebook/ads/redexgen/X/4k;II)V
    .registers 5

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    if-le p3, p2, :cond_f

    add-int/lit8 v0, p3, -0x1

    :goto_7
    if-lt v0, p2, :cond_17

    invoke-virtual {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A14(ILcom/facebook/ads/redexgen/X/4k;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_f
    :goto_f
    if-le p2, p3, :cond_17

    invoke-virtual {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/4c;->A14(ILcom/facebook/ads/redexgen/X/4k;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    :cond_17
    return-void
.end method

.method private A0e(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;)V
    .registers 7

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A0B:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A09:Z

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget v3, p2, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_23

    :goto_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "M7iaeQoExhHh03f7x1XNzmreS2Lq1zJK"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3weclwG7n9RXAySrMV3Jn51LrKgutG4n"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-ne v3, v0, :cond_4f

    iget v3, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_44

    goto :goto_1d

    :cond_44
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "CiNTyTfZO3PW6tP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, p1, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A0b(Lcom/facebook/ads/redexgen/X/4k;I)V

    goto :goto_54

    :cond_4f
    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0c(Lcom/facebook/ads/redexgen/X/4k;I)V

    :goto_54
    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;II)V
    .registers 18

    move-object v2, p0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A08()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A26()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    return-void

    :cond_1a
    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4k;->A0J()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v7

    const/4 v6, 0x0

    :goto_2e
    if-ge v6, v9, :cond_65

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0c()Z

    move-result v0

    if-eqz v0, :cond_3f

    :goto_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_3f
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4u;->A0I()I

    move-result v0

    const/4 v12, 0x1

    if-ge v0, v7, :cond_59

    const/4 v10, 0x1

    :goto_47
    iget-boolean v4, v2, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    const/4 v0, -0x1

    if-eq v10, v4, :cond_4d

    const/4 v12, -0x1

    :cond_4d
    if-ne v12, v0, :cond_5b

    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_3c

    :cond_59
    const/4 v10, 0x0

    goto :goto_47

    :cond_5b
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    iget-object v0, v11, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_3c

    :cond_65
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput-object v8, v0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    if-lez v5, :cond_8a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0G()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    move/from16 v4, p3

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/ZC;->A0X(II)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v5, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4H;->A04()V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    :cond_8a
    if-lez v3, :cond_ab

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0F()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    move/from16 v4, p4

    invoke-direct {v2, v0, v4}, Lcom/facebook/ads/redexgen/X/ZC;->A0W(II)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4H;->A04()V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {v2, p1, v0, p2, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    :cond_ab
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    return-void
.end method

.method private A0g(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;)V
    .registers 8

    invoke-direct {p0, p2, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A0k(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A0j(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3a

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "XDJ2jDWhUW9a7iN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_28

    return-void

    :cond_28
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/4F;->A02()V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0C:Z

    if-eqz v0, :cond_38

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_35
    iput v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    return-void

    :cond_38
    const/4 v0, 0x0

    goto :goto_35

    :cond_3a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private final A0h(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A22(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0A:Z

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0A:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0y()V

    return-void
.end method

.method private final A0i()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A09()I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A06()I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private A0j(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;)Z
    .registers 9

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_8

    return v4

    :cond_8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0s()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    invoke-virtual {p3, v1, p2}, Lcom/facebook/ads/redexgen/X/4F;->A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4r;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/4F;->A05(Landroid/view/View;)V

    return v3

    :cond_19
    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0C:Z

    if-eq v1, v0, :cond_20

    return v4

    :cond_20
    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_6c

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0O(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v2

    :goto_28
    if-eqz v2, :cond_71

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/4F;->A04(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A26()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    if-ge v1, v0, :cond_55

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    if-ge v1, v0, :cond_56

    :cond_55
    const/4 v4, 0x1

    :cond_56
    if-eqz v4, :cond_64

    iget-boolean v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    :goto_62
    iput v0, p3, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    :cond_64
    return v3

    :cond_65
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    goto :goto_62

    :cond_6c
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0P(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v2

    goto :goto_28

    :cond_71
    return v4
.end method

.method private A0k(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;)Z
    .registers 10

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_c

    iget v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    const/4 v2, -0x1

    if-ne v3, v2, :cond_d

    :cond_c
    return v6

    :cond_d
    const/high16 v1, -0x80000000

    if-ltz v3, :cond_17

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    if-lt v3, v0, :cond_1c

    :cond_17
    iput v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    return v6

    :cond_1c
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    iput v0, p2, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v3, 0x1

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    :goto_42
    return v3

    :cond_43
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    goto :goto_42

    :cond_51
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    if-ne v0, v1, :cond_11f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A1q(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0B()I

    move-result v0

    if-le v1, v0, :cond_6f

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4F;->A02()V

    return v3

    :cond_6f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_89

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    return v3

    :cond_89
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_e4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    iput v0, p2, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    iput-boolean v3, p2, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    return v3

    :cond_a3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-lez v0, :cond_e0

    invoke-virtual {p0, v6}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    if-ge v0, v1, :cond_cd

    const/4 v5, 0x1

    :goto_b6
    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_cf

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_cd
    const/4 v5, 0x0

    goto :goto_b6

    :cond_cf
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "1tNDA9T9nSDYektAgKE77gOe81bMFJSk"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "TZYqXNdWGZVKxzfIQyf7YZEk7yb7IRTm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ne v5, v4, :cond_de

    const/4 v6, 0x1

    :cond_de
    iput-boolean v6, p2, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    :cond_e0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4F;->A02()V

    goto :goto_111

    :cond_e4
    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_119

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "ZbIhQvVoqDIGDPkO0OlvW9zioDplzu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4M;->A05()I

    move-result v0

    add-int/2addr v4, v0

    :goto_10f
    iput v4, p2, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    :goto_111
    return v3

    :cond_112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v4

    goto :goto_10f

    :cond_119
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11f
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    :goto_132
    return v3

    :cond_133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    goto :goto_132
.end method


# virtual methods
.method public A1h(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 6

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_7

    const/4 v0, 0x0

    return v0

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A04(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    return v0
.end method

.method public A1i(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A04(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "CDnF1shpb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3
.end method

.method public final A1j(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZC;->A09(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    return v0
.end method

.method public final A1k(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZC;->A0A(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    return v0
.end method

.method public final A1l(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZC;->A0B(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    return v0
.end method

.method public final A1m(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZC;->A09(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    return v0
.end method

.method public final A1n(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZC;->A0A(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    return v0
.end method

.method public final A1o(Lcom/facebook/ads/redexgen/X/4r;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZC;->A0B(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v0

    return v0
.end method

.method public final A1p()Landroid/os/Parcelable;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    new-instance v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v1, v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;)V

    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v1}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    :cond_11
    new-instance v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-lez v0, :cond_61

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    if-eqz v1, :cond_47

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0F()Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    :goto_41
    new-instance v0, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-direct {v0, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;-><init>(Landroid/os/Parcelable;)V

    return-object v0

    :cond_47
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0G()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v3, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00:I

    goto :goto_41

    :cond_61
    invoke-virtual {v3}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    goto :goto_41
.end method

.method public final A1q(I)Landroid/view/View;
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    sub-int v0, p1, v0

    if-ltz v0, :cond_22

    if-ge v0, v1, :cond_22

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_22

    return-object v1

    :cond_22
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A1q(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public A1r(Landroid/view/View;ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;
    .registers 12

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0U()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_b

    return-object v6

    :cond_b
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A2B(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_14

    return-object v6

    :cond_14
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0B()I

    move-result v0

    int-to-float v1, v0

    const v0, 0x3eaaaaab

    mul-float/2addr v1, v0

    float-to-int v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1, p4}, Lcom/facebook/ads/redexgen/X/ZC;->A0Y(IIZLcom/facebook/ads/redexgen/X/4r;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v3, v0, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A0B:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    const/4 v0, 0x1

    invoke-direct {p0, p3, v1, p4, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    const/4 v0, -0x1

    if-ne v2, v0, :cond_6b

    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/ZC;->A0N(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v5

    :goto_3f
    if-ne v2, v0, :cond_66

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0G()Landroid/view/View;

    move-result-object v4

    :goto_45
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_72

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "JGtMOr7ZHjmwUVfbInfaZmEhr0nxGN38"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "jCrgpf8bwQbyd1C9u6FfAt5OnK6gBhSa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_71

    if-nez v5, :cond_70

    return-object v6

    :cond_66
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0F()Landroid/view/View;

    move-result-object v4

    goto :goto_45

    :cond_6b
    invoke-direct {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/ZC;->A0M(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)Landroid/view/View;

    move-result-object v5

    goto :goto_3f

    :cond_70
    return-object v4

    :cond_71
    return-object v5

    :cond_72
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1s()Lcom/facebook/ads/redexgen/X/4d;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4d;-><init>(II)V

    return-object v0
.end method

.method public A1t(I)V
    .registers 3

    iput p1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    :cond_d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0y()V

    return-void
.end method

.method public final A1u(IILcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4a;)V
    .registers 8

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-nez v0, :cond_d

    :goto_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_f

    :cond_c
    return-void

    :cond_d
    move p1, p2

    goto :goto_4

    :cond_f
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    const/4 v2, 0x1

    if-lez p1, :cond_23

    const/4 v1, 0x1

    :goto_16
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-direct {p0, v1, v0, v2, p3}, Lcom/facebook/ads/redexgen/X/ZC;->A0Y(IIZLcom/facebook/ads/redexgen/X/4r;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/redexgen/X/ZC;->A2I(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4a;)V

    return-void

    :cond_23
    const/4 v1, -0x1

    goto :goto_16
.end method

.method public final A1v(ILcom/facebook/ads/redexgen/X/4a;)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v4, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    :goto_14
    if-eqz v4, :cond_26

    :goto_16
    const/4 v1, 0x0

    :goto_17
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A06:I

    if-ge v1, v0, :cond_5a

    if-ltz v2, :cond_5a

    if-ge v2, p1, :cond_5a

    invoke-interface {p2, v2, v6}, Lcom/facebook/ads/redexgen/X/4a;->A3O(II)V

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_26
    const/4 v5, 0x1

    goto :goto_16

    :cond_28
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0U()V

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    iget v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_47

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_47
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "j12HxmlCdcFNOCf90EDMVBFIs8rsuaoM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v3, v5, :cond_57

    if-eqz v4, :cond_55

    add-int/lit8 v2, p1, -0x1

    goto :goto_14

    :cond_55
    const/4 v2, 0x0

    goto :goto_14

    :cond_57
    iget v2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    goto :goto_14

    :cond_5a
    return-void
.end method

.method public final A1w(Landroid/os/Parcelable;)V
    .registers 6

    instance-of v0, p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_22

    :goto_1c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_22
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "tHEWx5U9TGfOm0s3U2zrO5nR7UMaVIoI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2c

    return-void

    :cond_2c
    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_3a

    goto :goto_1c

    :cond_3a
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "tm"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    check-cast p1, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;

    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/util/parcelable/WrappedParcelable;->unwrap(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v0, v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_52

    check-cast v1, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0y()V

    :cond_52
    return-void
.end method

.method public final A1x(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A1x(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-lez v0, :cond_2b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A28()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A29()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_2c

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "9E5bhv9RVKulu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_2b
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1y(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;)V
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v4, -0x1

    if-nez v0, :cond_9

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    if-eq v0, v4, :cond_13

    :cond_9
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A1I(Lcom/facebook/ads/redexgen/X/4k;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    :cond_23
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/4H;->A0B:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0U()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0s()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4F;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_41

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    if-ne v0, v4, :cond_41

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_242

    :cond_41
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4F;->A03()V

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0C:Z

    xor-int/2addr v1, v0

    iput-boolean v1, v5, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0g(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_267

    sget-object v5, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "pP9DXN24lJAGcvrzmJLzNvbz"

    const/4 v0, 0x0

    aput-object v1, v5, v0

    iput-boolean v2, v6, Lcom/facebook/ads/redexgen/X/4F;->A03:Z

    :cond_6c
    :goto_6c
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/ZC;->A0C(Lcom/facebook/ads/redexgen/X/4r;)I

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A04:I

    if-ltz v0, :cond_23e

    const/4 v6, 0x0

    :goto_77
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A08()I

    move-result v0

    add-int/2addr v7, v0

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-eqz v0, :cond_e5

    iget v8, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    sget-object v5, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v5, v0

    const/4 v0, 0x7

    aget-object v0, v5, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_22e

    sget-object v5, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "HnPzY03honFOjhYT25K5WFAFMhFIclok"

    const/4 v0, 0x1

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_e5

    :goto_a8
    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    const/high16 v0, -0x80000000

    if-eq v1, v0, :cond_e5

    invoke-virtual {p0, v8}, Lcom/facebook/ads/redexgen/X/ZC;->A1q(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_21c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v8, v0

    sget-object v5, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v5, v0

    const/4 v0, 0x4

    aget-object v5, v5, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_20b

    sget-object v5, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "r3FnQil1r32czyLALUutLd0XCkxYZ4G"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    sub-int/2addr v8, v0

    :goto_e2
    if-lez v8, :cond_208

    add-int/2addr v6, v8

    :cond_e5
    :goto_e5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_1ff

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_f0

    const/4 v4, 0x1

    :cond_f0
    :goto_f0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/facebook/ads/redexgen/X/ZC;->A2G(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;I)V

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A1H(Lcom/facebook/ads/redexgen/X/4k;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A09:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/4H;->A0A:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_1a5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0a(Lcom/facebook/ads/redexgen/X/4F;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    if-lez v0, :cond_12f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    add-int/2addr v7, v0

    :cond_12f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0Z(Lcom/facebook/ads/redexgen/X/4F;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, v5, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    if-lez v0, :cond_166

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    invoke-direct {p0, v4, v6}, Lcom/facebook/ads/redexgen/X/ZC;->A0X(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    :cond_166
    :goto_166
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-lez v0, :cond_17f

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0C:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_198

    invoke-direct {p0, v5, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/ZC;->A05(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Z)I

    move-result v0

    add-int/2addr v6, v0

    add-int/2addr v5, v0

    invoke-direct {p0, v6, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A06(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Z)I

    move-result v0

    add-int/2addr v6, v0

    add-int/2addr v5, v0

    :cond_17f
    :goto_17f
    invoke-direct {p0, p1, p2, v6, v5}, Lcom/facebook/ads/redexgen/X/ZC;->A0f(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;II)V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A07()Z

    move-result v0

    if-nez v0, :cond_192

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0I()V

    :goto_18d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0C:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A08:Z

    return-void

    :cond_192
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4F;->A03()V

    goto :goto_18d

    :cond_198
    invoke-direct {p0, v6, p1, p2, v2}, Lcom/facebook/ads/redexgen/X/ZC;->A06(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Z)I

    move-result v0

    add-int/2addr v6, v0

    add-int/2addr v5, v0

    invoke-direct {p0, v5, p1, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A05(ILcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Z)I

    move-result v0

    add-int/2addr v6, v0

    add-int/2addr v5, v0

    goto :goto_17f

    :cond_1a5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0Z(Lcom/facebook/ads/redexgen/X/4F;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v7, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    if-lez v0, :cond_1c6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    add-int/2addr v6, v0

    :cond_1c6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0a(Lcom/facebook/ads/redexgen/X/4F;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v6, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, v6, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    add-int/2addr v1, v0

    iput v1, v6, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    if-lez v0, :cond_166

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    invoke-direct {p0, v4, v5}, Lcom/facebook/ads/redexgen/X/ZC;->A0W(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iput v1, v0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    invoke-direct {p0, p1, v0, p2, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A08(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4r;Z)I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    iget v5, v0, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    goto/16 :goto_166

    :cond_1ff
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eqz v0, :cond_205

    goto/16 :goto_f0

    :cond_205
    const/4 v4, 0x1

    goto/16 :goto_f0

    :cond_208
    sub-int/2addr v7, v8

    goto/16 :goto_e5

    :cond_20b
    sget-object v5, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "sdmiyO1ExKOYMO2wbr6XNnW0K6t4WoaH"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "ty9AfnxQn4ghzZPCSImQPyrccPhuEwJu"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    sub-int/2addr v8, v0

    goto/16 :goto_e2

    :cond_21c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    sub-int/2addr v1, v0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    sub-int/2addr v8, v1

    goto/16 :goto_e2

    :cond_22e
    sget-object v5, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "wwbDuuRcKwQkcLvBFtW9wuMbOUuGYFzY"

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const-string v1, "YequbpJjhMyIl9uyXvP2gytASLo9xZ7L"

    const/4 v0, 0x4

    aput-object v1, v5, v0

    if-eq v8, v4, :cond_e5

    goto/16 :goto_a8

    :cond_23e
    move v6, v7

    const/4 v7, 0x0

    goto/16 :goto_77

    :cond_242
    if-eqz v5, :cond_6c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    if-ge v1, v0, :cond_260

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    if-gt v1, v0, :cond_6c

    :cond_260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/4F;->A05(Landroid/view/View;)V

    goto/16 :goto_6c

    :cond_267
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A1z(Lcom/facebook/ads/redexgen/X/4r;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A1z(Lcom/facebook/ads/redexgen/X/4r;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0D:Lcom/facebook/ads/redexgen/X/4F;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4F;->A03()V

    return-void
.end method

.method public final A20(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4k;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4c;->A20(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4k;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A09:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/4c;->A1I(Lcom/facebook/ads/redexgen/X/4k;)V

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4k;->A0P()V

    :cond_d
    return-void
.end method

.method public A21(Lcom/facebook/ads/redexgen/X/ED;Lcom/facebook/ads/redexgen/X/4r;I)V
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ED;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ZB;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/ZB;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4p;->A0A(I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A1L(Lcom/facebook/ads/redexgen/X/4p;)V

    return-void
.end method

.method public final A22(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_7

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A22(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final A23()Z
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0Y()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0i()I

    move-result v0

    if-eq v0, v1, :cond_29

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A1W()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_2b

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "ZYU5Lu8KJdo1W8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_29

    const/4 v0, 0x1

    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28

    :cond_2b
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A24()Z
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final A25()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public A26()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_c

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A08:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A0C:Z

    if-ne v1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final A27()I
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    goto :goto_d
.end method

.method public final A28()I
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, -0x1

    :goto_d
    return v0

    :cond_e
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    goto :goto_d
.end method

.method public final A29()I
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v3

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v3, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/ZC;->A0J(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return v1

    :cond_f
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v1

    goto :goto_e
.end method

.method public final A2A()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    return v0
.end method

.method public final A2B(I)I
    .registers 9

    const/4 v6, -0x1

    const/high16 v5, -0x80000000

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_76

    return v5

    :sswitch_8
    iget v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1f

    if-ne v3, v4, :cond_29

    :goto_1e
    return v6

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "tdW2fzf"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_29

    goto :goto_1e

    :cond_29
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2J()Z

    move-result v0

    if-eqz v0, :cond_30

    return v4

    :cond_30
    return v6

    :sswitch_31
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-ne v0, v4, :cond_36

    return v4

    :cond_36
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2J()Z

    move-result v0

    if-eqz v0, :cond_3d

    return v6

    :cond_3d
    return v4

    :sswitch_3e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-nez v0, :cond_43

    :goto_42
    return v6

    :cond_43
    const/high16 v6, -0x80000000

    goto :goto_42

    :sswitch_46
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-ne v0, v4, :cond_4b

    :goto_4a
    return v6

    :cond_4b
    const/high16 v6, -0x80000000

    goto :goto_4a

    :sswitch_4e
    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-nez v0, :cond_53

    const/4 v5, 0x1

    :cond_53
    return v5

    :sswitch_54
    iget v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_6b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6b
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "6DQtaB3lJkGKNvmH8s9QQc68TsOBLDE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_75

    const/4 v5, 0x1

    :cond_75
    return v5

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_31
        0x11 -> :sswitch_3e
        0x21 -> :sswitch_46
        0x42 -> :sswitch_4e
        0x82 -> :sswitch_54
    .end sparse-switch
.end method

.method public A2C(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;III)Landroid/view/View;
    .registers 13

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2D()V

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v3

    if-le p4, p3, :cond_47

    const/4 v2, 0x1

    :goto_14
    if-eq p3, p4, :cond_4a

    invoke-virtual {p0, p3}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_31

    if-ge v0, p5, :cond_31

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4d;->A02()Z

    move-result v0

    if-eqz v0, :cond_33

    if-nez v6, :cond_31

    move-object v6, v1

    :cond_31
    :goto_31
    add-int/2addr p3, v2

    goto :goto_14

    :cond_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    if-ge v0, v3, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    if-ge v0, v4, :cond_49

    :cond_43
    if-nez v5, :cond_31

    move-object v5, v1

    goto :goto_31

    :cond_47
    const/4 v2, -0x1

    goto :goto_14

    :cond_49
    return-object v1

    :cond_4a
    if-eqz v5, :cond_4d

    :goto_4c
    return-object v5

    :cond_4d
    move-object v5, v6

    goto :goto_4c
.end method

.method public final A2D()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A0S()Lcom/facebook/ads/redexgen/X/4H;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A07:Lcom/facebook/ads/redexgen/X/4H;

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/4M;->A02(Lcom/facebook/ads/redexgen/X/4c;I)Lcom/facebook/ads/redexgen/X/4M;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    :cond_16
    return-void
.end method

.method public final A2E(I)V
    .registers 6

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    :cond_5
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1b
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "wMuOUB68W5cmyVCUMue198JFnL9Wkeot"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/ZC;->A22(Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-ne p1, v0, :cond_2a

    return-void

    :cond_2a
    iput p1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0y()V

    return-void

    :cond_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ZC;->A0T(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A2F(II)V
    .registers 6

    iput p1, p0, Lcom/facebook/ads/redexgen/X/ZC;->A01:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/ZC;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A03:Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/facebook/ads/internal/androidx/support/v7/widget/LinearLayoutManager$SavedState;->A00()V

    :cond_b
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0y()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "tDl3kZGUKMTs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void
.end method

.method public A2G(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4F;I)V
    .registers 5

    return-void
.end method

.method public A2H(Lcom/facebook/ads/redexgen/X/4k;Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4G;)V
    .registers 19

    move-object v7, p0

    move-object/from16 v5, p3

    invoke-virtual {v5, p1}, Lcom/facebook/ads/redexgen/X/4H;->A03(Lcom/facebook/ads/redexgen/X/4k;)Landroid/view/View;

    move-result-object v9

    const/4 v3, 0x1

    move-object/from16 v4, p4

    if-nez v9, :cond_f

    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4G;->A01:Z

    return-void

    :cond_f
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4d;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    const/4 v6, -0x1

    const/4 v8, 0x0

    if-nez v0, :cond_ab

    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    if-ne v0, v6, :cond_a8

    const/4 v0, 0x1

    :goto_22
    if-ne v1, v0, :cond_a4

    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4c;->A17(Landroid/view/View;)V

    :goto_27
    invoke-virtual {v7, v9, v8, v8}, Lcom/facebook/ads/redexgen/X/4c;->A1A(Landroid/view/View;II)V

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    if-ne v0, v3, :cond_85

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ZC;->A2J()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0h()I

    move-result v12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0f()I

    move-result v0

    sub-int/2addr v12, v0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4M;->A0E(Landroid/view/View;)I

    move-result v0

    sub-int v10, v12, v0

    :goto_4d
    iget v0, v5, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    if-ne v0, v6, :cond_71

    iget v13, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v11, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    sub-int/2addr v11, v0

    :goto_58
    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/4c;->A1B(Landroid/view/View;IIII)V

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4d;->A02()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4d;->A01()Z

    move-result v0

    if-eqz v0, :cond_6a

    :cond_68
    iput-boolean v3, v4, Lcom/facebook/ads/redexgen/X/4G;->A03:Z

    :cond_6a
    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A02:Z

    return-void

    :cond_71
    iget v11, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v13, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    add-int/2addr v13, v0

    goto :goto_58

    :cond_79
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0e()I

    move-result v10

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4M;->A0E(Landroid/view/View;)I

    move-result v12

    add-int/2addr v12, v10

    goto :goto_4d

    :cond_85
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0g()I

    move-result v11

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/4M;->A0E(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v11

    iget v0, v5, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    if-ne v0, v6, :cond_9c

    iget v12, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v10, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    sub-int/2addr v10, v0

    goto :goto_58

    :cond_9c
    iget v10, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v12, v5, Lcom/facebook/ads/redexgen/X/4H;->A06:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/4G;->A00:I

    add-int/2addr v12, v0

    goto :goto_58

    :cond_a4
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4c;->A19(Landroid/view/View;I)V

    goto :goto_27

    :cond_a8
    const/4 v0, 0x0

    goto/16 :goto_22

    :cond_ab
    iget-boolean v1, v7, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    iget v0, v5, Lcom/facebook/ads/redexgen/X/4H;->A05:I

    if-ne v0, v6, :cond_b9

    const/4 v0, 0x1

    :goto_b2
    if-ne v1, v0, :cond_bb

    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4c;->A16(Landroid/view/View;)V

    goto/16 :goto_27

    :cond_b9
    const/4 v0, 0x0

    goto :goto_b2

    :cond_bb
    invoke-virtual {v7, v9, v8}, Lcom/facebook/ads/redexgen/X/4c;->A18(Landroid/view/View;I)V

    goto/16 :goto_27
.end method

.method public A2I(Lcom/facebook/ads/redexgen/X/4r;Lcom/facebook/ads/redexgen/X/4H;Lcom/facebook/ads/redexgen/X/4a;)V
    .registers 7

    iget v2, p2, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    if-ltz v2, :cond_14

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    if-ge v2, v0, :cond_14

    const/4 v1, 0x0

    iget v0, p2, Lcom/facebook/ads/redexgen/X/4H;->A07:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p3, v2, v0}, Lcom/facebook/ads/redexgen/X/4a;->A3O(II)V

    :cond_14
    return-void
.end method

.method public final A2J()Z
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0a()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final A4L(I)Landroid/graphics/PointF;
    .registers 8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4c;->A0W()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4c;->A0t(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x1

    if-ge p1, v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ZC;->A05:Z

    if-eq v1, v0, :cond_1a

    const/4 v5, -0x1

    :cond_1a
    iget v4, p0, Lcom/facebook/ads/redexgen/X/ZC;->A00:I

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_40

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZC;->A0G:[Ljava/lang/String;

    const-string v1, "5EjIyJt0kzQOvAP28HqeuGPqaebz9kN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_39

    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_39
    int-to-float v1, v5

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_40
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
