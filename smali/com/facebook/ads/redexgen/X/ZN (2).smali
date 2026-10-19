###### Class com.facebook.ads.redexgen.X.ZN (com.facebook.ads.redexgen.X.ZN)
.class public final Lcom/facebook/ads/redexgen/X/ZN;
.super Lcom/facebook/ads/redexgen/X/2v;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAccessibilityDelegate"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3V;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qdMAGnvFuVn0ea0M3RnyzUUMgxm0S2Dt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2PeyHnmE0bX58Ffgk0gx7OXrgxltyZLW"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2int"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nVrienaBQfkWnV6qIsNJmuY2fGTgVaBy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "EIAfoPo9YRxYx4hqHxVbjlkHHJjThpFm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SPMlRY4DBSEQqdOiv1Q7wDslDeTbAa0F"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kfFOHzhabps7JVIWzUifit9US33gkwJk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ZN;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3V;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2v;-><init>()V

    return-void
.end method

.method private A00()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3V;->A01:Lcom/facebook/ads/redexgen/X/32;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3V;->A01:Lcom/facebook/ads/redexgen/X/32;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/32;->A05()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2v;->A07(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/facebook/ads/redexgen/X/3V;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZN;->A00()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v0, 0x1000

    if-ne v1, v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3V;->A01:Lcom/facebook/ads/redexgen/X/32;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/3V;->A01:Lcom/facebook/ads/redexgen/X/32;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/32;->A05()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3V;->A00:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/3V;->A00:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_3a
    return-void
.end method

.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3g;)V
    .registers 5

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2v;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3g;)V

    const-class v0, Lcom/facebook/ads/redexgen/X/3V;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0O(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ZN;->A00()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0R(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3V;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0N(I)V

    :cond_21
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3V;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/3g;->A0N(I)V

    :cond_2f
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 10

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2v;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    return v3

    :cond_8
    const/4 v2, 0x0

    sparse-switch p2, :sswitch_data_54

    return v2

    :sswitch_d
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3V;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget v4, v5, Lcom/facebook/ads/redexgen/X/3V;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/ZN;->A01:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_34

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    sget-object v2, Lcom/facebook/ads/redexgen/X/ZN;->A01:[Ljava/lang/String;

    const-string v1, "Vr8sNFSEZwclN9wLDYuYxTMloU2ohTqa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    invoke-virtual {v5, v4}, Lcom/facebook/ads/redexgen/X/3V;->setCurrentItem(I)V

    return v3

    :cond_40
    return v2

    :sswitch_41
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/3V;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZN;->A00:Lcom/facebook/ads/redexgen/X/3V;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/3V;->A00:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3V;->setCurrentItem(I)V

    return v3

    :cond_52
    return v2

    nop

    :sswitch_data_54
    .sparse-switch
        0x1000 -> :sswitch_41
        0x2000 -> :sswitch_d
    .end sparse-switch
.end method
