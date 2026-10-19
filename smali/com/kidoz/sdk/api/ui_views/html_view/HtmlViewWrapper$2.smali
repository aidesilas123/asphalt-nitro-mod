###### Class com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper.AnonymousClass2 (com.kidoz.sdk.api.ui_views.html_view.HtmlViewWrapper$2)
.class Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$2;
.super Ljava/lang/Object;
.source "HtmlViewWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/players/web_player/WebViewVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->initWebView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWebViewBecameVisible(Z)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const-string v0, "javascript:focus()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$2;->this$0:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    const-string v0, "javascript:blur()"

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->invokeJSfunction(Ljava/lang/String;)V

    :goto_11
    return-void
.end method
