###### Class com.kidoz.sdk.api.players.web_player.WebPlayerView (com.kidoz.sdk.api.players.web_player.WebPlayerView)
.class public Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;
.super Landroid/widget/RelativeLayout;
.source "WebPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;
    }
.end annotation


# static fields
.field private static final LOADING_PROGRESS_DEFAULT_RATIO:F = 0.35f


# instance fields
.field private mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

.field private mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

.field private mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

.field private mNonVideoLayout:Landroid/widget/RelativeLayout;

.field private mRemoveViewRequestListener:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;

.field private mUseNativeTopBar:Z

.field private mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/content/Context;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;Z)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mUseNativeTopBar:Z

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mWindow:Landroid/view/Window;

    iput-object p3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    iput-boolean p4, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mUseNativeTopBar:Z

    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->initiateView()V

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;)Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mRemoveViewRequestListener:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;

    return-object p0
.end method

.method private initLayout()V
    .registers 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mNonVideoLayout:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz v2, :cond_19

    sget-object v3, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->ROVIO:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v2, v3, :cond_1d

    :cond_19
    iget-boolean v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mUseNativeTopBar:Z

    if-eqz v2, :cond_36

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d7bbbbc

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_36
    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mNonVideoLayout:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mNonVideoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    invoke-direct {v1, v2, v3}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;)V

    iput-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setId(I)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mNonVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    new-instance v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$1;-><init>(Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->setOnLounchExternalAppFromRedirect(Lcom/kidoz/sdk/api/players/web_player/KidozWebView$IOnLounchExternalAppFromRedirectListener;)V

    return-void
.end method

.method private initiateView()V
    .registers 4

    invoke-direct {p0}, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->initLayout()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mWebPlayerType:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-eqz v0, :cond_4d

    sget-object v1, Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;->EXTERNAL_LINK:Lcom/kidoz/sdk/api/players/web_player/WebPlayerType;

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setAlpha(F)V

    new-instance v0, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float v0, v0, v1

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->setCircleWidthRelativeToSize(F)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->startLoadingAnimation()V

    :cond_4d
    return-void
.end method


# virtual methods
.method public getKidozWebView()Lcom/kidoz/sdk/api/players/web_player/KidozWebView;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    return-object v0
.end method

.method public loadWebUrlWithAllowedDomains([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->loadWebUrl([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    :cond_a
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3eb33333    # 0.35f

    mul-float p1, p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->setCircleWidthRelativeToSize(F)V

    :cond_26
    return-void
.end method

.method public releaseAndcloseView()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->stopAndReleaseWebView()V

    :cond_7
    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mLoadingProgressView:Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ui_views/loading_progress_view/LoadingProgressView;->stopLoadingAnimation()V

    :cond_e
    return-void
.end method

.method public setContentItem(Lcom/kidoz/sdk/api/structure/ContentItem;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mContentItem:Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v0, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/players/web_player/KidozWebView;->setContentItem(Lcom/kidoz/sdk/api/structure/ContentItem;)V

    :cond_9
    return-void
.end method

.method public setFullScreenWebChromeClient(Landroid/view/ViewGroup;)V
    .registers 9

    new-instance v6, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;

    iget-object v1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mNonVideoLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    iget-object v5, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mWindow:Landroid/view/Window;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/ui_views/web_view_clients/KidozFullScreenVideoEnabled_No_Progress_WebChromeClient;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/webkit/WebView;Landroid/view/Window;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mKidozWebView:Lcom/kidoz/sdk/api/players/web_player/KidozWebView;

    invoke-virtual {p1, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setOnRemoveViewRequestListener(Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/players/web_player/WebPlayerView;->mRemoveViewRequestListener:Lcom/kidoz/sdk/api/players/web_player/WebPlayerView$IOnRemoveViewRequestListener;

    return-void
.end method
