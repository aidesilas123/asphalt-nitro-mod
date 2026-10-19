###### Class com.facebook.ads.redexgen.X.F8 (com.facebook.ads.redexgen.X.F8)
.class public final Lcom/facebook/ads/redexgen/X/F8;
.super Lcom/facebook/ads/redexgen/X/aT;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/YA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UJ;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/YA;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/aT;-><init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Tj;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/M0;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/M0;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tj;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A0C(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4u;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F8;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/Tj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4u;I)V
    .registers 3

    check-cast p1, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F8;->A0H(Lcom/facebook/ads/redexgen/X/Tj;I)V

    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/Tj;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aT;->A0H(Lcom/facebook/ads/redexgen/X/Tj;I)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/M0;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/M0;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/MC;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/aT;->A0F(Landroid/widget/ImageView;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/UJ;->A11()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F8;->A00:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YA;->A0G(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v2, v3, v3}, Lcom/facebook/ads/redexgen/X/UJ;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-void
.end method
