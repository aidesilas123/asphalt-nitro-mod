###### Class com.facebook.ads.redexgen.X.ViewOnClickListenerC1282Py (com.facebook.ads.redexgen.X.Py)
.class public final Lcom/facebook/ads/redexgen/X/Py;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Jr;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/In;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Jr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jr;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    move-object v2, p0

    :try_start_8
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A01(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/In;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Im;->A0d:Lcom/facebook/ads/redexgen/X/Im;

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A00(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A37()V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A02(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    if-nez v0, :cond_2a

    return-void

    :cond_2a
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A08(Lcom/facebook/ads/redexgen/X/Jr;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A02(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->setVolume(F)V

    :goto_3d
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A09()V

    goto :goto_4e

    :cond_43
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Py;->A00:Lcom/facebook/ads/redexgen/X/Jr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jr;->A02(Lcom/facebook/ads/redexgen/X/Jr;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->setVolume(F)V

    goto :goto_3d

    :goto_4e
    return-void
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
