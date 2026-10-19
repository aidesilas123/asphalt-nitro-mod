###### Class com.facebook.ads.redexgen.X.JR (com.facebook.ads.redexgen.X.JR)
.class public final Lcom/facebook/ads/redexgen/X/JR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/9i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/QJ;->A0G(Lcom/facebook/ads/redexgen/X/QG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/QG;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/QJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QJ;Lcom/facebook/ads/redexgen/X/QG;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JR;->A01:Lcom/facebook/ads/redexgen/X/QJ;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:Lcom/facebook/ads/redexgen/X/QG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABx(Z)V
    .registers 2

    return-void
.end method

.method public final ACO(Lcom/facebook/ads/redexgen/X/9f;)V
    .registers 2

    return-void
.end method

.method public final ACQ(Lcom/facebook/ads/redexgen/X/9K;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:Lcom/facebook/ads/redexgen/X/QG;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/QJ;->A01(Lcom/facebook/ads/redexgen/X/9K;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/QG;->ACR(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final ACS(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JR;->A00:Lcom/facebook/ads/redexgen/X/QG;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/QG;->ACS(ZI)V

    return-void
.end method

.method public final ACU(I)V
    .registers 2

    return-void
.end method

.method public final ACt()V
    .registers 1

    return-void
.end method

.method public final AD9(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;I)V
    .registers 4

    return-void
.end method

.method public final ADC(Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/GP;)V
    .registers 3

    return-void
.end method
