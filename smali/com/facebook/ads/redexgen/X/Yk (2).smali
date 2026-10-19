###### Class com.facebook.ads.redexgen.X.C1498Yk (com.facebook.ads.redexgen.X.Yk)
.class public final Lcom/facebook/ads/redexgen/X/Yk;
.super Lcom/facebook/ads/redexgen/X/K8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Yj;->ABE(Lcom/facebook/ads/redexgen/X/95;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Yj;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/95;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Yj;Lcom/facebook/ads/redexgen/X/95;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yk;->A00:Lcom/facebook/ads/redexgen/X/Yj;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Yk;->A01:Lcom/facebook/ads/redexgen/X/95;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yk;->A01:Lcom/facebook/ads/redexgen/X/95;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yk;->A00:Lcom/facebook/ads/redexgen/X/Yj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Yj;->A02:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A1A()Lcom/facebook/ads/redexgen/X/Qb;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/95;->setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/Qb;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yk;->A00:Lcom/facebook/ads/redexgen/X/Yj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Yj;->A02:Lcom/facebook/ads/redexgen/X/UJ;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/UJ;->A1c(ZZ)V

    return-void
.end method
