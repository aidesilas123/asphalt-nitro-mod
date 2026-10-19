###### Class com.facebook.ads.internal.view.FullScreenAdToolbar (com.facebook.ads.internal.view.FullScreenAdToolbar)
.class public final Lcom/facebook/ads/internal/view/FullScreenAdToolbar;
.super Lcom/facebook/ads/redexgen/X/Ls;
.source ""


# static fields
.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Lq;

.field public A01:Lcom/facebook/ads/redexgen/X/Lr;

.field public A02:Lcom/facebook/ads/redexgen/X/Lr;

.field public A03:Z

.field public final A04:Landroid/widget/RelativeLayout;

.field public final A05:Lcom/facebook/ads/redexgen/X/In;

.field public final A06:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A07:Lcom/facebook/ads/redexgen/X/ME;

.field public final A08:Lcom/facebook/ads/redexgen/X/PB;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "elaUgpg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "xyZ5KhWZZkOCw26QnbyRE89VYXYHkT38"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "j2Hg99bd5kkvFLrtwtqoGvtE7T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FtK0h2Y990QReQxCoMrwn7Y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "09p430KvfvIa5D7TMMbG57be7BWhVuc0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4K9Dg6G4rdQDm1ubILJxRl9GbBVTjarc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MQsbPX4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ODYsITK"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03()V

    const/high16 v1, 0x41200000    # 10.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    sput v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0B:I

    const/high16 v1, 0x41800000    # 16.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    sput v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    sub-int v0, v1, v2

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    mul-int/lit8 v0, v1, 0x2

    sub-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/In;I)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ls;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Lr;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Z

    iput-object p2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/In;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setGravity(I)V

    new-instance v3, Lcom/facebook/ads/redexgen/X/ME;

    invoke-direct {v3, p1, p4}, Lcom/facebook/ads/redexgen/X/ME;-><init>(Lcom/facebook/ads/redexgen/X/YA;I)V

    iput-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ME;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ly;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ly;-><init>(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ME;->setActionClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0D:I

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0E:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v3, v2}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    new-instance v2, Lcom/facebook/ads/redexgen/X/PB;

    invoke-direct {v2, p1}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    const/16 v0, 0x3ee

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/LV;->A0G(ILandroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/PB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/In;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/In;I)V

    invoke-virtual {p0, p1, p5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09(Lcom/facebook/ads/redexgen/X/YA;I)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/Lr;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Lr;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/internal/view/FullScreenAdToolbar;)Lcom/facebook/ads/redexgen/X/ME;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A09:[B

    return-void

    :array_a
    .array-data 1
        -0x1at
        0xft
        0x12t
        0x16t
        0x8t
        -0x3dt
        -0x1ct
        0x7t
        0x38t
        0x4bt
        0x56t
        0x55t
        0x58t
        0x5at
        0x6t
        0x27t
        0x4at
        0x4dt
        0x48t
        0x48t
        0x45t
        0x3bt
        0x3at
        0x4bt
    .end array-data
.end method


# virtual methods
.method public final A04()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Lr;

    if-eqz v0, :cond_6

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Lr;

    :cond_6
    return-void
.end method

.method public final A05()V
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->getToolbarListener()Lcom/facebook/ads/redexgen/X/Lr;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A01:Lcom/facebook/ads/redexgen/X/Lr;

    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/1M;Z)V
    .registers 8

    iget-boolean v4, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Z

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/1M;->A04(Z)I

    move-result v2

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/1M;->A0A(Z)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/PB;->A02(II)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Lq;->setIconColors(I)V

    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    const/16 v2, 0x8

    const/16 v1, 0x9

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Lq;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1, v4, p2}, Lcom/facebook/ads/redexgen/X/ME;->A02(Lcom/facebook/ads/redexgen/X/1M;ZZ)V

    const/4 v3, 0x0

    if-eqz v4, :cond_49

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/high16 v0, -0x6a000000

    filled-new-array {v0, v3}, [I

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/LV;->A0S(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    const/high16 v1, -0x1000000

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0C:I

    invoke-static {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0Q(Landroid/view/View;III)V

    :goto_48
    return-void

    :cond_49
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    goto :goto_48
.end method

.method public final A07()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ME;->A03()Z

    move-result v0

    return v0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1X;Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/ME;->setInitialUnskippableSeconds(I)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    if-eqz v2, :cond_10

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/In;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lq;->setAdDetails(Lcom/facebook/ads/redexgen/X/1X;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/In;Lcom/facebook/ads/redexgen/X/Lt;)V

    :cond_10
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/YA;I)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lq;->removeAllViews()V

    :cond_c
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lq;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lq;-><init>(Lcom/facebook/ads/redexgen/X/YA;I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F:I

    div-int/lit8 v3, v0, 0x2

    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v1, v0, 0x2

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getDetailsContainer()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getToolbarActionMode()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ME;->getToolbarActionMode()I

    move-result v0

    return v0
.end method

.method public getToolbarHeight()I
    .registers 2

    sget v0, Lcom/facebook/ads/redexgen/X/Ls;->A00:I

    return v0
.end method

.method public getToolbarListener()Lcom/facebook/ads/redexgen/X/Lr;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Lr;

    return-object v0
.end method

.method public setAdReportingVisible(Z)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lq;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setCTAClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PB;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCTAClickListener(Lcom/facebook/ads/redexgen/X/T3;)V
    .registers 6

    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    const/16 v2, 0x11

    const/4 v1, 0x7

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Nt;->A03(Lcom/facebook/ads/redexgen/X/T3;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/PB;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFullscreen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A03:Z

    return-void
.end method

.method public setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/1X;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PB;->setPageDetails(Lcom/facebook/ads/redexgen/X/1X;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PB;->A01()V

    goto :goto_7
.end method

.method public setPageDetails(Lcom/facebook/ads/redexgen/X/1X;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1d;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/ME;->setInitialUnskippableSeconds(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PB;->setPageDetails(Lcom/facebook/ads/redexgen/X/1X;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A00:Lcom/facebook/ads/redexgen/X/Lq;

    if-eqz v2, :cond_15

    iget-object v1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A05:Lcom/facebook/ads/redexgen/X/In;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A06:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lq;->setAdDetails(Lcom/facebook/ads/redexgen/X/1X;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/In;Lcom/facebook/ads/redexgen/X/Lt;)V

    :cond_15
    return-void
.end method

.method public setPageDetailsVisible(Z)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    if-eqz p1, :cond_2e

    iget-object v4, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A04:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A08:Lcom/facebook/ads/redexgen/X/PB;

    sget-object v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:[Ljava/lang/String;

    const-string v1, "uYrc95dj4mq6YR3RipRhNZPjST"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "ufyXPPKrvmASdIniU0CJIS9"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2e
    iget-object v3, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4f

    sget-object v2, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0A:[Ljava/lang/String;

    const-string v1, "RoBBOPMqmB8G6B1FErbRchWOJuWn3pgq"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ME;->setToolbarMessageEnabled(Z)V

    return-void

    :cond_4f
    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/ME;->setToolbarMessageEnabled(Z)V

    return-void
.end method

.method public setProgress(F)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setProgress(F)V

    return-void
.end method

.method public setProgressClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setProgressImage(Lcom/facebook/ads/redexgen/X/Ld;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setProgressImage(Lcom/facebook/ads/redexgen/X/Ld;)V

    return-void
.end method

.method public setProgressImmediate(F)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setProgressImmediate(F)V

    return-void
.end method

.method public setProgressSpinnerInvisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setProgressSpinnerInvisible(Z)V

    return-void
.end method

.method public setToolbarActionMessage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setToolbarMessage(Ljava/lang/String;)V

    return-void
.end method

.method public setToolbarActionMode(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A07:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ME;->setToolbarActionMode(I)V

    return-void
.end method

.method public setToolbarListener(Lcom/facebook/ads/redexgen/X/Lr;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A02:Lcom/facebook/ads/redexgen/X/Lr;

    return-void
.end method
