###### Class com.facebook.ads.redexgen.X.C1488Ya (com.facebook.ads.redexgen.X.Ya)
.class public final Lcom/facebook/ads/redexgen/X/Ya;
.super Lcom/facebook/ads/redexgen/X/Jv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YX;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YX;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/JG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YX;Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/YX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/YX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YX;->A00(Lcom/facebook/ads/redexgen/X/YX;)Lcom/facebook/ads/redexgen/X/5a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5a;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A00:Lcom/facebook/ads/redexgen/X/YX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YX;->A00(Lcom/facebook/ads/redexgen/X/YX;)Lcom/facebook/ads/redexgen/X/5a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5a;->A00()Lcom/facebook/ads/NativeAdsManager$Listener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ya;->A01:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kf;->A00(Lcom/facebook/ads/redexgen/X/JG;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdsManager$Listener;->onAdError(Lcom/facebook/ads/AdError;)V

    :cond_1f
    return-void
.end method
