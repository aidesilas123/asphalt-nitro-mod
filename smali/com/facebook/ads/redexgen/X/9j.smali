###### Class com.facebook.ads.redexgen.X.C08789j (com.facebook.ads.redexgen.X.9j)
.class public final Lcom/facebook/ads/redexgen/X/9j;
.super Lcom/facebook/ads/redexgen/X/S0;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4DJOkXe9rib7uWc4nLa4kcuSPdxs7gf4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Dyxr4XzeXsq4jjw5BU630cyoQdL32ISv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MScpZjpz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3XC0FNsyX3k6WX9dbHhU9IwCEOagJZ1X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JEKgPGdFYfe9RoD8dW0t8x0Mvi1GtEmi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N5tdloXdcly7PUtxD1ZshZXdUDk2Lr2A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5elKCHWntj6O1Wqi1faAvLWvEV4yzp2T"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JBMx9492vmjOwkRP6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9j;->A00:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2O;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Qb;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2O;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PC;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Qb;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/S0;-><init>(Lcom/facebook/ads/redexgen/X/2O;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Qb;Landroid/os/Bundle;)V

    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/ED;->A1k(Lcom/facebook/ads/redexgen/X/4h;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/TI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TI;-><init>(Lcom/facebook/ads/redexgen/X/9j;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A03:Lcom/facebook/ads/redexgen/X/OO;

    return-void
.end method

.method private A00()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A0C:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A27()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A05:Ljava/util/List;

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1c

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S0;->A0V(I)V

    :cond_1c
    return-void
.end method

.method private A01(I)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A0C:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A28()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A0C:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A29()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A0C:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A27()I

    move-result v0

    if-eq v0, v2, :cond_17

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/S0;->A0S(I)V

    :cond_17
    if-eq v0, v1, :cond_1c

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/S0;->A0S(I)V

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/S0;->A0T(I)V

    invoke-virtual {p0, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/S0;->A0W(III)V

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/9j;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9j;->A00()V

    return-void
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/redexgen/X/ED;I)V
    .registers 3

    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/ED;II)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A0C:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A27()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_43

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A0C:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ZC;->A27()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A0C:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/ZC;->A1q(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Sk;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9j;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_44

    sget-object v2, Lcom/facebook/ads/redexgen/X/9j;->A00:[Ljava/lang/String;

    const-string v1, "IxYVUA16uQkbjXwNztolao4gyOA0tKzF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jcO9EzcXxFOxyF2BSjZiD0vteRj0mA5y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Sk;->A17()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Sk;->A16()Z

    move-result v0

    if-nez v0, :cond_40

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Sk;->A14()V

    :cond_40
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/9j;->A01(I)V

    :cond_43
    return-void

    :cond_44
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0Y(Landroid/view/View;Z)V
    .registers 4

    if-eqz p2, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_8
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_4
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/Sk;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9j;->A0Y(Landroid/view/View;Z)V

    if-nez p2, :cond_e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Sk;->A16()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Sk;->A13()V

    :cond_e
    return-void
.end method

.method public final A0b(Landroid/view/View;)Z
    .registers 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public final A0c()Lcom/facebook/ads/redexgen/X/Qb;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A04:Lcom/facebook/ads/redexgen/X/Qb;

    return-object v0
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/Qb;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S0;->A04:Lcom/facebook/ads/redexgen/X/Qb;

    return-void
.end method

.method public final A0e(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PC;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S0;->A05:Ljava/util/List;

    return-void
.end method
