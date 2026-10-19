###### Class com.facebook.ads.redexgen.X.PX (com.facebook.ads.redexgen.X.PX)
.class public abstract Lcom/facebook/ads/redexgen/X/PX;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pk;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/RX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PX;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public A07()V
    .registers 1

    return-void
.end method

.method public A08()V
    .registers 1

    return-void
.end method

.method public final A9D(Lcom/facebook/ads/redexgen/X/RX;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PX;->A00:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PX;->A07()V

    return-void
.end method

.method public final AG0(Lcom/facebook/ads/redexgen/X/RX;)V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PX;->A08()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PX;->A00:Lcom/facebook/ads/redexgen/X/RX;

    return-void
.end method

.method public getVideoView()Lcom/facebook/ads/redexgen/X/RX;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PX;->A00:Lcom/facebook/ads/redexgen/X/RX;

    return-object v0
.end method
