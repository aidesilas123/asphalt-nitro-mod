###### Class com.fyber.inneractive.sdk.activities.f (com.fyber.inneractive.sdk.activities.f)
.class public Lcom/fyber/inneractive/sdk/activities/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/activities/f;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/activities/f;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/activities/f;->a:Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/activities/InneractiveInternalBrowserActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goForward()V

    :cond_11
    return-void
.end method
