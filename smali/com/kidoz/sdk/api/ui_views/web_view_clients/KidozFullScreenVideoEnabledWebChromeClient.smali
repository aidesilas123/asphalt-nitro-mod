###### Class com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabledWebChromeClient (com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabledWebChromeClient)
.class public Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient;
.super Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;
.source "KidozFullScreenVideoEnabledWebChromeClient.java"


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/webkit/WebView;)V

    new-instance p1, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient$1;

    invoke-direct {p1, p0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient$1;-><init>(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient;)V

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient;->setOnToggledFullscreen(Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;)V

    return-void
.end method

###### Class com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabledWebChromeClient.AnonymousClass1 (com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabledWebChromeClient$1)
.class Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient$1;
.super Ljava/lang/Object;
.source "KidozFullScreenVideoEnabledWebChromeClient.java"

# interfaces
.implements Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient;-><init>(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabledWebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toggledFullscreen(Z)V
    .registers 2

    return-void
.end method
