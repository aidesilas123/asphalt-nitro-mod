###### Class com.kidoz.sdk.api.dialogs.WebDialog.VideoEnabledWebView.VideoJavaScriptInterface (com.kidoz.sdk.api.dialogs.WebDialog.VideoEnabledWebView$VideoJavaScriptInterface)
.class Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;
.super Ljava/lang/Object;
.source "VideoEnabledWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;->this$0:Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyVideoEnd()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface$1;-><init>(Lcom/kidoz/sdk/api/dialogs/WebDialog/VideoEnabledWebView$VideoJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
