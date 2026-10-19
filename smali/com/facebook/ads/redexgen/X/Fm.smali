###### Class com.facebook.ads.redexgen.X.C1017Fm (com.facebook.ads.redexgen.X.Fm)
.class public final Lcom/facebook/ads/redexgen/X/Fm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Fp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegionComposition"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:I

.field public final A09:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Fn;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Z


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Fn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Fm;->A03:I

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Fm;->A0A:Z

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Fm;->A08:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Fm;->A02:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Fm;->A04:I

    iput p6, p0, Lcom/facebook/ads/redexgen/X/Fm;->A01:I

    iput p7, p0, Lcom/facebook/ads/redexgen/X/Fm;->A00:I

    iput p8, p0, Lcom/facebook/ads/redexgen/X/Fm;->A07:I

    iput p9, p0, Lcom/facebook/ads/redexgen/X/Fm;->A06:I

    iput p10, p0, Lcom/facebook/ads/redexgen/X/Fm;->A05:I

    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Fm;->A09:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/Fm;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v4, p1, Lcom/facebook/ads/redexgen/X/Fm;->A09:Landroid/util/SparseArray;

    const/4 v3, 0x0

    :goto_6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_1e

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Fm;->A09:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Fn;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1e
    return-void
.end method
