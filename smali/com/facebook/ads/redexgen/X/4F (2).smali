###### Class com.facebook.ads.redexgen.X.C4F (com.facebook.ads.redexgen.X.4F)
.class public final Lcom/facebook/ads/redexgen/X/4F;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ZC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnchorInfo"
.end annotation


# static fields
.field public static A05:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/ZC;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4F;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZC;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4F;->A03()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/4F;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/4F;->A05:[B

    return-void

    :array_a
    .array-data 1
        0xdt
        0x1t
        0x4ct
        0x62t
        0x4et
        0x4et
        0x53t
        0x45t
        0x48t
        0x4ft
        0x40t
        0x55t
        0x44t
        0x1ct
        0x6ft
        0x63t
        0x2et
        0xft
        0x22t
        0x3at
        0x2ct
        0x36t
        0x37t
        0x5t
        0x31t
        0x2ct
        0x2et
        0x6t
        0x2dt
        0x27t
        0x7et
        0x5bt
        0x57t
        0x1at
        0x21t
        0x16t
        0x1bt
        0x1et
        0x13t
        0x4at
        0x74t
        0x5bt
        0x56t
        0x5dt
        0x5at
        0x47t
        0x7ct
        0x5bt
        0x53t
        0x5at
        0x4et
        0x58t
        0x65t
        0x5at
        0x46t
        0x5ct
        0x41t
        0x5ct
        0x5at
        0x5bt
        0x8t
    .end array-data
.end method


# virtual methods
.method public final A02()V
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    :goto_c
    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    return-void

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    goto :goto_c
.end method

.method public final A03()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A03:Z

    return-void
.end method

.method public final A04(Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A05()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    :goto_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    return-void

    :cond_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    goto :goto_17
.end method

.method public final A05(Landroid/view/View;)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A05()I

    move-result v2

    if-ltz v2, :cond_e

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/4F;->A04(Landroid/view/View;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4c;->A0p(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    if-lez v3, :cond_68

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr v2, v0

    if-gez v2, :cond_68

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    neg-int v0, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    :cond_68
    :goto_68
    return-void

    :cond_69
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0F(Landroid/view/View;)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A0A()I

    move-result v0

    sub-int v4, v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    if-lez v4, :cond_68

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0D(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A0C(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A04:Lcom/facebook/ads/redexgen/X/ZC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ZC;->A04:Lcom/facebook/ads/redexgen/X/4M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4M;->A07()I

    move-result v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    if-gez v2, :cond_68

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    neg-int v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    goto :goto_68
.end method

.method public final A06(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4r;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4d;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4d;->A02()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4d;->A00()I

    move-result v0

    if-ltz v0, :cond_1e

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4d;->A00()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/4r;->A03()I

    move-result v0

    if-ge v1, v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x28

    const/16 v1, 0x15

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4F;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4F;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0x11

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4F;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A02:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1f

    const/16 v1, 0x9

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4F;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4F;->A03:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
