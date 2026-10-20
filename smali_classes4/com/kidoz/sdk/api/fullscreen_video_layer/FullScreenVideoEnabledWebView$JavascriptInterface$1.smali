###### Class com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebView.JavascriptInterface.AnonymousClass1 (com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebView$JavascriptInterface$1)
.class Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface$1;
.super Ljava/lang/Object;
.source "FullScreenVideoEnabledWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;->notifyVideoEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;->this$0:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;->access$000(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;)Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface$1;->this$1:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;

    iget-object v0, v0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;->this$0:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;

    invoke-static {v0}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;->access$000(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;)Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->onHideCustomView()V

    :cond_15
    return-void
.end method
