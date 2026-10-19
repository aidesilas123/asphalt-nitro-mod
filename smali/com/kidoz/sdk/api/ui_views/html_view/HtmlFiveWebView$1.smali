###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlFiveWebView.AnonymousClass1 (com.kidoz.sdk.api.ui_views.html_view.HtmlFiveWebView$1)
.class Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView$1;
.super Ljava/lang/Object;
.source "HtmlFiveWebView.java"

# interfaces
.implements Lcom/kidoz/sdk/api/general/IViewVisibilityEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;->initWebView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewBecameVisible(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;->access$000(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;)Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView$1;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;->access$000(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlFiveWebView;)Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;->onWebViewBecameVisible(Z)V

    :cond_11
    return-void
.end method
