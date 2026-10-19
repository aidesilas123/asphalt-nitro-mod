###### Class com.facebook.ads.redexgen.X.C4H (com.facebook.ads.redexgen.X.4H)
.class public final Lcom/facebook/ads/redexgen/X/4H;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutState"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/4u;",
            ">;"
        }
    .end annotation
.end field

.field public A09:Z

.field public A0A:Z

.field public A0B:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0B:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A0A:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    return-void
.end method

.method private A00()Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v5, :cond_2e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4d;->A02()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_22
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4d;->A00()I

    move-result v0

    if-ne v1, v0, :cond_1f

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/4H;->A02(Landroid/view/View;)V

    return-object v3

    :cond_2e
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A01(Landroid/view/View;)Landroid/view/View;
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v5, 0x0

    const v4, 0x7fffffff

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v6, :cond_3b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4u;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/4u;->A0H:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4d;

    if-eq v2, p1, :cond_25

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4d;->A02()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_28
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4d;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    mul-int/2addr v1, v0

    if-gez v1, :cond_35

    goto :goto_25

    :cond_35
    if-ge v1, v4, :cond_25

    move-object v5, v2

    move v4, v1

    if-nez v1, :cond_25

    :cond_3b
    return-object v5
.end method

.method private final A02(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4H;->A01(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    :goto_9
    return-void

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4d;->A00()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    goto :goto_9
.end method


# virtual methods
.method public final A03(Lcom/facebook/ads/redexgen/X/4k;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A08:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4H;->A00()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_9
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4k;->A0G(I)Landroid/view/View;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    return-object v2
.end method

.method public final A04()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4H;->A02(Landroid/view/View;)V

    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/4r;)Z
    .registers 4

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    if-ltz v1, :cond_c

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    if-ge v1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
