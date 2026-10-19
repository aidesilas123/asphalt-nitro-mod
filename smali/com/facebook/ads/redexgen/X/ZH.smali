###### Class com.facebook.ads.redexgen.X.ZH (com.facebook.ads.redexgen.X.ZH)
.class public final Lcom/facebook/ads/redexgen/X/ZH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/EH;->AAC(Lcom/facebook/ads/redexgen/X/3i;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/EH;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3i;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EH;Lcom/facebook/ads/redexgen/X/3i;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZH;->A00:Lcom/facebook/ads/redexgen/X/EH;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4T(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A00(I)Lcom/facebook/ads/redexgen/X/3g;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A5c(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3i;->A03(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v2, :cond_26

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_26
    return-object v3
.end method

.method public final A5d(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3i;->A01(I)Lcom/facebook/ads/redexgen/X/3g;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3g;->A0M()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final ADn(IILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZH;->A01:Lcom/facebook/ads/redexgen/X/3i;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3i;->A04(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
