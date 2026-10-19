###### Class com.fyber.inneractive.sdk.web.c0.b (com.fyber.inneractive.sdk.web.c0$b)
.class public Lcom/fyber/inneractive/sdk/web/c0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/web/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/web/c0;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/c0;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/c0;->m()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/c0;->G:Lcom/fyber/inneractive/sdk/web/i$g;

    new-instance v2, Lcom/fyber/inneractive/sdk/mraid/x;

    invoke-direct {v2, v1}, Lcom/fyber/inneractive/sdk/mraid/x;-><init>(Lcom/fyber/inneractive/sdk/web/i$g;)V

    invoke-virtual {v0, v2}, Lcom/fyber/inneractive/sdk/web/c0;->a(Lcom/fyber/inneractive/sdk/mraid/u;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/c0;->G:Lcom/fyber/inneractive/sdk/web/i$g;

    sget-object v2, Lcom/fyber/inneractive/sdk/web/i$g;->INTERSTITIAL:Lcom/fyber/inneractive/sdk/web/i$g;

    if-ne v1, v2, :cond_2f

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_2f

    const-string v1, "if (window.showInterstitial) { showInterstitial(); }"

    invoke-virtual {v0, v1}, Lcom/fyber/inneractive/sdk/web/g;->a(Ljava/lang/String;)V

    :cond_2f
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/c0;->k()V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/c0;->l()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/c0;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/web/c0;->q()V

    sget-object v0, Lcom/fyber/inneractive/sdk/util/m;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/c0$b;->a:Lcom/fyber/inneractive/sdk/web/c0;

    iget-object v1, v1, Lcom/fyber/inneractive/sdk/web/c0;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4e
    const/4 v0, 0x0

    return v0
.end method
