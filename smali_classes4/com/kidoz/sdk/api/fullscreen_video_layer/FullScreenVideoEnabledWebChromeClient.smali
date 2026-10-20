###### Class com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebChromeClient (com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebChromeClient)
.class public Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "FullScreenVideoEnabledWebChromeClient.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;
    }
.end annotation


# instance fields
.field private activityNonVideoView:Landroid/view/View;

.field private activityVideoView:Landroid/view/ViewGroup;

.field private isVideoFullscreen:Z

.field private loadingView:Landroid/view/View;

.field private toggledFullscreenCallback:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;

.field private videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private videoViewContainer:Landroid/widget/FrameLayout;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->webView:Landroid/webkit/WebView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->webView:Landroid/webkit/WebView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/webkit/WebView;)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    iput-object p2, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    iput-object p4, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->webView:Landroid/webkit/WebView;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isVideoFullscreen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->onHideCustomView()V

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    invoke-virtual {p0}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onHideCustomView()V
    .registers 4

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".chromium."

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_30
    iput-boolean v1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object v0, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz v0, :cond_3e

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    :cond_3e
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3

    iget-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->loadingView:Landroid/view/View;

    if-eqz p1, :cond_9

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 4

    invoke-virtual {p0, p1, p3}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 7

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_f2

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->isVideoFullscreen:Z

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iget-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityNonVideoView:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->videoViewContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->activityVideoView:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    instance-of p1, v0, Landroid/widget/VideoView;

    if-eqz p1, :cond_3b

    check-cast v0, Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto/16 :goto_eb

    :cond_3b
    iget-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_eb

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result p1

    if-eqz p1, :cond_eb

    instance-of p1, v0, Landroid/view/SurfaceView;

    if-eqz p1, :cond_eb

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "javascript:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "var _ytrp_html5_video_last;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "var _ytrp_html5_video = document.getElementsByTagName(\'video\')[0];"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "if (_ytrp_html5_video != undefined && _ytrp_html5_video != _ytrp_html5_video_last) {"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_ytrp_html5_video_last = _ytrp_html5_video;"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "function _ytrp_html5_video_ended() {"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_VideoEnabledWebView.notifyVideoEnd();"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_ytrp_html5_video.addEventListener(\'ended\', _ytrp_html5_video_ended);"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->webView:Landroid/webkit/WebView;

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_eb
    :goto_eb
    iget-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;

    if-eqz p1, :cond_f2

    invoke-interface {p1, v1}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;->toggledFullscreen(Z)V

    :cond_f2
    return-void
.end method

.method public setOnToggledFullscreen(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->toggledFullscreenCallback:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;

    return-void
.end method
