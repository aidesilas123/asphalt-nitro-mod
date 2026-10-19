###### Class com.facebook.ads.redexgen.X.AbstractC1567aT (com.facebook.ads.redexgen.X.aT)
.class public abstract Lcom/facebook/ads/redexgen/X/aT;
.super Lcom/facebook/ads/redexgen/X/4Q;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/18;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4Q<",
        "Lcom/facebook/ads/redexgen/X/Tj;",
        ">;"
    }
.end annotation


# static fields
.field public static final A05:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/18;

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UJ;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/YA;

.field public final A04:Lcom/facebook/ads/redexgen/X/Qa;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/aT;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0x;Ljava/util/List;Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/0x;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UJ;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/YA;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4Q;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/aV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aV;-><init>(Lcom/facebook/ads/redexgen/X/aT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aT;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/0x;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A02:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aT;->A01:Ljava/util/List;

    return-void
.end method

.method private A02(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .registers 6

    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iget v2, p0, Lcom/facebook/ads/redexgen/X/aT;->A02:I

    if-nez p1, :cond_d

    mul-int/lit8 v2, v2, 0x2

    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_20

    iget v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A02:I

    mul-int/lit8 v1, v0, 0x2

    :goto_1b
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object v3

    :cond_20
    iget v1, p0, Lcom/facebook/ads/redexgen/X/aT;->A02:I

    goto :goto_1b
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/aT;)Lcom/facebook/ads/redexgen/X/18;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:Lcom/facebook/ads/redexgen/X/18;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/aT;)Lcom/facebook/ads/redexgen/X/Qa;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/aT;->A04:Lcom/facebook/ads/redexgen/X/Qa;

    return-object p0
.end method


# virtual methods
.method public final A0D()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4u;I)V
    .registers 3

    check-cast p1, Lcom/facebook/ads/redexgen/X/Tj;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/aT;->A0H(Lcom/facebook/ads/redexgen/X/Tj;I)V

    return-void
.end method

.method public final A0F(Landroid/widget/ImageView;I)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UJ;->A13()Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aT;->A03:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T8;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/T8;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A04()Lcom/facebook/ads/redexgen/X/T8;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aU;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/aU;-><init>(Lcom/facebook/ads/redexgen/X/aT;ILcom/facebook/ads/redexgen/X/UJ;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A06(Lcom/facebook/ads/redexgen/X/NK;)Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/J4;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T8;->A07(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/18;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:Lcom/facebook/ads/redexgen/X/18;

    return-void
.end method

.method public A0H(Lcom/facebook/ads/redexgen/X/Tj;I)V
    .registers 5

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tj;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/aT;->A02(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
