###### Class com.facebook.ads.redexgen.X.IK (com.facebook.ads.redexgen.X.IK)
.class public final Lcom/facebook/ads/redexgen/X/IK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/IL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field public final A00:Landroid/os/Handler;

.field public final A01:Lcom/facebook/ads/redexgen/X/IL;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/IL;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_10

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    :goto_b
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IK;)Lcom/facebook/ads/redexgen/X/IL;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    return-object p0
.end method


# virtual methods
.method public final A01(IIIF)V
    .registers 12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/IH;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/IH;-><init>(Lcom/facebook/ads/redexgen/X/IK;IIIF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_13
    return-void
.end method

.method public final A02(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IG;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/IG;-><init>(Lcom/facebook/ads/redexgen/X/IK;IJ)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final A03(Landroid/view/Surface;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/II;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/II;-><init>(Lcom/facebook/ads/redexgen/X/IK;Landroid/view/Surface;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final A04(Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IF;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/IF;-><init>(Lcom/facebook/ads/redexgen/X/IK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Au;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/IJ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/IJ;-><init>(Lcom/facebook/ads/redexgen/X/IK;Lcom/facebook/ads/redexgen/X/Au;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Au;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ID;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ID;-><init>(Lcom/facebook/ads/redexgen/X/IK;Lcom/facebook/ads/redexgen/X/Au;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public final A07(Ljava/lang/String;JJ)V
    .registers 14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A01:Lcom/facebook/ads/redexgen/X/IL;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IK;->A00:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/ads/redexgen/X/IE;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/IE;-><init>(Lcom/facebook/ads/redexgen/X/IK;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method
