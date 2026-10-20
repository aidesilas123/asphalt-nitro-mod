###### Class com.facebook.ads.redexgen.X.SR (com.facebook.ads.redexgen.X.SR)
.class public final Lcom/facebook/ads/redexgen/X/SR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Km;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SQ;->A0M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SQ;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAv()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/P0;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->ACw(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/P0;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A03(Lcom/facebook/ads/redexgen/X/SQ;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->AB2(I)V

    return-void
.end method

.method public final ACZ(F)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A05(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/P0;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SR;->A00:Lcom/facebook/ads/redexgen/X/SQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A03(Lcom/facebook/ads/redexgen/X/SQ;)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/P0;->ABO(F)V

    return-void
.end method
