###### Class com.facebook.ads.redexgen.X.S3 (com.facebook.ads.redexgen.X.S3)
.class public final Lcom/facebook/ads/redexgen/X/S3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/S0;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/S0;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:Lcom/facebook/ads/redexgen/X/S0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVolume()F
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:Lcom/facebook/ads/redexgen/X/S0;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/S0;->A00:F

    return v0
.end method

.method public final setVolume(F)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:Lcom/facebook/ads/redexgen/X/S0;

    iput p1, v0, Lcom/facebook/ads/redexgen/X/S0;->A00:F

    return-void
.end method
