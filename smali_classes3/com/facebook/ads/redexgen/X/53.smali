###### Class com.facebook.ads.redexgen.X.AnonymousClass53 (com.facebook.ads.redexgen.X.53)
.class public final Lcom/facebook/ads/redexgen/X/53;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/54;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/54;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/54;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/53;->A00:Lcom/facebook/ads/redexgen/X/54;

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
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/53;->A00:Lcom/facebook/ads/redexgen/X/54;

    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/54;->A00(Lcom/facebook/ads/redexgen/X/54;J)J

    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/53;->A00:Lcom/facebook/ads/redexgen/X/54;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/54;->A03(Lcom/facebook/ads/redexgen/X/54;Z)Z

    return-void
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
