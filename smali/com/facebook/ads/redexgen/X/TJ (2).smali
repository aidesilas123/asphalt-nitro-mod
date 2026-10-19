###### Class com.facebook.ads.redexgen.X.TJ (com.facebook.ads.redexgen.X.TJ)
.class public final Lcom/facebook/ads/redexgen/X/TJ;
.super Lcom/facebook/ads/redexgen/X/NB;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/N7;,
        Lcom/facebook/ads/redexgen/X/N8;,
        Lcom/facebook/ads/redexgen/X/N4;,
        Lcom/facebook/ads/redexgen/X/N6;,
        Lcom/facebook/ads/redexgen/X/N5;
    }
.end annotation


# static fields
.field public static A08:Landroid/webkit/ValueCallback;

.field public static A09:Z

.field public static A0A:Z

.field public static A0B:[B

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/YA;

.field public A05:Lcom/facebook/ads/redexgen/X/N1;

.field public A06:Lcom/facebook/ads/redexgen/X/N5;

.field public A07:Lcom/facebook/ads/redexgen/X/N8;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TJ;->A08()V

    const-class v0, Lcom/facebook/ads/redexgen/X/TJ;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TJ;->A0C:Ljava/lang/String;

    const/4 v0, 0x2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    sput-object v3, Lcom/facebook/ads/redexgen/X/TJ;->A0D:Ljava/util/Set;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TJ;->A09:Z

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TJ;->A0A:Z

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TJ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/N5;)V
    .registers 6

    invoke-direct {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/NB;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/YA;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:J

    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/TJ;->A0A(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/N5;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/N5;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NB;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A02:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A03:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:J

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TJ;->A0A(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/N5;)V

    return-void
.end method

.method public static synthetic A01()Landroid/webkit/ValueCallback;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/TJ;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A03(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .registers 1

    sput-object p0, Lcom/facebook/ads/redexgen/X/TJ;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A04()Lcom/facebook/ads/redexgen/X/N8;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A04:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A06:Lcom/facebook/ads/redexgen/X/N5;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A05:Lcom/facebook/ads/redexgen/X/N1;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/N8;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/N8;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/TJ;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/Set;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/TJ;->A0D:Ljava/util/Set;

    return-object v0
.end method

.method private A07()V
    .registers 6

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_1a

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1a

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_1a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A05:Lcom/facebook/ads/redexgen/X/N1;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N1;->A05(Z)V

    :cond_1a
    return-void
.end method

.method public static A08()V
    .registers 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/TJ;->A0B:[B

    return-void

    :array_a
    .array-data 1
        0x53t
        0x4ft
        0x4ft
        0x4bt
        0x31t
        0x2dt
        0x2dt
        0x29t
        0x2at
    .end array-data
.end method

.method public static A09(IILandroid/content/Intent;)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/redexgen/X/TJ;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1b

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_1c

    sget-object p0, Lcom/facebook/ads/redexgen/X/TJ;->A08:Landroid/webkit/ValueCallback;

    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :goto_18
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TJ;->A08:Landroid/webkit/ValueCallback;

    :cond_1b
    return-void

    :cond_1c
    sget-object p0, Lcom/facebook/ads/redexgen/X/TJ;->A08:Landroid/webkit/ValueCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_18
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/N5;)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A04:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TJ;->A06:Lcom/facebook/ads/redexgen/X/N5;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/TJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A05:Lcom/facebook/ads/redexgen/X/N1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IQ;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TJ;->A09:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IQ;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TJ;->A0A:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TJ;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TJ;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/TJ;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TJ;->A04()Lcom/facebook/ads/redexgen/X/N8;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A07:Lcom/facebook/ads/redexgen/X/N8;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/TJ;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static synthetic A0B()Z
    .registers 1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TJ;->A0A:Z

    return v0
.end method

.method public static synthetic A0C()Z
    .registers 1

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TJ;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A04:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A06:Lcom/facebook/ads/redexgen/X/N5;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A05:Lcom/facebook/ads/redexgen/X/N1;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0E()Landroid/webkit/WebViewClient;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TJ;->A04()Lcom/facebook/ads/redexgen/X/N8;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(J)V
    .registers 8

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_a

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:J

    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TJ;->A07()V

    return-void
.end method

.method public final A0G(J)V
    .registers 8

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_a

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:J

    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TJ;->A07()V

    return-void
.end method

.method public final A0H(J)V
    .registers 8

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TJ;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_a

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A02:J

    :cond_a
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TJ;->A07()V

    return-void
.end method

.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A06:Lcom/facebook/ads/redexgen/X/N5;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/NH;->A03(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/NB;->destroy()V

    return-void
.end method

.method public getDomContentLoadedMs()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TJ;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TJ;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/NB;->onDraw(Landroid/graphics/Canvas;)V

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TJ;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_1b

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TJ;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TJ;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A03:J

    :cond_1b
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/N6;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TJ;->A07:Lcom/facebook/ads/redexgen/X/N8;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/N8;->A06(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public setInterceptRedirectRequest(Lcom/facebook/ads/redexgen/X/N4;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TJ;->A07:Lcom/facebook/ads/redexgen/X/N8;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N8;->A05(Lcom/facebook/ads/redexgen/X/N4;)V

    return-void
.end method
