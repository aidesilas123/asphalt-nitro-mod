###### Class com.facebook.ads.redexgen.X.JY (com.facebook.ads.redexgen.X.JY)
.class public final Lcom/facebook/ads/redexgen/X/JY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Q6;


# instance fields
.field public A00:Landroid/graphics/drawable/TransitionDrawable;

.field public A01:Landroid/graphics/drawable/TransitionDrawable;

.field public A02:Lcom/facebook/ads/redexgen/X/Q5;

.field public final A03:I

.field public final A04:Landroid/graphics/drawable/Drawable;

.field public final A05:Landroid/graphics/drawable/Drawable;

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A06:Landroid/os/Handler;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/JY;->A03:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JY;->A07:Landroid/view/View;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JY;->A05:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/JY;->A04:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    const/4 v2, 0x1

    aput-object p4, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    new-array v1, v4, [Landroid/graphics/drawable/Drawable;

    aput-object p4, v1, v3

    aput-object p3, v1, v2

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JY;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JY;->A04:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JY;)Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JY;->A05:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JY;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JY;->A07:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/JY;Lcom/facebook/ads/redexgen/X/Q5;)Lcom/facebook/ads/redexgen/X/Q5;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    return-object p1
.end method

.method private A04(Z)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_28

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A06:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A00:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JY;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/JZ;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/JZ;-><init>(Lcom/facebook/ads/redexgen/X/JY;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_27
    return-void

    :cond_28
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A05:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_27
.end method

.method private A05(Z)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_28

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A04:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A01:Landroid/graphics/drawable/TransitionDrawable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A03:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/JY;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ja;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Ja;-><init>(Lcom/facebook/ads/redexgen/X/JY;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A03:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_27
    return-void

    :cond_28
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A07:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A04:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_27
.end method


# virtual methods
.method public final A3U(ZZ)V
    .registers 3

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JY;->A04(Z)V

    :goto_5
    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JY;->A05(Z)V

    goto :goto_5
.end method

.method public final A7u()Lcom/facebook/ads/redexgen/X/Q5;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    return-object v0
.end method

.method public final cancel()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A01:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A00:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A04:Lcom/facebook/ads/redexgen/X/Q5;

    if-ne v1, v0, :cond_1b

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A05:Lcom/facebook/ads/redexgen/X/Q5;

    :goto_18
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JY;->A02:Lcom/facebook/ads/redexgen/X/Q5;

    return-void

    :cond_1b
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q5;->A03:Lcom/facebook/ads/redexgen/X/Q5;

    goto :goto_18
.end method
