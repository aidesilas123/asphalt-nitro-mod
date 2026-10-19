###### Class com.facebook.ads.redexgen.X.C1206Na (com.facebook.ads.redexgen.X.Na)
.class public Lcom/facebook/ads/redexgen/X/Na;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static final A0A:I

.field public static final A0B:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/1M;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:F

.field public final A07:I

.field public final A08:Ljava/lang/Runnable;

.field public final A09:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Na;->A0A:I

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Na;->A0B:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1M;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Z

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A01:I

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A00:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Z

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A05:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/T2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T2;-><init>(Lcom/facebook/ads/redexgen/X/Na;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A08:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T1;-><init>(Lcom/facebook/ads/redexgen/X/Na;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A09:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Na;->A02:Lcom/facebook/ads/redexgen/X/1M;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A04(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A07:I

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A00(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A06:F

    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0X(Landroid/widget/TextView;ZI)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Na;->setGravity(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Na;->A03()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Na;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Na;->A07:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Na;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Na;->A09:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Na;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Na;->A08:Ljava/lang/Runnable;

    return-object p0
.end method

.method private A03()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A02:Lcom/facebook/ads/redexgen/X/1M;

    if-eqz v1, :cond_16

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A08(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A00:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A02:Lcom/facebook/ads/redexgen/X/1M;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1M;->A09(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A01:I

    :cond_16
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Na;->A00:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Z

    if-eqz v0, :cond_27

    sget v0, Lcom/facebook/ads/redexgen/X/Na;->A0B:I

    :goto_1e
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0O(Landroid/view/View;II)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Na;->setTextColor(I)V

    return-void

    :cond_27
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private A04()V
    .registers 4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A07:I

    if-ltz v0, :cond_8

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Z

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A03:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Na;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A27(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_24

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Na;->A08:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A07:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Na;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    return-void
.end method


# virtual methods
.method public getColorInfo()Lcom/facebook/ads/redexgen/X/1M;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Na;->A02:Lcom/facebook/ads/redexgen/X/1M;

    return-object v0
.end method

.method public final onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Na;->A04()V

    return-void
.end method

.method public setRoundedCornersEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Na;->A04:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Na;->A03()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUpButtonColors(Lcom/facebook/ads/redexgen/X/1M;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Na;->A02:Lcom/facebook/ads/redexgen/X/1M;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Na;->A03()V

    return-void
.end method

.method public setViewShowsOverMedia(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Na;->A05:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Na;->A03()V

    return-void
.end method
