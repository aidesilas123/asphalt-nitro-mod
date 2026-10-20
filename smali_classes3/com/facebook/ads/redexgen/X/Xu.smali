###### Class com.facebook.ads.redexgen.X.C1482Xu (com.facebook.ads.redexgen.X.Xu)
.class public final Lcom/facebook/ads/redexgen/X/Xu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Jy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8L;->A00()Lcom/facebook/ads/redexgen/X/Xu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEc(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .registers 5

    instance-of v0, p2, Lcom/facebook/ads/redexgen/X/7P;

    if-eqz v0, :cond_10

    check-cast p2, Lcom/facebook/ads/redexgen/X/7P;

    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/7P;->A5p()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YA;->A0I(Ljava/lang/Throwable;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    instance-of v0, p2, Landroid/view/View;

    if-eqz v0, :cond_f

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/YA;

    if-eqz v0, :cond_f

    check-cast v1, Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/YA;->A0I(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
