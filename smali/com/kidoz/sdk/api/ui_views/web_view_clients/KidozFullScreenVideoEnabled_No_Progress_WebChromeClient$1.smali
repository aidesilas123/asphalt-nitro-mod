###### Class com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.AnonymousClass1 (com.kidoz.sdk.api.ui_views.web_view_clients.KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1)
.class Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;
.super Ljava/lang/Object;
.source "KidozFullScreenVideoEnabled_No_Progress_WebChromeClient.java"

# interfaces
.implements Lcom/kidoz/sdk/api/fullscreen_video_layer/FullScreenVideoEnabledWebChromeClient$ToggledFullscreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->setOnToggleFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toggledFullscreen(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_72

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 p1, 0x2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_37

    const/16 p1, 0x13

    if-ge v0, p1, :cond_35

    const/16 p1, 0x706

    goto :goto_37

    :cond_35
    const/16 p1, 0xf06

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_72

    :cond_45
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt p1, v0, :cond_72

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient$1;->this$0:Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;->access$000(Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;)Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_72
    :goto_72
    return-void
.end method
