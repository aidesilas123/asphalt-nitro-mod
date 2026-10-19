###### Class com.facebook.ads.redexgen.X.C5R (com.facebook.ads.redexgen.X.5R)
.class public final Lcom/facebook/ads/redexgen/X/5R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/InitApi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V
    .registers 6

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5Q;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/8L;->A0G(Lcom/facebook/ads/redexgen/X/Y9;Lcom/facebook/ads/internal/settings/MultithreadedBundleWrapper;Lcom/facebook/ads/AudienceNetworkAds$InitListener;I)V

    return-void
.end method

.method public final isInitialized()Z
    .registers 2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8L;->A0H()Z

    move-result v0

    return v0
.end method

.method public final onAdLoadInvoked(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5Q;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8L;->A08(Lcom/facebook/ads/redexgen/X/Y9;)V

    return-void
.end method

.method public final onContentProviderCreated(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5Q;->A07(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8L;->A09(Lcom/facebook/ads/redexgen/X/Y9;)V

    return-void
.end method
