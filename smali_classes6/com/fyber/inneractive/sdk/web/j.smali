###### Class com.fyber.inneractive.sdk.web.j (com.fyber.inneractive.sdk.web.j)
.class public Lcom/fyber/inneractive/sdk/web/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/fyber/inneractive/sdk/web/i;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/web/i;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/web/j;->b:Lcom/fyber/inneractive/sdk/web/i;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/web/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/j;->b:Lcom/fyber/inneractive/sdk/web/i;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/d;->b:Lcom/fyber/inneractive/sdk/web/g;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/web/j;->b:Lcom/fyber/inneractive/sdk/web/i;

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/web/j;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fyber/inneractive/sdk/web/i;->a(Landroid/content/Context;Z)V

    :cond_15
    const/4 v0, 0x0

    return v0
.end method
