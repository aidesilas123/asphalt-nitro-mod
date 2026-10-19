###### Class com.kidoz.sdk.api.players.video_player.VideoJavaScriptInterface (com.kidoz.sdk.api.players.video_player.VideoJavaScriptInterface)
.class public Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;
.super Ljava/lang/Object;
.source "VideoJavaScriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;,
        Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$IOnReadyLocalListener;
    }
.end annotation


# instance fields
.field private mJavascriptListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;

.field private mReadyLocalListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$IOnReadyLocalListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;->mJavascriptListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;->onError(I)V

    return-void
.end method

.method public onQualityChanged(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public onStateChange(I)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;->mJavascriptListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;

    invoke-interface {v0, p1}, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;->onStateChange(I)V

    return-void
.end method

.method public onVideoReady()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;->mJavascriptListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;

    invoke-interface {v0}, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;->onVideoReady()V

    return-void
.end method

.method public onViewReady()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;->mReadyLocalListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$IOnReadyLocalListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$IOnReadyLocalListener;->onLocalReady()V

    :cond_7
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;->mJavascriptListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;->onViewReady()V

    :cond_e
    return-void
.end method

.method public setJavascriptListener(Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;->mJavascriptListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;

    return-void
.end method

.method public setLocalReadyListener(Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$IOnReadyLocalListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;->mReadyLocalListener:Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$IOnReadyLocalListener;

    return-void
.end method

.method public setVideoCurrentTime(I)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public setVideoTotalTime(I)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

###### Class com.kidoz.sdk.api.players.video_player.VideoJavaScriptInterface.IOnReadyLocalListener (com.kidoz.sdk.api.players.video_player.VideoJavaScriptInterface$IOnReadyLocalListener)
.class public interface abstract Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$IOnReadyLocalListener;
.super Ljava/lang/Object;
.source "VideoJavaScriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOnReadyLocalListener"
.end annotation


# virtual methods
.method public abstract onLocalReady()V
.end method

###### Class com.kidoz.sdk.api.players.video_player.VideoJavaScriptInterface.JavascriptListener (com.kidoz.sdk.api.players.video_player.VideoJavaScriptInterface$JavascriptListener)
.class public interface abstract Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface$JavascriptListener;
.super Ljava/lang/Object;
.source "VideoJavaScriptInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/players/video_player/VideoJavaScriptInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JavascriptListener"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onStateChange(I)V
.end method

.method public abstract onVideoReady()V
.end method

.method public abstract onViewReady()V
.end method
