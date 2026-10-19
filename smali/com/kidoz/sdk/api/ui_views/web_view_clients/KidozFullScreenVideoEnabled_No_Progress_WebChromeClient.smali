###### Class com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabled_No_Progress_WebChromeClient (com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabled_No_Progress_WebChromeClient)
.class public Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;
.super Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;
.source "KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.java"


# instance fields
.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/webkit/WebView;Landroid/view/Window;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/webkit/WebView;)V

    iput-object p5, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->mWindow:Landroid/view/Window;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->setOnToggleFullscreen()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method private setOnToggleFullscreen()V
    .registers 2

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;-><init>(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)V

    invoke-virtual {p0, v0}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->setOnToggledFullscreen(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    return-void
.end method
