package com.kidoz.sdk.api.general.assets_handling;

import android.content.Context;
import com.kidoz.sdk.api.PanelView;
import com.kidoz.sdk.api.ads.banner.KidozBannerPresenter;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;
import com.kidoz.sdk.api.dialogs.ParentalLockDialog;
import com.kidoz.sdk.api.general.database.ServerConfigStorage;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.ui_views.panel_view.FamilyPanelView;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class StyleParser {
    public static final String ABOUT_KIDOZ = "aboutKidoz";
    public static final String ABOUT_KIDOZ_ANIMATION = "aboutKidozAnimation";
    public static final String ANIMATION_OVERLAY = "flexiAnimOverlay";
    public static final String ANIM_OVERLAY_RATIO = "flexiAnimOverlayRatio";
    public static final String BACKGROUND_IMAGE = "bgImage";
    public static final String BACKGROUND_ROOT_COLOR = "bgRootColor";
    public static final String BANNER_HTML_URL = "html_url";
    public static final String BORDER_COLOR = "flexiBorderClr";
    public static final String BORDER_WIDTH = "flexiBorderWidth";
    public static final String BTN_CLOSE_BG_URL = "panelCloseButtonBgImageURL";
    public static final String BTN_CLOSE_FRG_URL = "panelCloseButtonFrgImageURL";
    public static final String BTN_LOCK_CLOSED = "btnLockUrl";
    public static final String BTN_LOCK_OPEN = "btnUnlockUrl";
    public static final String BTN_OPEN_BG_URL = "panelOpenButtonBgImageURL";
    public static final String BTN_OPEN_FRG_URL = "panelOpenButtonFrgImageURL";
    public static final String BTN_SCALE_SIZE = "btnScaleSize";
    public static final String CHILD_LOCK_DEFAULT_STATE = "enableParentalLockByDefault";
    public static final String CIH_BTN_OPEN_HANDLE_OVERLAY_URL = "contentItemHandleBtnOpenUrl";
    public static final String CIH_REFRESH_CYCLE_PERIOD_SECONDS = "contentItemHandleRefreshPeriodSec";
    public static final String CIH_ROUND_CORNERS = "contentItemHandleRoundCornersPx";
    public static final String CIH_SHOW_THUMB_IN_HANDLE = "contentItemHandleThumbShow";
    public static final String CIH_THUMB_SIZE = "contentItemHandleThumbSize";
    public static final String CLOSE_BTN = "flexiCloseBtn";
    public static final String CONTENT_REFRESH_RATE_SECONDS = "flexiContentRefreshRateSec";
    public static final String CONTENT_SWAP_SOUND = "flexiContentSwapSound";
    public static final String CONTENT_THUMB_RATIO = "flexiThumbRatio";
    public static final String CORNER_ROUND_RADIUS = "flexiCornerRadius";
    public static final String FEED_BUTTON = "feedButton";
    public static final String FEED_BUTTON_SCALE = "feedButtonScale";
    public static final String FILL_COLOR = "flexiFillClr";
    public static final String FIRST_LAUNCH_OPEN_PANEL_EVEY_X_HOURS = "flOpenEveryXhoursTF";
    public static final String FIRST_LAUNCH_OPEN_START_DELAY_SECONDS = "flOpenStartDelaySec";
    public static final String FIRST_LAUNCH_STAY_OPEN_PERIOD_SECONDS = "flOpenPeriodSec";
    public static final String FLEXI_POP_VIEW_SOUND = "flexiPopSound";
    public static final String GLOBAL_STYLE_KEY = "globalStyleKey";
    public static final String HTML_MAXIMIZE_BTN = "htmlMaximizeBtn";
    public static final String IS_CIRCLE = "flexiIsCircle";
    public static final String IS_FLEXI_VIEW_CLOSABLE = "flexiIsClosable";
    public static final String IS_FLEXI_VIEW_DRUGGABLE = "flexiIsDraggable";
    public static final String IS_SOUND_ENABLED = "flexiEnableSound";
    public static final String KIDOZ_LOGO_ICON = "kidozIcon";
    public static final String LABEL_TEXT = "labelText";
    public static final String LABEL_TEXT_COLOR = "labelColor";
    public static final String LAUNCH_INTERSTITIAL_ON_OPEN = "lounchInterstitialOnOpen";
    public static final String LEGACY_BTN_CLOSE_URL = "btnClosedUrl";
    public static final String LEGACY_BTN_OPEN_URL = "btnOpenedUrl";
    public static final String LEGACY_DEFAULT_OPEN_BTN_SPOSORED_URL = "btnOpenDefaultSponsoredUrl";
    public static final String LOCK_ACTIVE = "parentalLockActive";
    public static final String LOCK_ANIMATION = "parentalLockAnimation";
    public static final String LOCK_CLOSE_BUTTON = "flexiLockCloseBtn";
    public static final String LOCK_NOT_ACTIVE = "parentalLockNotActive";
    public static final String LOCK_OPEN_BUTTON = "flexiLockOpenBtn";
    public static final String MAIN_ANIMATION_URL = "animUrl";
    public static final String MAIN_ANIMATION_URL_NEW = "animUrlNew";
    public static final String NEXT_BTN_ANIMATION_TYPE = "nextBtnAnimType";
    public static final String NEXT_BTN_RATIO = "nextBtnRatio";
    public static final String NEXT_BTN_URL = "nextBtnUrl";
    public static final String NEXT_BUTTON = "nextBtn";
    public static final String NEXT_BUTTON_ANIMATION = "nextBtnAnimation";
    public static final String NOTICE_ME_ANIMATION_RATE_MILLIS = "flexiNoticeMeAnimRateMillis";
    public static final String NOTICE_ME_ANIMATION_TYPE = "flexiNoticeMeAnimType";
    public static final String PANEL_BG_COLOR = "panelBgClr";
    public static final String PREVIOUS_BUTTON = "previousBtn";
    public static final String PREVIOUS_BUTTON_ANIMATION = "previousBtnAnimation";
    public static final String PROMOTED_INDICATOR_RATIO = "promotedIndicatorRatio";
    public static final String PROMOTED_INDICATOR_SIZE = "promotedIndicatorSize";
    public static final String PROMOTED_INDICATOR_URL = "promotedIndicator";
    public static final String PROMOTION_ANIMATION = "animationUrl";
    public static final String STYLE_ID = "style_id";
    public static final String SWAP_CONTENT_REFRESH_RATE_SECONDS = "swapContentRefreshRateSec";
    public static final String THUMBNAIL_BG_COLOR = "thumbBgColor";
    public static final String X_BUTTON = "xBtn";
    public static final String X_BUTTON_ANIMATION = "XBtnAnimation";

    public static boolean parseBannerData(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            boolean zLoadAsset = AssetUtil.loadAsset(context, ServerConfigStorage.getInstance().loadProperties(KidozBannerPresenter.TAG), jSONObject, "html_url");
            if (zLoadAsset) {
                ServerConfigStorage.getInstance().insertProperties(KidozBannerPresenter.TAG, jSONObject);
            }
            return zLoadAsset;
        } catch (Exception e2) {
            SDKLogger.printErrorLog(KidozBannerPresenter.TAG, "Error when trying to parse banner properties: " + e2.getMessage());
            return false;
        }
    }

    public static boolean parseFamilyPanelData(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            String str = PanelView.TAG;
            jSONObject.put(str, FamilyPanelView.TAG);
            JSONObject jSONObjectLoadProperties = ServerConfigStorage.getInstance().loadProperties(str);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, LEGACY_DEFAULT_OPEN_BTN_SPOSORED_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, LEGACY_BTN_OPEN_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, LEGACY_BTN_CLOSE_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, CIH_BTN_OPEN_HANDLE_OVERLAY_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, BTN_OPEN_BG_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, BTN_OPEN_FRG_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, BTN_CLOSE_BG_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, BTN_CLOSE_FRG_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, MAIN_ANIMATION_URL_NEW);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, MAIN_ANIMATION_URL);
            AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, PROMOTED_INDICATOR_URL);
            boolean zLoadAsset = AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, NEXT_BTN_URL);
            if (zLoadAsset) {
                zLoadAsset = AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, HTML_MAXIMIZE_BTN);
            }
            if (zLoadAsset) {
                zLoadAsset = AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, BTN_LOCK_OPEN);
            }
            if (zLoadAsset) {
                zLoadAsset = AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, BTN_LOCK_CLOSED);
            }
            if (zLoadAsset) {
                zLoadAsset = AssetUtil.loadAsset(context, jSONObjectLoadProperties, jSONObject, KIDOZ_LOGO_ICON);
            }
            if (zLoadAsset) {
                ServerConfigStorage.getInstance().insertProperties(str, jSONObject);
            }
            return zLoadAsset;
        } catch (Exception e2) {
            SDKLogger.printErrorLog(PanelView.TAG, "Error when trying to parse kidoz FamilyPanelView properties" + e2.getMessage());
            return false;
        }
    }

    public static boolean parseGlobalStyleData(Context context, JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.has(CHILD_LOCK_DEFAULT_STATE) && !ParentalLockDialog.isLockStateChanged(context)) {
                    ParentalLockDialog.saveParentalLockState(context, jSONObject.optInt(CHILD_LOCK_DEFAULT_STATE, 0) == 1);
                }
            } catch (Exception e2) {
                SDKLogger.printErrorLog("", "Error when trying to parse global style properties" + e2.getMessage());
            }
        }
        return true;
    }

    public static boolean parseInterstitialData(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return false;
        }
        try {
            ServerConfigStorage serverConfigStorage = ServerConfigStorage.getInstance();
            String str = KidozInterstitial.TAG;
            serverConfigStorage.loadProperties(str);
            ServerConfigStorage.getInstance().insertProperties(str, jSONObject);
            return true;
        } catch (Exception e2) {
            SDKLogger.printErrorLog("", "Error when trying to parse kidoz interstitial view properties" + e2.getMessage());
            return false;
        }
    }
}
