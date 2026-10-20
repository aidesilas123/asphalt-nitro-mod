###### Class com.facebook.ads.redexgen.X.US (com.facebook.ads.redexgen.X.US)
.class public final Lcom/facebook/ads/redexgen/X/US;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/13;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UJ;->A1T(Lcom/facebook/ads/redexgen/X/ah;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UJ;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/US;->A00:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACA(Lcom/facebook/ads/redexgen/X/ah;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A00:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0N(Lcom/facebook/ads/redexgen/X/UJ;)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/US;->A00:Lcom/facebook/ads/redexgen/X/UJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UJ;->A0N(Lcom/facebook/ads/redexgen/X/UJ;)Lcom/facebook/ads/redexgen/X/UI;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Iu;->AAN()V

    :cond_11
    return-void
.end method

.method public final ACB(Lcom/facebook/ads/redexgen/X/ah;)V
    .registers 2

    return-void
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/ah;)V
    .registers 2

    return-void
.end method

.method public final ACE(Lcom/facebook/ads/redexgen/X/ah;Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 3

    return-void
.end method
