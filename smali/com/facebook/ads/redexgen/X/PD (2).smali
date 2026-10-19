###### Class com.facebook.ads.redexgen.X.PD (com.facebook.ads.redexgen.X.PD)
.class public final Lcom/facebook/ads/redexgen/X/PD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/PE;->setUpVideo(Lcom/facebook/ads/redexgen/X/YA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PE;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PD;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v1, p0

    :try_start_8
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/PD;->A00:Lcom/facebook/ads/redexgen/X/PE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PE;->A00(Lcom/facebook/ads/redexgen/X/PE;)Lcom/facebook/ads/redexgen/X/6E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6E;->performClick()Z

    return-void
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
