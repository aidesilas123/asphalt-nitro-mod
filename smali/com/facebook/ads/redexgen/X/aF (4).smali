###### Class com.facebook.ads.redexgen.X.C1553aF (com.facebook.ads.redexgen.X.aF)
.class public final Lcom/facebook/ads/redexgen/X/aF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableAdCacheListener"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/1Z;

.field public final A01:Lcom/facebook/ads/redexgen/X/1n;

.field public final A02:Lcom/facebook/ads/redexgen/X/6Q;

.field public final A03:Lcom/facebook/ads/redexgen/X/YA;

.field public final A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/1Z;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aF;->A03:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/aF;->A02:Lcom/facebook/ads/redexgen/X/6Q;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/1Z;

    iput-boolean p5, p0, Lcom/facebook/ads/redexgen/X/aF;->A04:Z

    return-void
.end method

.method private final A00()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A03:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/1Z;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/1n;

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/aF;->A04:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/1o;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/1o;-><init>(Lcom/facebook/ads/redexgen/X/1Z;Lcom/facebook/ads/redexgen/X/1n;Z)V

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/1Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Z;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private A01(Z)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/1Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Z;->A09()Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1a;->A05:Lcom/facebook/ads/redexgen/X/1a;

    if-ne v1, v0, :cond_e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/aF;->A00()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/1Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Z;->A0E()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_22

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aF;->A02:Lcom/facebook/ads/redexgen/X/6Q;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/1Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Z;->A0E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_22
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Lcom/facebook/ads/redexgen/X/1Z;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1Z;->A0H(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/1n;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1n;->ACN()V

    return-void
.end method


# virtual methods
.method public final AAn()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A04:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aF;->A01:Lcom/facebook/ads/redexgen/X/1n;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1n;->ACM(Lcom/facebook/ads/AdError;)V

    :goto_b
    return-void

    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aF;->A01(Z)V

    goto :goto_b
.end method

.method public final AAw()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/aF;->A01(Z)V

    return-void
.end method
