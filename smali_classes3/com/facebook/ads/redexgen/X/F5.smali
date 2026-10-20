###### Class com.facebook.ads.redexgen.X.F5 (com.facebook.ads.redexgen.X.F5)
.class public final Lcom/facebook/ads/redexgen/X/F5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/F7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdGroup"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:[I

.field public final A02:[J

.field public final A03:[Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x0

    new-array v3, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v1, v0, [J

    const/4 v0, -0x1

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/F5;-><init>(I[I[Landroid/net/Uri;[J)V

    return-void
.end method

.method public constructor <init>(I[I[Landroid/net/Uri;[J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v1, p2

    array-length v0, p3

    if-ne v1, v0, :cond_14

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/F5;->A01:[I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/F5;->A03:[Landroid/net/Uri;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/F5;->A02:[J

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public final A00()I
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/F5;->A01(I)I

    move-result v0

    return v0
.end method

.method public final A01(I)I
    .registers 5

    add-int/lit8 v2, p1, 0x1

    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/F5;->A01:[I

    array-length v0, v1

    if-ge v2, v0, :cond_e

    aget v1, v1, v2

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    if-ne v1, v0, :cond_f

    :cond_e
    return v2

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public final A02()Z
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_d

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/F5;->A00()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/F5;->A00:I

    if-ge v1, v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
