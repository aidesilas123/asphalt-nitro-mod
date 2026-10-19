###### Class com.facebook.ads.redexgen.X.C06510a (com.facebook.ads.redexgen.X.0a)
.class public Lcom/facebook/ads/redexgen/X/0a;
.super Lcom/facebook/ads/redexgen/X/0c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi21Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0c;-><init>()V

    return-void
.end method


# virtual methods
.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Y;)Lcom/facebook/ads/redexgen/X/3Y;
    .registers 5

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3Y;->A01(Lcom/facebook/ads/redexgen/X/3Y;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eq v0, v1, :cond_11

    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    :cond_11
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3Y;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/3Y;

    move-result-object v0

    return-object v0
.end method

.method public final A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Y;)Lcom/facebook/ads/redexgen/X/3Y;
    .registers 5

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3Y;->A01(Lcom/facebook/ads/redexgen/X/3Y;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {p1, v1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eq v0, v1, :cond_11

    new-instance v1, Landroid/view/WindowInsets;

    invoke-direct {v1, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    :cond_11
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3Y;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/3Y;

    move-result-object v0

    return-object v0
.end method

.method public final A0B(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method

.method public final A0F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/31;)V
    .registers 4

    if-nez p2, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/3F;

    invoke-direct {v0, p0, p2}, Lcom/facebook/ads/redexgen/X/3F;-><init>(Lcom/facebook/ads/redexgen/X/0a;Lcom/facebook/ads/redexgen/X/31;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C3F (com.facebook.ads.redexgen.X.3F)
.class public final Lcom/facebook/ads/redexgen/X/3F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/0a;->A0F(Landroid/view/View;Lcom/facebook/ads/redexgen/X/31;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/31;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/0a;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0a;Lcom/facebook/ads/redexgen/X/31;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/3F;->A01:Lcom/facebook/ads/redexgen/X/0a;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 5

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/3Y;->A00(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/3Y;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/3F;->A00:Lcom/facebook/ads/redexgen/X/31;

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/31;->AAV(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3Y;)Lcom/facebook/ads/redexgen/X/3Y;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3Y;->A01(Lcom/facebook/ads/redexgen/X/3Y;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    return-object v0
.end method
