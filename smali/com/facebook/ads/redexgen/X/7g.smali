###### Class com.facebook.ads.redexgen.X.C7G (com.facebook.ads.redexgen.X.7G)
.class public final Lcom/facebook/ads/redexgen/X/7G;
.super Lcom/facebook/ads/redexgen/X/TD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PN;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:Lcom/facebook/ads/redexgen/X/PN;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TD;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAY()V
    .registers 1

    return-void
.end method

.method public final ABM(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:Lcom/facebook/ads/redexgen/X/PN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PN;->A07(Lcom/facebook/ads/redexgen/X/PN;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:Lcom/facebook/ads/redexgen/X/PN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PN;->A05(Lcom/facebook/ads/redexgen/X/PN;)Lcom/facebook/ads/redexgen/X/PL;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PL;->ABu()V

    return-void
.end method

.method public final ABZ()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:Lcom/facebook/ads/redexgen/X/PN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PN;->A07(Lcom/facebook/ads/redexgen/X/PN;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:Lcom/facebook/ads/redexgen/X/PN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PN;->A08(Lcom/facebook/ads/redexgen/X/PN;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:Lcom/facebook/ads/redexgen/X/PN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PN;->A05(Lcom/facebook/ads/redexgen/X/PN;)Lcom/facebook/ads/redexgen/X/PL;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PL;->ABZ()V

    :cond_23
    return-void
.end method

.method public final ADZ()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7G;->A00:Lcom/facebook/ads/redexgen/X/PN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PN;->A05(Lcom/facebook/ads/redexgen/X/PN;)Lcom/facebook/ads/redexgen/X/PL;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PL;->ADZ()V

    return-void
.end method
