###### Class com.facebook.ads.redexgen.X.C07403o (com.facebook.ads.redexgen.X.3o)
.class public final Lcom/facebook/ads/redexgen/X/3o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/3n;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/3n;)Lcom/facebook/ads/redexgen/X/3m;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/3m;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/3m;-><init>(Lcom/facebook/ads/redexgen/X/3n;)V

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C3m (com.facebook.ads.redexgen.X.3m)
.class public final Lcom/facebook/ads/redexgen/X/3m;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3o;->A00(Lcom/facebook/ads/redexgen/X/3n;)Lcom/facebook/ads/redexgen/X/3m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3n;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3n;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/3n;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/3n;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3n;->A4T(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/3n;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3n;->A5c(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/3n;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/3n;->A5d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3m;->A00:Lcom/facebook/ads/redexgen/X/3n;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3n;->ADn(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
