###### Class com.facebook.ads.redexgen.X.PE (com.facebook.ads.redexgen.X.PE)
.class public final Lcom/facebook/ads/redexgen/X/PE;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/AE;

.field public A01:Lcom/facebook/ads/redexgen/X/Pa;

.field public A02:Lcom/facebook/ads/redexgen/X/76;

.field public A03:Lcom/facebook/ads/redexgen/X/Jr;

.field public A04:Lcom/facebook/ads/redexgen/X/6j;

.field public A05:Lcom/facebook/ads/redexgen/X/6E;

.field public final A06:Lcom/facebook/ads/redexgen/X/YA;

.field public final A07:Lcom/facebook/ads/redexgen/X/In;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/PE;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/In;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/PE;->A07:Lcom/facebook/ads/redexgen/X/In;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PE;->A06:Lcom/facebook/ads/redexgen/X/YA;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PE;->setUpView(Lcom/facebook/ads/redexgen/X/YA;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/PE;)Lcom/facebook/ads/redexgen/X/6E;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/PE;->A05:Lcom/facebook/ads/redexgen/X/6E;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0X()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/6j;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/6j;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A04:Lcom/facebook/ads/redexgen/X/6j;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A07:Lcom/facebook/ads/redexgen/X/In;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jr;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Jr;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/In;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A03:Lcom/facebook/ads/redexgen/X/Jr;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6r;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/6r;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A03:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A07:Lcom/facebook/ads/redexgen/X/In;

    const/4 v4, 0x1

    new-instance v1, Lcom/facebook/ads/redexgen/X/6E;

    invoke-direct {v1, p1, v4, v0}, Lcom/facebook/ads/redexgen/X/6E;-><init>(Lcom/facebook/ads/redexgen/X/YA;ZLcom/facebook/ads/redexgen/X/In;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A05:Lcom/facebook/ads/redexgen/X/6E;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PE;->A05:Lcom/facebook/ads/redexgen/X/6E;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pw;->A03:Lcom/facebook/ads/redexgen/X/Pw;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ju;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/Ju;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pw;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0g()Z

    move-result v0

    if-nez v0, :cond_57

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A2H(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_57

    return-void

    :cond_57
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget v0, Lcom/facebook/ads/redexgen/X/PE;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A03:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Jr;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A03:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AE;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 6

    new-instance v3, Lcom/facebook/ads/redexgen/X/AE;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/AE;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/RX;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PE;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/PD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PD;-><init>(Lcom/facebook/ads/redexgen/X/PE;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/PE;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PE;->setUpVideo(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/PE;->setUpPlugins(Lcom/facebook/ads/redexgen/X/YA;)V

    return-void
.end method


# virtual methods
.method public final A01()V
    .registers 4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0e(ZI)V

    return-void
.end method

.method public final A02()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A01:Lcom/facebook/ads/redexgen/X/Pa;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pa;->A0A()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A01:Lcom/facebook/ads/redexgen/X/Pa;

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A02:Lcom/facebook/ads/redexgen/X/76;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/76;->A0g()V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A02:Lcom/facebook/ads/redexgen/X/76;

    :cond_13
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/8a;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8Z;->A05(Lcom/facebook/ads/redexgen/X/8a;)Z

    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/If;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/PE;->A02()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A06:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/76;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/RX;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A02:Lcom/facebook/ads/redexgen/X/76;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A06:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pa;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A06:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Pa;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/RX;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A01:Lcom/facebook/ads/redexgen/X/Pa;

    :goto_24
    return-void

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A01:Lcom/facebook/ads/redexgen/X/Pa;

    goto :goto_24
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Pj;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    return-void
.end method

.method public final A06()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->A0k()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/RX;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    return-object v0
.end method

.method public getVolume()F
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A04:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6j;->setImage(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RX;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method

.method public setVolume(F)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A00:Lcom/facebook/ads/redexgen/X/AE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/RX;->setVolume(F)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/PE;->A03:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A09()V

    return-void
.end method
