###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass5 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$5)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;
.super Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;
.source "IntrstWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->prepareWebViewWithLink(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    goto :goto_23

    :cond_13
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoaded:Z

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/KidozError;)V

    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v0, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-eqz v0, :cond_39

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne v0, v1, :cond_39

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    goto :goto_44

    :cond_39
    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    :goto_44
    return-void
.end method

.method public onAdFailedToStart(ILjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_FAILED_TO_SHOW:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    new-instance v2, Lcom/kidoz/sdk/api/general/KidozError;

    invoke-direct {v2, p1, p2}, Lcom/kidoz/sdk/api/general/KidozError;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$000(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;Lcom/kidoz/sdk/api/general/KidozError;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Z)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_IMPRESSION:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    return-void
.end method

.method public onAdLoaded(Z)V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iput-boolean p1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mBackButtonDisabled:Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoadRequested:Z

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1300(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->READY:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    goto :goto_24

    :cond_1f
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->show()V

    :goto_24
    iget-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v0, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-eqz v0, :cond_3a

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne v0, v1, :cond_3a

    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    goto :goto_45

    :cond_3a
    iget-object p1, p1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    sget-object v0, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->setWidgetType(Ljava/lang/String;)V

    :goto_45
    return-void
.end method

.method public onAdStarted()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    return-void
.end method

.method public onClose()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Z)V

    return-void
.end method

.method public onHtmlFinishedLoading()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$1200(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)V

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onHtmlFinishedLoading()V

    return-void
.end method

.method public onRewarded()V
    .registers 3

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onRewarded()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->REWARDED:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    return-void
.end method

.method public onViewReady()V
    .registers 4

    invoke-super {p0}, Lcom/kidoz/sdk/api/ui_views/html_view/IOnHtmlWebViewInterface;->onViewReady()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)I

    move-result v1

    if-le v0, v1, :cond_47

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$600(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$700(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kidoz/sdk/api/structure/ContentItem;

    iget-object v1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v1, v1, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mContentData:Lcom/kidoz/sdk/api/structure/ContentData;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/structure/ContentData;->getmKeysMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/structure/ContentItem;->getJSONitem()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    iget-object v2, v2, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->webView:Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;

    invoke-virtual {v2, v1, v0}, Lcom/kidoz/sdk/api/ui_views/html_view/HtmlViewWrapper;->loadContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$5;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsInitializationFinished:Z

    return-void
.end method
