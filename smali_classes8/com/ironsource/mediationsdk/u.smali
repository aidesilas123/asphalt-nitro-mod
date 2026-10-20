###### Class com.json.mediationsdk.u (com.ironsource.mediationsdk.u)
.class public Lcom/ironsource/mediationsdk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAPSDataInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterConsentInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/AdapterDebugInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterMetaDataInterface;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterSettingsInterface;
.implements Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;
.implements Lcom/ironsource/z1;
.implements Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
.implements Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# instance fields
.field private final a:Lcom/ironsource/mediationsdk/AbstractAdapter;

.field private b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/k8;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/k8;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p1

    const-string v2, "adUnit"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_27

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getRewardedVideoBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_27
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_32

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_32
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_3d

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getBannerBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3d
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_48

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getNativeAdBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_48
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad unit not supported - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .registers 6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/k8;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/k8;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p1

    const-string v2, "adUnit"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_26

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->collectRewardedVideoBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    goto :goto_5a

    :cond_26
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_30

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->collectInterstitialBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    goto :goto_5a

    :cond_30
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_3a

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->collectBannerBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    goto :goto_5a

    :cond_3a
    sget-object v2, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p1, v2, :cond_44

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v0, v1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->collectNativeAdBiddingData(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    goto :goto_5a

    :cond_44
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad unit not supported - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_5a
    return-void
.end method

.method b()V
    .registers 3

    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBannerLoadWhileShowSupportedState(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getBannerLoadWhileShowSupportState(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object p1

    return-object p1
.end method

.method public getLoadWhileShowSupportedState(Lcom/ironsource/mediationsdk/model/NetworkSettings;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getLoadWhileShowSupportState(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/LoadWhileShowSupportState;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .registers 9

    iput-object p3, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p2

    const-string p3, "userId"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p3

    const-string v0, "adUnit"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/u;->b()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/k8;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const-string v2, ""

    if-ne p3, v1, :cond_32

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v2, p2, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initRewardedVideoWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V

    goto/16 :goto_9f

    :cond_32
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    const/4 v3, 0x1

    const-string v4, "instanceType"

    if-ne p3, v1, :cond_51

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_4b

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v2, p2, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto :goto_9f

    :cond_4b
    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v2, p2, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initInterstitialForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V

    goto :goto_9f

    :cond_51
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p3, v1, :cond_6d

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_67

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_67

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v2, p2, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    goto :goto_9f

    :cond_67
    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v2, p2, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initBannerForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V

    goto :goto_9f

    :cond_6d
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->NATIVE_AD:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    if-ne p3, v1, :cond_89

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_83

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_83

    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v2, p2, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initNativeAds(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V

    goto :goto_9f

    :cond_83
    iget-object p1, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {p1, v2, p2, v0, p0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->initNativeAdForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdSmashListener;)V

    goto :goto_9f

    :cond_89
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad unit not supported - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :goto_9f
    return-void
.end method

.method public isUsingActivityBeforeImpression(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->isUsingActivityBeforeImpression(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)Z

    move-result p1

    return p1
.end method

.method public onBannerAdClicked()V
    .registers 1

    return-void
.end method

.method public onBannerAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    return-void
.end method

.method public onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 3

    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .registers 1

    return-void
.end method

.method public onBannerAdScreenPresented()V
    .registers 1

    return-void
.end method

.method public onBannerAdShown()V
    .registers 1

    return-void
.end method

.method public onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method public onBannerInitSuccess()V
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_c
    return-void
.end method

.method public onInterstitialAdClicked()V
    .registers 1

    return-void
.end method

.method public onInterstitialAdClosed()V
    .registers 1

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    return-void
.end method

.method public onInterstitialAdOpened()V
    .registers 1

    return-void
.end method

.method public onInterstitialAdReady()V
    .registers 1

    return-void
.end method

.method public onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    return-void
.end method

.method public onInterstitialAdShowSucceeded()V
    .registers 1

    return-void
.end method

.method public onInterstitialAdVisible()V
    .registers 1

    return-void
.end method

.method public onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_c
    return-void
.end method

.method public onNativeAdClicked()V
    .registers 1

    return-void
.end method

.method public onNativeAdInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method public onNativeAdInitSuccess()V
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_c
    return-void
.end method

.method public onNativeAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    return-void
.end method

.method public onNativeAdLoaded(Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;)V
    .registers 3

    return-void
.end method

.method public onNativeAdShown()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAdClicked()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAdRewarded()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    return-void
.end method

.method public onRewardedVideoAdStarted()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAdVisible()V
    .registers 1

    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method public onRewardedVideoInitSuccess()V
    .registers 2

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->b:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_c
    return-void
.end method

.method public onRewardedVideoLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2

    return-void
.end method

.method public onRewardedVideoLoadSuccess()V
    .registers 1

    return-void
.end method

.method public setAPSData(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    instance-of v1, v0, Lcom/ironsource/mediationsdk/SetAPSInterface;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/ironsource/mediationsdk/SetAPSInterface;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/mediationsdk/SetAPSInterface;->setAPSData(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;Lorg/json/JSONObject;)V

    :cond_b
    return-void
.end method

.method public setAdapterDebug(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAdapterDebug(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setConsent(Z)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/mediationsdk/u;->a:Lcom/ironsource/mediationsdk/AbstractAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMetaData(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
