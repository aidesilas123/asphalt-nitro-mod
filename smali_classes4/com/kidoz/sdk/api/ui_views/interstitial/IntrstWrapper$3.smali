###### Class com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper.AnonymousClass3 (com.kidoz.sdk.api.ui_views.interstitial.IntrstWrapper$3)
.class Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;
.super Ljava/lang/Object;
.source "IntrstWrapper.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$InnerHelperInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose()V
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsShowRequested:Z

    iput-boolean v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mIsLoaded:Z

    iget-object v1, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mAdRequestType:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-eqz v1, :cond_1d

    sget-object v2, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;->REWARDED_VIDEO:Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial$AD_TYPE;

    if-ne v1, v2, :cond_1d

    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL_REWARDED:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->resetStorage(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V

    goto :goto_2a

    :cond_1d
    iget-object v0, v0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/kidoz/sdk/api/general/enums/WidgetType;->WIDGET_TYPE_INTERSTITIAL:Lcom/kidoz/sdk/api/general/enums/WidgetType;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/enums/WidgetType;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/StorageLife;->WIDGET:Lcom/kidoz/sdk/api/general/utils/StorageLife;

    invoke-static {v0, v1, v2}, Lcom/kidoz/sdk/api/general/utils/SdkCookieManager;->resetStorage(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/general/utils/StorageLife;)V

    :goto_2a
    return-void
.end method

.method public onAdOpen()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    invoke-static {v0}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$400(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper$3;->this$0:Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;

    sget-object v1, Lcom/kidoz/sdk/api/general/EventMessage$MessageType;->ON_AD_SHOWN:Lcom/kidoz/sdk/api/general/EventMessage$MessageType;

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;->access$500(Lcom/kidoz/sdk/api/ui_views/interstitial/IntrstWrapper;Lcom/kidoz/sdk/api/general/EventMessage$MessageType;)V

    :cond_f
    return-void
.end method
