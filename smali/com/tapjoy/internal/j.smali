###### Class com.tapjoy.internal.j (com.tapjoy.internal.j)
.class public final Lcom/tapjoy/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/tapjoy/TJOfferwallDiscoverView;


# direct methods
.method public constructor <init>(Lcom/tapjoy/TJOfferwallDiscoverView;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/internal/j;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    if-eqz v0, :cond_25

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    invoke-virtual {v0}, Lcom/tapjoy/TJWebView;->destroy()V

    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    iget-object v0, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/k;

    invoke-virtual {v0}, Lcom/tapjoy/k;->c()V

    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->a:Lcom/tapjoy/TJWebView;

    iput-object v1, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->b:Lcom/tapjoy/k;

    :cond_25
    iget-object v0, p0, Lcom/tapjoy/internal/j;->a:Lcom/tapjoy/TJOfferwallDiscoverView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->e:Z

    iput-boolean v1, v0, Lcom/tapjoy/TJOfferwallDiscoverView;->f:Z

    return-void
.end method
