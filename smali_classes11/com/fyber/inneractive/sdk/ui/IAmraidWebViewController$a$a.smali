###### Class com.fyber.inneractive.sdk.ui.IAmraidWebViewController.a.ViewTreeObserverOnPreDrawListenerC0199a (com.fyber.inneractive.sdk.ui.IAmraidWebViewController$a$a)
.class public Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;->m()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;->o0:Lcom/fyber/inneractive/sdk/web/i$g;

    new-instance v2, Lcom/fyber/inneractive/sdk/mraid/x;

    invoke-direct {v2, v1}, Lcom/fyber/inneractive/sdk/mraid/x;-><init>(Lcom/fyber/inneractive/sdk/web/i$g;)V

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;->o0:Lcom/fyber/inneractive/sdk/web/i$g;

    sget-object v2, Lcom/fyber/inneractive/sdk/web/i$g;->INTERSTITIAL:Lcom/fyber/inneractive/sdk/web/i$g;

    if-ne v1, v2, :cond_37

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_37

    const-string v1, "if (window.showInterstitial) { showInterstitial(); }"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_37
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_44

    const-string v1, "window.mraidbridge.fireReadyEvent();"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_44
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/i;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;->q()V

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a$a;

    invoke-direct {v1, p0}, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a$a;-><init>(Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_65
    const/4 v0, 0x0

    return v0
.end method
