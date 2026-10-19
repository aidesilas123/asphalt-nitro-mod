###### Class com.facebook.ads.redexgen.X.C1400Un (com.facebook.ads.redexgen.X.Un)
.class public final Lcom/facebook/ads/redexgen/X/Un;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/IU;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/graphics/Rect;

.field public final A01:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AMQNzlG2eGPOJo74lPpddO6twtMEce"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8uZuLGh3CZSzV4eSaK74M9a8aAW81o1g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CYs8BZmCr6kO5jRRUq4laItl384RlovT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PO4hUmmCpilEicL1R3sLdD9hI0Kiey5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WmgRsP13YsLJamj9MMjVCco3tjnpIVCq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0ErvOAeoLZJf3MJzf6jF5Cw5BrHPqp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S0kgbIpbc64QMPj8XCJtTK8zDrzNpUnW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MO6xPizLQkqntlkNHRrNVg7dZ2stU5UP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Un;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/graphics/Rect;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/bg;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/bg<",
            "Lcom/facebook/ads/redexgen/X/IV;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A05()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A03:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A07()Z

    move-result v0

    return v0

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A06()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bg;->A03:Ljava/lang/Object;

    check-cast p0, Lcom/facebook/ads/redexgen/X/Ia;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Un;->A02:[Ljava/lang/String;

    const-string v1, "8O0EOVeCMdEJdeSbYPFIeNjJXhTUSITs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Km62DwbCV8Ma1ecjtuIU72b1y8KakI9d"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ia;->A06()Z

    move-result v0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/bg;Lcom/facebook/ads/redexgen/X/bV;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/bg<",
            "Lcom/facebook/ads/redexgen/X/IV;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/bV;",
            ")Z"
        }
    .end annotation

    const/high16 v1, -0x40800000    # -1.0f

    :try_start_2
    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/bV;->A8D(Lcom/facebook/ads/redexgen/X/bg;)F

    move-result v1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_6} :catch_6

    :catch_6
    const/4 v0, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_13

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Un;->A00(Lcom/facebook/ads/redexgen/X/bg;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    :cond_13
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A00()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_35

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Un;->A00(Lcom/facebook/ads/redexgen/X/bg;)Z

    move-result v0

    if-eqz v0, :cond_35

    return v2

    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:Landroid/graphics/Rect;

    invoke-interface {p2, v0}, Lcom/facebook/ads/redexgen/X/bV;->A8C(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/graphics/Rect;

    invoke-interface {p2, p1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A71(Lcom/facebook/ads/redexgen/X/bg;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_61

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A01:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Un;->A00:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_61

    const/4 v0, 0x1

    :goto_56
    if-eqz v0, :cond_5f

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Un;->A00(Lcom/facebook/ads/redexgen/X/bg;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :goto_5e
    return v2

    :cond_5f
    const/4 v2, 0x0

    goto :goto_5e

    :cond_61
    const/4 v0, 0x0

    goto :goto_56
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/bg;Lcom/facebook/ads/redexgen/X/bV;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/bg<",
            "Lcom/facebook/ads/redexgen/X/IV;",
            "Lcom/facebook/ads/redexgen/X/Ia;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/bV;",
            ")V"
        }
    .end annotation

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A03:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A04()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Un;->A01(Lcom/facebook/ads/redexgen/X/bg;Lcom/facebook/ads/redexgen/X/bV;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A03:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A01()V

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A02()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A03()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/If;->A9e(Ljava/lang/String;Ljava/util/Map;)V

    :cond_32
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A03:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A05()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A03:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ia;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ia;->A02()V

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A02()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A03()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/bg;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/If;->A9U(Ljava/lang/String;Ljava/util/Map;)V

    :cond_6c
    return-void
.end method
