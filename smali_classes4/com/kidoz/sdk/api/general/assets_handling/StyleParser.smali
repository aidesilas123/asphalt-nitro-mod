###### Class com.kidoz.sdk.api.general.assets_handling.StyleParser (com.kidoz.sdk.api.general.assets_handling.StyleParser)
.class public final Lcom/kidoz/sdk/api/general/assets_handling/StyleParser;
.super Ljava/lang/Object;
.source "StyleParser.java"


# static fields
.field public static final ABOUT_KIDOZ:Ljava/lang/String; = "aboutKidoz"

.field public static final ABOUT_KIDOZ_ANIMATION:Ljava/lang/String; = "aboutKidozAnimation"

.field public static final ANIMATION_OVERLAY:Ljava/lang/String; = "flexiAnimOverlay"

.field public static final ANIM_OVERLAY_RATIO:Ljava/lang/String; = "flexiAnimOverlayRatio"

.field public static final BACKGROUND_IMAGE:Ljava/lang/String; = "bgImage"

.field public static final BACKGROUND_ROOT_COLOR:Ljava/lang/String; = "bgRootColor"

.field public static final BANNER_HTML_URL:Ljava/lang/String; = "html_url"

.field public static final BORDER_COLOR:Ljava/lang/String; = "flexiBorderClr"

.field public static final BORDER_WIDTH:Ljava/lang/String; = "flexiBorderWidth"

.field public static final BTN_CLOSE_BG_URL:Ljava/lang/String; = "panelCloseButtonBgImageURL"

.field public static final BTN_CLOSE_FRG_URL:Ljava/lang/String; = "panelCloseButtonFrgImageURL"

.field public static final BTN_LOCK_CLOSED:Ljava/lang/String; = "btnLockUrl"

.field public static final BTN_LOCK_OPEN:Ljava/lang/String; = "btnUnlockUrl"

.field public static final BTN_OPEN_BG_URL:Ljava/lang/String; = "panelOpenButtonBgImageURL"

.field public static final BTN_OPEN_FRG_URL:Ljava/lang/String; = "panelOpenButtonFrgImageURL"

.field public static final BTN_SCALE_SIZE:Ljava/lang/String; = "btnScaleSize"

.field public static final CHILD_LOCK_DEFAULT_STATE:Ljava/lang/String; = "enableParentalLockByDefault"

.field public static final CIH_BTN_OPEN_HANDLE_OVERLAY_URL:Ljava/lang/String; = "contentItemHandleBtnOpenUrl"

.field public static final CIH_REFRESH_CYCLE_PERIOD_SECONDS:Ljava/lang/String; = "contentItemHandleRefreshPeriodSec"

.field public static final CIH_ROUND_CORNERS:Ljava/lang/String; = "contentItemHandleRoundCornersPx"

.field public static final CIH_SHOW_THUMB_IN_HANDLE:Ljava/lang/String; = "contentItemHandleThumbShow"

.field public static final CIH_THUMB_SIZE:Ljava/lang/String; = "contentItemHandleThumbSize"

.field public static final CLOSE_BTN:Ljava/lang/String; = "flexiCloseBtn"

.field public static final CONTENT_REFRESH_RATE_SECONDS:Ljava/lang/String; = "flexiContentRefreshRateSec"

.field public static final CONTENT_SWAP_SOUND:Ljava/lang/String; = "flexiContentSwapSound"

.field public static final CONTENT_THUMB_RATIO:Ljava/lang/String; = "flexiThumbRatio"

.field public static final CORNER_ROUND_RADIUS:Ljava/lang/String; = "flexiCornerRadius"

.field public static final FEED_BUTTON:Ljava/lang/String; = "feedButton"

.field public static final FEED_BUTTON_SCALE:Ljava/lang/String; = "feedButtonScale"

.field public static final FILL_COLOR:Ljava/lang/String; = "flexiFillClr"

.field public static final FIRST_LAUNCH_OPEN_PANEL_EVEY_X_HOURS:Ljava/lang/String; = "flOpenEveryXhoursTF"

.field public static final FIRST_LAUNCH_OPEN_START_DELAY_SECONDS:Ljava/lang/String; = "flOpenStartDelaySec"

.field public static final FIRST_LAUNCH_STAY_OPEN_PERIOD_SECONDS:Ljava/lang/String; = "flOpenPeriodSec"

.field public static final FLEXI_POP_VIEW_SOUND:Ljava/lang/String; = "flexiPopSound"

.field public static final GLOBAL_STYLE_KEY:Ljava/lang/String; = "globalStyleKey"

.field public static final HTML_MAXIMIZE_BTN:Ljava/lang/String; = "htmlMaximizeBtn"

.field public static final IS_CIRCLE:Ljava/lang/String; = "flexiIsCircle"

.field public static final IS_FLEXI_VIEW_CLOSABLE:Ljava/lang/String; = "flexiIsClosable"

.field public static final IS_FLEXI_VIEW_DRUGGABLE:Ljava/lang/String; = "flexiIsDraggable"

.field public static final IS_SOUND_ENABLED:Ljava/lang/String; = "flexiEnableSound"

.field public static final KIDOZ_LOGO_ICON:Ljava/lang/String; = "kidozIcon"

.field public static final LABEL_TEXT:Ljava/lang/String; = "labelText"

.field public static final LABEL_TEXT_COLOR:Ljava/lang/String; = "labelColor"

.field public static final LAUNCH_INTERSTITIAL_ON_OPEN:Ljava/lang/String; = "lounchInterstitialOnOpen"

.field public static final LEGACY_BTN_CLOSE_URL:Ljava/lang/String; = "btnClosedUrl"

.field public static final LEGACY_BTN_OPEN_URL:Ljava/lang/String; = "btnOpenedUrl"

.field public static final LEGACY_DEFAULT_OPEN_BTN_SPOSORED_URL:Ljava/lang/String; = "btnOpenDefaultSponsoredUrl"

.field public static final LOCK_ACTIVE:Ljava/lang/String; = "parentalLockActive"

.field public static final LOCK_ANIMATION:Ljava/lang/String; = "parentalLockAnimation"

.field public static final LOCK_CLOSE_BUTTON:Ljava/lang/String; = "flexiLockCloseBtn"

.field public static final LOCK_NOT_ACTIVE:Ljava/lang/String; = "parentalLockNotActive"

.field public static final LOCK_OPEN_BUTTON:Ljava/lang/String; = "flexiLockOpenBtn"

.field public static final MAIN_ANIMATION_URL:Ljava/lang/String; = "animUrl"

.field public static final MAIN_ANIMATION_URL_NEW:Ljava/lang/String; = "animUrlNew"

.field public static final NEXT_BTN_ANIMATION_TYPE:Ljava/lang/String; = "nextBtnAnimType"

.field public static final NEXT_BTN_RATIO:Ljava/lang/String; = "nextBtnRatio"

.field public static final NEXT_BTN_URL:Ljava/lang/String; = "nextBtnUrl"

.field public static final NEXT_BUTTON:Ljava/lang/String; = "nextBtn"

.field public static final NEXT_BUTTON_ANIMATION:Ljava/lang/String; = "nextBtnAnimation"

.field public static final NOTICE_ME_ANIMATION_RATE_MILLIS:Ljava/lang/String; = "flexiNoticeMeAnimRateMillis"

.field public static final NOTICE_ME_ANIMATION_TYPE:Ljava/lang/String; = "flexiNoticeMeAnimType"

.field public static final PANEL_BG_COLOR:Ljava/lang/String; = "panelBgClr"

.field public static final PREVIOUS_BUTTON:Ljava/lang/String; = "previousBtn"

.field public static final PREVIOUS_BUTTON_ANIMATION:Ljava/lang/String; = "previousBtnAnimation"

.field public static final PROMOTED_INDICATOR_RATIO:Ljava/lang/String; = "promotedIndicatorRatio"

.field public static final PROMOTED_INDICATOR_SIZE:Ljava/lang/String; = "promotedIndicatorSize"

.field public static final PROMOTED_INDICATOR_URL:Ljava/lang/String; = "promotedIndicator"

.field public static final PROMOTION_ANIMATION:Ljava/lang/String; = "animationUrl"

.field public static final STYLE_ID:Ljava/lang/String; = "style_id"

.field public static final SWAP_CONTENT_REFRESH_RATE_SECONDS:Ljava/lang/String; = "swapContentRefreshRateSec"

.field public static final THUMBNAIL_BG_COLOR:Ljava/lang/String; = "thumbBgColor"

.field public static final X_BUTTON:Ljava/lang/String; = "xBtn"

.field public static final X_BUTTON_ANIMATION:Ljava/lang/String; = "XBtnAnimation"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBannerData(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 6

    const-string v0, "KidozBannerPresenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_38

    :try_start_5
    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "html_url"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1d

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->insertProperties(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1f

    :cond_1d
    move v1, p0

    goto :goto_38

    :catch_1f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to parse banner properties: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    :goto_38
    return v1
.end method

.method public static parseFamilyPanelData(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_96

    :try_start_3
    sget-object v1, Lcom/kidoz/sdk/api/PanelView;->TAG:Ljava/lang/String;

    sget-object v2, Lcom/kidoz/sdk/api/ui_views/panel_view/FamilyPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "btnOpenDefaultSponsoredUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "btnOpenedUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "btnClosedUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "contentItemHandleBtnOpenUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "panelOpenButtonBgImageURL"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "panelOpenButtonFrgImageURL"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "panelCloseButtonBgImageURL"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "panelCloseButtonFrgImageURL"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "animUrlNew"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "animUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "promotedIndicator"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    const-string v3, "nextBtnUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "htmlMaximizeBtn"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    :cond_57
    if-eqz v3, :cond_5f

    const-string v3, "btnUnlockUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    :cond_5f
    if-eqz v3, :cond_67

    const-string v3, "btnLockUrl"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    :cond_67
    if-eqz v3, :cond_6f

    const-string v3, "kidozIcon"

    invoke-static {p0, v2, p1, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    :cond_6f
    const/4 p0, 0x1

    if-ne v3, p0, :cond_79

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->insertProperties(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_79} :catch_7b

    :cond_79
    move v0, v3

    goto :goto_96

    :catch_7b
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/PanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to parse kidoz FamilyPanelView properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    :goto_96
    return v0
.end method

.method public static parseGlobalStyleData(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 5

    const-string v0, "enableParentalLockByDefault"

    const/4 v1, 0x1

    if-eqz p1, :cond_38

    :try_start_5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-static {p0}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->isLockStateChanged(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_38

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_19

    const/4 v2, 0x1

    :cond_19
    invoke-static {p0, v2}, Lcom/kidoz/sdk/api/dialogs/ParentalLockDialog;->saveParentalLockState(Landroid/content/Context;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_38

    :catch_1d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error when trying to parse global style properties"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    :goto_38
    return v1
.end method

.method public static parseInterstitialData(Landroid/content/Context;Lorg/json/JSONObject;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_31

    :try_start_3
    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v0

    sget-object v1, Lcom/kidoz/sdk/api/ads/fullscreen/KidozInterstitial;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->loadProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-static {}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->getInstance()Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Lcom/kidoz/sdk/api/general/database/ServerConfigStorage;->insertProperties(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_14} :catch_16

    const/4 p0, 0x1

    goto :goto_31

    :catch_16
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when trying to parse kidoz interstitial view properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    :goto_31
    return p0
.end method
