###### Class com.facebook.ads.redexgen.X.C1108Jb (com.facebook.ads.redexgen.X.Jb)
.class public final Lcom/facebook/ads/redexgen/X/Jb;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pk;


# static fields
.field public static A08:[B

.field public static final A09:I


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ObjectAnimator;

.field public A02:Landroid/widget/ProgressBar;

.field public A03:Lcom/facebook/ads/redexgen/X/8a;

.field public A04:Lcom/facebook/ads/redexgen/X/8a;

.field public A05:Lcom/facebook/ads/redexgen/X/8a;

.field public A06:Lcom/facebook/ads/redexgen/X/8a;

.field public A07:Lcom/facebook/ads/redexgen/X/RX;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jb;->A03()V

    const/high16 v1, 0x40c00000    # 6.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Jb;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 5

    sget v2, Lcom/facebook/ads/redexgen/X/Jb;->A09:I

    const v1, -0xbf7f01

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Lcom/facebook/ads/redexgen/X/YA;III)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;III)V
    .registers 9

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/4y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4y;-><init>(Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A06:Lcom/facebook/ads/redexgen/X/8a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4q;-><init>(Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:Lcom/facebook/ads/redexgen/X/8a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4e;-><init>(Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A05:Lcom/facebook/ads/redexgen/X/8a;

    new-instance v0, Lcom/facebook/ads/redexgen/X/4b;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/4b;-><init>(Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A03:Lcom/facebook/ads/redexgen/X/8a;

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/Jb;->A06(II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Jb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jb;)Lcom/facebook/ads/redexgen/X/RX;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/RX;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jb;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x14

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    :cond_14
    return-void
.end method

.method public static A03()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jb;->A08:[B

    return-void

    :array_a
    .array-data 1
        -0x47t
        -0x45t
        -0x48t
        -0x50t
        -0x45t
        -0x52t
        -0x44t
        -0x44t
    .end array-data
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Jb;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jb;->A02()V

    return-void
.end method


# virtual methods
.method public final A05()V
    .registers 6

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jb;->A02()V

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:I

    return-void
.end method

.method public final A06(II)V
    .registers 10

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const v0, 0x800003

    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v1, v4, v0, v3, v2}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v6, v0, v4

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x1020000

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v0, 0x102000f

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v0, 0x102000d

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final A07(Z)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/RX;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jb;->A02()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getCurrentPositionInMillis()I

    move-result v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getDuration()I

    move-result v6

    if-lez v6, :cond_20

    mul-int/lit16 v3, v7, 0x2710

    div-int/2addr v3, v6

    :goto_19
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:I

    if-ge v5, v3, :cond_1f

    if-gt v6, v7, :cond_22

    :cond_1f
    return-void

    :cond_20
    const/4 v3, 0x0

    goto :goto_19

    :cond_22
    if-eqz p1, :cond_56

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A01(III)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v5, v3}, [I

    move-result-object v0

    invoke-static {v4, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    const/16 v0, 0xfa

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A01:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_53
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Jb;->A00:I

    return-void

    :cond_56
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_53
.end method

.method public final A9D(Lcom/facebook/ads/redexgen/X/RX;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8a;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A05:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A06:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A03:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8Z;->A03([Lcom/facebook/ads/redexgen/X/8a;)V

    return-void
.end method

.method public final AG0(Lcom/facebook/ads/redexgen/X/RX;)V
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/RX;->getEventBus()Lcom/facebook/ads/redexgen/X/8Z;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/8a;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A06:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A05:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A04:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A03:Lcom/facebook/ads/redexgen/X/8a;

    aput-object v0, v2, v1

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/8Z;->A04([Lcom/facebook/ads/redexgen/X/8a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jb;->A07:Lcom/facebook/ads/redexgen/X/RX;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C07534b (com.facebook.ads.redexgen.X.4b)
.class public final Lcom/facebook/ads/redexgen/X/4b;
.super Lcom/facebook/ads/redexgen/X/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jb;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/75;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A00(Lcom/facebook/ads/redexgen/X/Jb;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A05()V

    :cond_d
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4b;->A00(Lcom/facebook/ads/redexgen/X/75;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C07564e (com.facebook.ads.redexgen.X.4e)
.class public final Lcom/facebook/ads/redexgen/X/4e;
.super Lcom/facebook/ads/redexgen/X/MI;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jb;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MI;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/MJ;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A00(Lcom/facebook/ads/redexgen/X/Jb;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A07(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/MJ;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4e;->A00(Lcom/facebook/ads/redexgen/X/MJ;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C07674q (com.facebook.ads.redexgen.X.4q)
.class public final Lcom/facebook/ads/redexgen/X/4q;
.super Lcom/facebook/ads/redexgen/X/MU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jb;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MU;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/72;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4q;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A04(Lcom/facebook/ads/redexgen/X/Jb;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/72;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4q;->A00(Lcom/facebook/ads/redexgen/X/72;)V

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.C07754y (com.facebook.ads.redexgen.X.4y)
.class public final Lcom/facebook/ads/redexgen/X/4y;
.super Lcom/facebook/ads/redexgen/X/M9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jb;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5cZwmFwOCvoIimHKJKs7c8Wrfuwl5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "kR6Rx7ETQGlVhfpD5OxJcFg21Ovz094i"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "oaAjYFLN3m9AYmyloxlSIBJp6ETHW3KF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dCQrNLE74jmKWuOaqJJ4Sbhiwuuv5ad"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "onBgfHhqxGhqxLvpU2wfKqg3mDsyExyq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SCROov7hAW1gh5oss5LLtyUv0yBfa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SAPoZVZ00ZwZwmL71sxtzrpJli3hIy2X"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TEn6j3AzMnGgqeyMrOghHZKrMbMLSMuC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4y;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jb;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/71;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jb;->A00(Lcom/facebook/ads/redexgen/X/Jb;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4y;->A00:Lcom/facebook/ads/redexgen/X/Jb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/4y;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2a

    sget-object v2, Lcom/facebook/ads/redexgen/X/4y;->A01:[Ljava/lang/String;

    const-string v1, "B8raFzKF2tgWcMrESvgtBPeFcOBIsHL1"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A07(Z)V

    :cond_29
    return-void

    :cond_2a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/71;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4y;->A00(Lcom/facebook/ads/redexgen/X/71;)V

    return-void
.end method
