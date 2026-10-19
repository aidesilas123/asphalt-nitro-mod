###### Class com.facebook.ads.redexgen.X.K3 (com.facebook.ads.redexgen.X.K3)
.class public final Lcom/facebook/ads/redexgen/X/K3;
.super Lcom/facebook/ads/redexgen/X/K8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6w;->A00(Lcom/facebook/ads/redexgen/X/L2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6w;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6w;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/K3;->A00:Lcom/facebook/ads/redexgen/X/6w;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K3;->A00:Lcom/facebook/ads/redexgen/X/6w;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6w;->A00:Lcom/facebook/ads/redexgen/X/K2;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/K2;->A04(Lcom/facebook/ads/redexgen/X/K2;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/K3;->A00:Lcom/facebook/ads/redexgen/X/6w;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6w;->A00:Lcom/facebook/ads/redexgen/X/K2;

    const/4 v0, 0x1

    invoke-static {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/K2;->A05(Lcom/facebook/ads/redexgen/X/K2;ZZ)V

    return-void
.end method
