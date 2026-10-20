###### Class com.ironsource.adqualitysdk.sdk.i.jn.a (com.ironsource.adqualitysdk.sdk.i.jn$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/jn$a;
.super Landroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private synthetic d:Lcom/ironsource/adqualitysdk/sdk/i/jn;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/jn;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->a:Z

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    return-void
.end method

.method private a()Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->c(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Lcom/ironsource/adqualitysdk/sdk/i/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jo;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/jl;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jl;->ﻐ()Landroid/webkit/WebViewClient;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jl;->ﻐ()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method private b(Landroid/webkit/WebView;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->a:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->b:Z

    if-nez v0, :cond_1e

    :cond_8
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    :cond_1e
    const/4 p1, 0x1

    return p1

    :cond_20
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->a(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->a(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->a(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﻐ(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2b
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﻐ(Landroid/webkit/WebView;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->a:Z

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->b:Z

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    if-nez p2, :cond_15

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    :cond_15
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-virtual {p2, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﻐ(Landroid/webkit/WebView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->a:Z

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    if-nez v0, :cond_12

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->c:Ljava/lang/String;

    :cond_12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->b(Landroid/webkit/WebView;)Z

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->ﾇ(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->a:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->a()Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/jn$a;->d:Lcom/ironsource/adqualitysdk/sdk/i/jn;

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/jn;->b(Lcom/ironsource/adqualitysdk/sdk/i/jn;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/kb;->ﾒ(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_33
    return v0
.end method
