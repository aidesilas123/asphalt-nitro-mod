###### Class com.facebook.ads.redexgen.X.QK (com.facebook.ads.redexgen.X.QK)
.class public final Lcom/facebook/ads/redexgen/X/QK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/QN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/QN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QN;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v3, p0

    :try_start_8
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QN;->A0D(Lcom/facebook/ads/redexgen/X/QN;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QN;->A00(Lcom/facebook/ads/redexgen/X/QN;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/QK;->A00:Lcom/facebook/ads/redexgen/X/QN;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QN;->A00(Lcom/facebook/ads/redexgen/X/QN;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
