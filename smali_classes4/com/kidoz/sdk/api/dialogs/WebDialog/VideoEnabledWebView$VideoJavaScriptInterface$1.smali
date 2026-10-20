###### Class com.kidoz.sdk.api.dialogs.WebDialog.VideoEnabledWebView.VideoJavaScriptInterface.AnonymousClass1 (com.kidoz.sdk.api.dialogs.WebDialog.VideoEnabledWebView$VideoJavaScriptInterface$1)
.class Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "VideoEnabledWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;->notifyVideoEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface$1;->this$1:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface$1;->this$1:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;

    iget-object v0, v0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;->this$0:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->access$000(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;)Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface$1;->this$1:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;

    iget-object v0, v0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;->this$0:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;->access$000(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;)Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozWebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :cond_15
    return-void
.end method
