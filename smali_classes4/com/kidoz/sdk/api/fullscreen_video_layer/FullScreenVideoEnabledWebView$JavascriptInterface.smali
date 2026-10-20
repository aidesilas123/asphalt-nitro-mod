###### Class com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebView.JavascriptInterface (com.kidoz.sdk.api.fullscreen_video_layer.FullScreenVideoEnabledWebView$JavascriptInterface)
.class public Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;
.super Ljava/lang/Object;
.source "FullScreenVideoEnabledWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JavascriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;


# direct methods
.method public constructor <init>(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;->this$0:Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView;

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

    new-instance v1, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface$1;-><init>(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebView$JavascriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
