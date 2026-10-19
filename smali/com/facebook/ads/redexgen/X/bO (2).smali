###### Class com.facebook.ads.redexgen.X.C1617bO (com.facebook.ads.redexgen.X.bO)
.class public final Lcom/facebook/ads/redexgen/X/bO;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Fa;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/bZ;

.field public final A01:Lcom/facebook/ads/redexgen/X/bX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/bX;Lcom/facebook/ads/redexgen/X/bZ;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bO;->A00:Lcom/facebook/ads/redexgen/X/bZ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bO;->A01:Lcom/facebook/ads/redexgen/X/bX;

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Fa;

    invoke-direct {v0, p2, v1}, Lcom/facebook/ads/redexgen/X/Fa;-><init>(Lcom/facebook/ads/redexgen/X/bX;Lcom/facebook/ads/redexgen/X/bP;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/be;->A02(Lcom/facebook/ads/redexgen/X/bf;)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/Fw;)Lcom/facebook/ads/redexgen/X/bO;
    .registers 10

    new-instance v5, Lcom/facebook/ads/redexgen/X/bZ;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/bZ;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/bX;

    new-instance v3, Lcom/facebook/ads/redexgen/X/G2;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/G2;-><init>()V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/bX;-><init>(Lcom/facebook/ads/redexgen/X/bi;Lcom/facebook/ads/redexgen/X/Rp;Lcom/facebook/ads/redexgen/X/Fw;Lcom/facebook/ads/redexgen/X/bZ;Landroid/os/Handler;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/bO;

    invoke-direct {v0, p0, v1, v5}, Lcom/facebook/ads/redexgen/X/bO;-><init>(Lcom/facebook/ads/redexgen/X/be;Lcom/facebook/ads/redexgen/X/bX;Lcom/facebook/ads/redexgen/X/bZ;)V

    return-object v0
.end method


# virtual methods
.method public final A01(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bO;->A00:Lcom/facebook/ads/redexgen/X/bZ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bZ;->A01(Landroid/view/View;)V

    return-void
.end method

.method public final A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/bg;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bO;->A00:Lcom/facebook/ads/redexgen/X/bZ;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/bZ;->A02(Landroid/view/View;Lcom/facebook/ads/redexgen/X/bg;)V

    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/bd;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bO;->A01:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bX;->A09(Lcom/facebook/ads/redexgen/X/bd;)V

    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/bb;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bO;->A01:Lcom/facebook/ads/redexgen/X/bX;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/bX;->A0A(Lcom/facebook/ads/redexgen/X/bb;)V

    return-void
.end method
