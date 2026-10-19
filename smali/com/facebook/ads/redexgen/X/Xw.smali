###### Class com.facebook.ads.redexgen.X.C1484Xw (com.facebook.ads.redexgen.X.Xw)
.class public final Lcom/facebook/ads/redexgen/X/Xw;
.super Lcom/facebook/ads/redexgen/X/K8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8L;->A0B(Lcom/facebook/ads/redexgen/X/Y9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Y9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Y9;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xw;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->getDynamicLoader()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createBidderTokenProviderApi()Lcom/facebook/ads/internal/api/BidderTokenProviderApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xw;->A00:Lcom/facebook/ads/redexgen/X/Y9;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/BidderTokenProviderApi;->getBidderToken(Landroid/content/Context;)Ljava/lang/String;

    :cond_f
    return-void
.end method
