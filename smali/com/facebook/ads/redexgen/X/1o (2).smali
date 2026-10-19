###### Class com.facebook.ads.redexgen.X.C06901o (com.facebook.ads.redexgen.X.1o)
.class public final Lcom/facebook/ads/redexgen/X/1o;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayableWebViewClient"
.end annotation


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/1Z;

.field public final A02:Lcom/facebook/ads/redexgen/X/1n;

.field public final A03:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1Z;Lcom/facebook/ads/redexgen/X/1n;Z)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A00:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1o;->A01:Lcom/facebook/ads/redexgen/X/1Z;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1o;->A02:Lcom/facebook/ads/redexgen/X/1n;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/1o;->A03:Z

    return-void
.end method

.method private A00()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A03:Z

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/1o;->A02:Lcom/facebook/ads/redexgen/X/1n;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1n;->ACM(Lcom/facebook/ads/AdError;)V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1o;->A01()V

    goto :goto_b
.end method

.method private A01()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A02:Lcom/facebook/ads/redexgen/X/1n;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1n;->ACN()V

    :cond_7
    return-void
.end method

.method private A02()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1o;->A00()V

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/1o;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1o;->A02()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A00:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1o;->A01()V

    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/aE;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/aE;-><init>(Lcom/facebook/ads/redexgen/X/1o;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A01:Lcom/facebook/ads/redexgen/X/1Z;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1Z;->A08()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/1o;->A00:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1o;->A02()V

    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 4

    sget v0, Lcom/facebook/ads/redexgen/X/7x;->A2d:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/NB;->A02(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1o;->A00()V

    const/4 v0, 0x1

    return v0
.end method
