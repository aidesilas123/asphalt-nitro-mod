###### Class com.tapjoy.TJOfferwallDiscoverView (com.tapjoy.TJOfferwallDiscoverView)
.class public Lcom/tapjoy/TJOfferwallDiscoverView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public a:Lcom/tapjoy/TJWebView;

.field public b:Lcom/tapjoy/k;

.field public c:Lcom/tapjoy/TJOfferwallDiscoverListener;

.field public d:Lcom/tapjoy/h0;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Z

    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    new-instance v0, Lcom/tapjoy/internal/j;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/j;-><init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_16

    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz p1, :cond_15

    new-instance p2, Lcom/tapjoy/r;

    const-string v0, "Tapjoy SDK is not connected"

    invoke-direct {p2, v1, v0}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/r;)V

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    if-eqz p1, :cond_65

    if-eqz p2, :cond_24

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    :goto_25
    if-nez v2, :cond_53

    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->a()V

    new-instance v0, Lcom/tapjoy/TJWebView;

    invoke-direct {v0, p1}, Lcom/tapjoy/TJWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    new-instance p1, Lcom/tapjoy/internal/f9;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/f9;-><init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/tapjoy/k;

    new-instance v0, Lcom/tapjoy/x0;

    invoke-direct {v0, p0}, Lcom/tapjoy/x0;-><init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V

    invoke-direct {p1, v0}, Lcom/tapjoy/k;-><init>(Lcom/tapjoy/t;)V

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/k;

    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {p0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance p1, Lcom/tapjoy/w0;

    invoke-direct {p1, p0, p2}, Lcom/tapjoy/w0;-><init>(Lcom/tapjoy/TJOfferwallDiscoverView;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_76

    :cond_53
    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz p1, :cond_61

    new-instance p2, Lcom/tapjoy/r;

    const-string v1, "Placement is null"

    invoke-direct {p2, v0, v1}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/r;)V

    :cond_61
    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->a()V

    goto :goto_76

    :cond_65
    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    if-eqz p1, :cond_73

    new-instance p2, Lcom/tapjoy/r;

    const-string v1, "Context is null"

    invoke-direct {p2, v0, v1}, Lcom/tapjoy/r;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/tapjoy/TJOfferwallDiscoverListener;->requestFailure(Lcom/tapjoy/r;)V

    :cond_73
    invoke-virtual {p0}, Lcom/tapjoy/TJOfferwallDiscoverView;->a()V

    :goto_76
    return-void
.end method

.method public final dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->dispatchVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_d

    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/k;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/tapjoy/k;->u()V

    goto :goto_14

    :cond_d
    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/k;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/tapjoy/k;->t()V

    :cond_14
    :goto_14
    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/k;

    if-eqz p1, :cond_15

    iget-boolean p2, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Z

    if-nez p2, :cond_15

    iget-boolean p2, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    if-eqz p2, :cond_15

    invoke-virtual {p1}, Lcom/tapjoy/k;->e()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Z

    :cond_15
    return-void
.end method

.method public setListener(Lcom/tapjoy/TJOfferwallDiscoverListener;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJOfferwallDiscoverView;->c:Lcom/tapjoy/TJOfferwallDiscoverListener;

    return-void
.end method
