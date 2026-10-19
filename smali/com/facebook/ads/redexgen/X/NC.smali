###### Class com.facebook.ads.redexgen.X.NC (com.facebook.ads.redexgen.X.NC)
.class public final Lcom/facebook/ads/redexgen/X/NC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ND;->onMainAssetLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ND;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ND;Lcom/facebook/ads/redexgen/X/NE;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NC;->A00:Lcom/facebook/ads/redexgen/X/ND;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NC;->A01:Lcom/facebook/ads/redexgen/X/NE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v1, p0

    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/NC;->A01:Lcom/facebook/ads/redexgen/X/NE;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NE;->AAY()V

    return-void
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
