###### Class com.facebook.ads.redexgen.X.LI (com.facebook.ads.redexgen.X.LI)
.class public final Lcom/facebook/ads/redexgen/X/LI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/LH;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:Landroid/view/Window;

.field public A02:Lcom/facebook/ads/redexgen/X/LH;

.field public final A03:Landroid/view/View;

.field public final A04:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A03:Lcom/facebook/ads/redexgen/X/LH;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A02:Lcom/facebook/ads/redexgen/X/LH;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tu;-><init>(Lcom/facebook/ads/redexgen/X/LI;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A04:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LI;->A03:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method private A00(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A01:Landroid/view/Window;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz p2, :cond_16

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, p1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A01:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_16
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v1, v0

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_10
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/LI;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/LI;->A02(Z)V

    return-void
.end method

.method private A02(Z)V
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/LH;->A03:Lcom/facebook/ads/redexgen/X/LH;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A02:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/16 v4, 0xf00

    if-nez p1, :cond_11

    or-int/lit8 v4, v4, 0x7

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_27

    if-eqz p1, :cond_27

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A04:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/LI;->A04:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A03:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public final A03()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A01:Landroid/view/Window;

    return-void
.end method

.method public final A04(Landroid/view/Window;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LI;->A01:Landroid/view/Window;

    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/LH;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LI;->A02:Lcom/facebook/ads/redexgen/X/LH;

    sget-object v1, Lcom/facebook/ads/redexgen/X/LG;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A02:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LH;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/high16 v3, 0x8000000

    const/high16 v2, 0x4000000

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2c

    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/LI;->A00(IZ)V

    invoke-direct {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/LI;->A00(IZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_1f
    return-void

    :pswitch_20
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/LI;->A00(IZ)V

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/LI;->A00(IZ)V

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/LI;->A02(Z)V

    goto :goto_1f

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method public final onSystemUiVisibilityChange(I)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/LI;->A00:I

    xor-int/2addr v0, p1

    iput p1, p0, Lcom/facebook/ads/redexgen/X/LI;->A00:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/LI;->A02(Z)V

    :cond_11
    return-void
.end method
