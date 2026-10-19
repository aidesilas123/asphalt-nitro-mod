###### Class com.kidoz.sdk.api.general.utils.PropertiesObj (com.kidoz.sdk.api.general.utils.PropertiesObj)
.class public Lcom/kidoz/sdk/api/general/utils/PropertiesObj;
.super Ljava/lang/Object;
.source "PropertiesObj.java"


# static fields
.field private static final BANNER_VIEW_STYLE:Ljava/lang/String; = "bannerStyle"

.field public static final BASE_DOUBLE_CLICK_LINK_KEY:Ljava/lang/String; = "baseDoubleClickLink"

.field public static final BASE_HTML_LINK_KEY:Ljava/lang/String; = "baseHTMLLink"

.field public static final BASE_MRAID_LINK_KEY:Ljava/lang/String; = "baseMraidLink"

.field public static final BASE_VAST_LINK_KEY:Ljava/lang/String; = "baseVastLink"

.field private static final ENABLE_CHROME_DEBUG_DEFAULT:Z = false

.field private static final ENABLE_CHROME_DEBUG_KEY:Ljava/lang/String; = "enableChromeDebug"

.field private static final FEED_API_DOMAIN:Ljava/lang/String; = "feedApiDomain"

.field private static final FEED_VIEW_STYLE:Ljava/lang/String; = "feedStyle"

.field private static final FLEXI_VIEW_STYLE:Ljava/lang/String; = "flexiStyle"

.field private static final GLOBAL_STYLE:Ljava/lang/String; = "globalStyle"

.field private static final HTML_LOADER_DEFAULT_URL_KEY:Ljava/lang/String; = "htmlLoaderDefaultURL"

.field private static final INTERSTITIAL_DEFAULT_URL_KEY:Ljava/lang/String; = "interstitialHTMLURL"

.field private static final INTERSTITIAL_VIEW_STYLE:Ljava/lang/String; = "interstitialStyle"

.field private static final MAX_THROTTLE_TIME:Ljava/lang/String; = "maxThrottleTime"

.field private static final MAX_THROTTLE_TIME_DEFAULT:I = 0x1e

.field private static final PANEL_VIEW_STYLE:Ljava/lang/String; = "panelStyle"

.field private static final SDK_STYLE_VERSION_KEY:Ljava/lang/String; = "style"

.field private static final TIME_TO_WAIT_FOR_INSTALL_EVENT_MINUTES:Ljava/lang/String; = "timeToWaitForInstallEvent"

.field private static final WATERFALL_DOMAIN:Ljava/lang/String; = "waterfallApiDomain"


# instance fields
.field mProperties:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    return-void
.end method

.method private getGlobalPropertiesObject()Lorg/json/JSONObject;
    .registers 5

    const-string v0, "globalStyleParams"

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const-string v2, "globalStyle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    :try_start_15
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_24} :catch_25

    move-object v3, v0

    :catch_25
    :cond_25
    return-object v3
.end method


# virtual methods
.method public getBannerViewStyle()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "bannerStyle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getData()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFeedViewStyle()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "feedStyle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getFlexiViewStyle()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "flexiStyle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getGPSFeedApiDomain()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "feedApiDomain"

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_20
    :goto_20
    return-object v1
.end method

.method public getGPSMaxTimeToWaitForInstall()I
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const v1, 0x5265c00

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "timeToWaitForInstallEvent"

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_20
    :goto_20
    return v1
.end method

.method public getGlobalPropertiesStyle()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "globalStyle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getHtmlLoaderDefaultLink()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const-string v1, ""

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "htmlLoaderDefaultURL"

    if-eqz v0, :cond_19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_19
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1f
    :goto_1f
    return-object v1
.end method

.method public getInterstitialDefaultLinkForType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-string v2, "KidozInterstitial"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return-object v1
.end method

.method public getInterstitialHtmlLink()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const-string v1, ""

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "interstitialHTMLURL"

    if-eqz v0, :cond_19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_19
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1f
    :goto_1f
    return-object v1
.end method

.method public getInterstitialViewStyle()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "interstitialStyle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getMaxThrottleTime()I
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/16 v1, 0x1e

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v2, "maxThrottleTime"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :cond_12
    return v1
.end method

.method public getPanelViewStyle()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const-string v2, "panelStyle"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public getProperties()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSdkStyleVersion()I
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const-string v2, "style_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_22

    :cond_18
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const-string v2, "style"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, -0x1

    :goto_22
    return v0
.end method

.method public getShouldEnableChromeDebug()Z
    .registers 4

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v2, "enableChromeDebug"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_12
    return v1
.end method

.method public getWaterfallDomain()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->getGlobalPropertiesObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "waterfallApiDomain"

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_20

    :cond_1a
    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/PropertiesObj;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_20
    :goto_20
    return-object v1
.end method
