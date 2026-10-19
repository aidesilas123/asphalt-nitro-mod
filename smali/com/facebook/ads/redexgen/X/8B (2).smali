###### Class com.facebook.ads.redexgen.X.C8B (com.facebook.ads.redexgen.X.8B)
.class public final Lcom/facebook/ads/redexgen/X/8B;
.super Lcom/facebook/ads/redexgen/X/SH;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Nv;

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Lcom/facebook/ads/redexgen/X/5H;

.field public final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MM;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Lt;)V
    .registers 10

    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/SH;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/MM;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Lt;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/8B;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A02:Lcom/facebook/ads/redexgen/X/5H;

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8B;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v2, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YA;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A05(II)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Lcom/facebook/ads/redexgen/X/8B;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A06(Lcom/facebook/ads/redexgen/X/NK;)Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A07(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8B;)I
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->getCloseButtonStyle()I

    move-result p0

    return p0
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/Nv;
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A01:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    :cond_d
    new-instance v1, Lcom/facebook/ads/redexgen/X/Ny;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SH;->A04:Lcom/facebook/ads/redexgen/X/If;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/SH;->A08:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/aS;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/8B;->A01:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/SH;->A0A:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/SH;->A06:Lcom/facebook/ads/redexgen/X/LN;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Ny;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ls;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ny;->A0E(I)Lcom/facebook/ads/redexgen/X/Ny;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ny;->A0H(Lcom/facebook/ads/redexgen/X/Ls;)Lcom/facebook/ads/redexgen/X/Ny;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ny;->A0D(I)Lcom/facebook/ads/redexgen/X/Ny;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ny;->A0K()Lcom/facebook/ads/redexgen/X/Nz;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nw;->A00(Lcom/facebook/ads/redexgen/X/Nz;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8B;)Lcom/facebook/ads/redexgen/X/Nv;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8B;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8B;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8B;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A05()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SH;->A0P()V

    :cond_13
    return-void
.end method

.method private A06(I)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8B;->A01(I)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->getColors()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A10()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Sy;

    if-eqz v0, :cond_56

    :cond_21
    const/4 v0, 0x1

    :goto_22
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1M;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A10()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setFullscreen(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/aS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T3;->A08(Lcom/facebook/ads/redexgen/X/aS;)Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Ls;->A06(Lcom/facebook/ads/redexgen/X/1M;Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    sget-object v0, Lcom/facebook/ads/redexgen/X/SH;->A0E:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v3, v0}, Lcom/facebook/ads/redexgen/X/8B;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A10()Z

    move-result v0

    if-eqz v0, :cond_54

    :goto_50
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/SH;->setUpFullscreenMode(Z)V

    return-void

    :cond_54
    const/4 v2, 0x0

    goto :goto_50

    :cond_56
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/8B;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A05()V

    return-void
.end method

.method private getCloseButtonStyle()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->getCloseButtonStyle()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public final A0Q()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0L(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0L(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->A05()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()I

    move-result v1

    if-lez v1, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0y()V

    :cond_2a
    new-instance v0, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/8B;)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SH;->A0R(ILcom/facebook/ads/redexgen/X/K8;)V

    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8B;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    goto :goto_32
.end method

.method public final A0S(Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A02:Lcom/facebook/ads/redexgen/X/5H;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/5J;->A0N(Lcom/facebook/ads/redexgen/X/5H;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8B;->A06(I)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ls;->getToolbarHeight()I

    move-result v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/8B;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0H(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A07:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0H(Landroid/view/View;)V

    return-void
.end method

.method public final A0T()Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Nv;->A11(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    :cond_c
    return v1
.end method

.method public final ACJ(Z)V
    .registers 2

    return-void
.end method

.method public final ACj(Z)V
    .registers 2

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SH;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A01:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0N()Z

    move-result v0

    if-nez v0, :cond_14

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8B;->A06(I)V

    :cond_14
    return-void
.end method

.method public final onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SH;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A01:Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ir;->AFz(Landroid/view/View;)V

    :cond_13
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8B;->A00:Lcom/facebook/ads/redexgen/X/Nv;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0u()V

    :cond_1a
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/SH;->onDestroy()V

    return-void
.end method
