###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass5 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$5)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "KidozBannerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->getHtmlWebViewInterface()Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onClose()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->CLOSED:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$300(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->hideInternal()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerClose()V

    :cond_24
    return-void
.end method

.method public onErrorReceived()V
    .registers 5

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onErrorReceived()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$400(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;

    move-result-object v0

    new-instance v1, Lcom/kidoz/sdk/api/general/KidozError;

    const/16 v2, 0x28a0

    const-string v3, "Error received"

    invoke-direct {v1, v2, v3}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/ui_views/kidoz_banner/KidozBannerListener;->onBannerError(Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_24
    const-string v0, "KidozBanner | IOnHtmlWebViewInterface | onErrorReceived()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    const-string v0, "KidozBanner | IOnHtmlWebViewInterface | onHtmlFinishedLoading()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    return-void
.end method

.method public onViewReady()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onViewReady()V

    const-string v0, "KidozBanner | IOnHtmlWebViewInterface | onViewReady()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$5;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$502(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Z)Z

    return-void
.end method
