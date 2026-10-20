###### Class com.fyber.inneractive.sdk.ui.IAmraidWebViewController.a.ViewTreeObserverOnPreDrawListenerC0199a.RunnableC0200a (com.fyber.inneractive.sdk.ui.IAmraidWebViewController$a$a$a)
.class public Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController$a;->a:Lcom/fyber/inneractive/sdk/ui/IAmraidWebViewController;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/web/c0;->H:Lcom/fyber/inneractive/sdk/measurement/a;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/web/c0;->I:Lcom/fyber/inneractive/sdk/measurement/a$a;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/fyber/inneractive/sdk/measurement/a$a;->a()V

    :cond_11
    return-void
.end method
