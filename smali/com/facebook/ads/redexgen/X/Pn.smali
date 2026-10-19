###### Class com.facebook.ads.redexgen.X.C1271Pn (com.facebook.ads.redexgen.X.Pn)
.class public final Lcom/facebook/ads/redexgen/X/Pn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ph;


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/YA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pn;->A01:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final A8B()D
    .registers 4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pn;->A00:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pn;->A01:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/YA;)Lcom/facebook/ads/redexgen/X/Qc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A00()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
