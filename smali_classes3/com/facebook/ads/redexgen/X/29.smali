###### Class com.facebook.ads.redexgen.X.AnonymousClass29 (com.facebook.ads.redexgen.X.29)
.class public final Lcom/facebook/ads/redexgen/X/29;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# static fields
.field public static final A06:I

.field public static final A07:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/T3;

.field public A01:Lcom/facebook/ads/redexgen/X/PC;

.field public final A02:Lcom/facebook/ads/redexgen/X/If;

.field public final A03:Lcom/facebook/ads/redexgen/X/UJ;

.field public final A04:Lcom/facebook/ads/redexgen/X/9j;

.field public final A05:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, -0x3f800000    # -4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/29;->A07:I

    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/29;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;Lcom/facebook/ads/redexgen/X/UJ;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/9j;)V
    .registers 7

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/9G;-><init>(Lcom/facebook/ads/redexgen/X/Nz;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/S0;)V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/29;->A05:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/29;->A04:Lcom/facebook/ads/redexgen/X/9j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A02:Lcom/facebook/ads/redexgen/X/If;

    invoke-virtual {p2, p0}, Lcom/facebook/ads/redexgen/X/UJ;->A1K(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/PC;)V
    .registers 15

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/29;->A01:Lcom/facebook/ads/redexgen/X/PC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0M(Landroid/content/Context;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0z()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v7

    new-instance v4, Lcom/facebook/ads/redexgen/X/T3;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A0I:Lcom/facebook/ads/redexgen/X/Nz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0z()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A0K()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/29;->A02:Lcom/facebook/ads/redexgen/X/If;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/N9;->getDummyListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A04:Lcom/facebook/ads/redexgen/X/9j;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9j;->A0c()Lcom/facebook/ads/redexgen/X/Qb;

    move-result-object v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A19()Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0z()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    if-nez v0, :cond_a6

    const/4 v12, 0x0

    :goto_47
    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1M;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/1R;)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A03()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v3

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/29;->A05:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/T3;->setCta(Lcom/facebook/ads/redexgen/X/1N;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A1K(Landroid/view/View;)V

    const/4 v2, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    const/4 v5, 0x0

    if-ne v1, v0, :cond_89

    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/T3;

    sget v2, Lcom/facebook/ads/redexgen/X/29;->A06:I

    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/1M;->A09(Z)I

    move-result v1

    const/4 v0, 0x5

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A0P(Landroid/view/View;III)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9G;->A06:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v1, v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_88
    :goto_88
    return-void

    :cond_89
    const/4 v0, 0x2

    if-ne v1, v0, :cond_88

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v0, Lcom/facebook/ads/redexgen/X/29;->A07:I

    invoke-virtual {v4, v5, v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A00:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {p0, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/29;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9G;->A06:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V

    goto :goto_88

    :cond_a6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/29;->A03:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0z()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v12

    goto :goto_47
.end method
