###### Class com.kidoz.sdk.api.ads.banner.KidozBannerPresenter.AnonymousClass3 (com.kidoz.sdk.api.ads.banner.KidozBannerPresenter$3)
.class Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;
.super Ljava/lang/Object;
.source "KidozBannerPresenter.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper$BannerShowJSInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->show(Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

.field final synthetic val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    iput-object p2, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KidozBannerPresenter | Show onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->ERROR:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->notifyBannerShowFailed(ILjava/lang/String;)V

    return-void
.end method

.method public onImpression()V
    .registers 2

    const-string v0, "KidozBannerPresenter | Show onImpression()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->notifyBannerImpression()V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    const-string v0, "KidozBannerPresenter | Show onSuccess()"

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printDebugLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->val$htmlViewWrapper:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_BANNER:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->requestWidgetOpen(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    sget-object v1, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;->SHOWING:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$202(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$VIEW_STATE;

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->access$300(Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;)Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->nativeShow()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter$3;->this$0:Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerPresenter;->notifyBannerShown()V

    return-void
.end method
