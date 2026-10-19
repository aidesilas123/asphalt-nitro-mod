###### Class com.facebook.ads.redexgen.X.C07764z (com.facebook.ads.redexgen.X.4z)
.class public final Lcom/facebook/ads/redexgen/X/4z;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/4x;,
        Lcom/facebook/ads/redexgen/X/4w;,
        Lcom/facebook/ads/internal/androidx/support/v7/widget/ViewBoundsCheck$ViewBounds;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4w;

.field public final A01:Lcom/facebook/ads/redexgen/X/4x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4x;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/4x;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4w;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/4w;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    return-void
.end method


# virtual methods
.method public final A00(IIII)Landroid/view/View;
    .registers 13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4x;->A7T()I

    move-result v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4x;->A7S()I

    move-result v2

    if-le p2, p1, :cond_55

    const/4 v7, 0x1

    :goto_f
    const/4 v6, 0x0

    :goto_10
    if-eq p1, p2, :cond_57

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/4x;->A6H(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4x;->A6K(Landroid/view/View;)I

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/4x;->A6J(Landroid/view/View;)I

    move-result v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0, v3, v2, v5, v4}, Lcom/facebook/ads/redexgen/X/4w;->A03(IIII)V

    if-eqz p3, :cond_3e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4w;->A01()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/4w;->A02(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4w;->A04()Z

    move-result v0

    if-eqz v0, :cond_3e

    return-object v1

    :cond_3e
    if-eqz p4, :cond_53

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4w;->A01()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/4w;->A02(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:Lcom/facebook/ads/redexgen/X/4w;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4w;->A04()Z

    move-result v0

    if-eqz v0, :cond_53

    move-object v6, v1

    :cond_53
    add-int/2addr p1, v7

    goto :goto_10

    :cond_55
    const/4 v7, -0x1

    goto :goto_f

    :cond_57
    return-object v6
.end method
