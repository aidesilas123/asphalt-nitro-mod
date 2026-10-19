###### Class com.tapjoy.TJEventOptimizer (com.tapjoy.TJEventOptimizer)
.class public Lcom/tapjoy/TJEventOptimizer;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field public static a:Lcom/tapjoy/TJEventOptimizer;

.field public static b:Ljava/util/concurrent/CountDownLatch;


# instance fields
.field public final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tapjoy/TJEventOptimizer;->c:Landroid/content/Context;

    new-instance p1, Lcom/tapjoy/k;

    new-instance v0, Lcom/tapjoy/internal/u8;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/u8;-><init>(Lcom/tapjoy/TJEventOptimizer;)V

    invoke-direct {p1, v0}, Lcom/tapjoy/k;-><init>(Lcom/tapjoy/t;)V

    :try_start_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance p1, Lcom/tapjoy/u;

    invoke-direct {p1}, Lcom/tapjoy/u;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/tapjoy/internal/g9;

    invoke-direct {p1}, Lcom/tapjoy/internal/g9;-><init>()V

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events/proxy?"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4a} :catch_4b

    goto :goto_55

    :catch_4b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TJEventOptimizer"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TJEventOptimizer;
    .registers 1

    sget-object v0, Lcom/tapjoy/TJEventOptimizer;->a:Lcom/tapjoy/TJEventOptimizer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    const-string v0, "TJEventOptimizer"

    const-string v1, "Initializing event optimizer"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/tapjoy/TJEventOptimizer;->b:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Lcom/tapjoy/internal/k8;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/k8;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/tapjoy/TJEventOptimizer;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V

    sget-object p0, Lcom/tapjoy/TJEventOptimizer;->a:Lcom/tapjoy/TJEventOptimizer;

    if-eqz p0, :cond_21

    return-void

    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to init TJEventOptimizer"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
