package com.kidoz.sdk.api.general.utils;

import com.kidoz.sdk.api.general.assets_handling.StyleParser;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class PropertiesObj {
    private static final String BANNER_VIEW_STYLE = "bannerStyle";
    public static final String BASE_DOUBLE_CLICK_LINK_KEY = "baseDoubleClickLink";
    public static final String BASE_HTML_LINK_KEY = "baseHTMLLink";
    public static final String BASE_MRAID_LINK_KEY = "baseMraidLink";
    public static final String BASE_VAST_LINK_KEY = "baseVastLink";
    private static final boolean ENABLE_CHROME_DEBUG_DEFAULT = false;
    private static final String ENABLE_CHROME_DEBUG_KEY = "enableChromeDebug";
    private static final String FEED_API_DOMAIN = "feedApiDomain";
    private static final String FEED_VIEW_STYLE = "feedStyle";
    private static final String FLEXI_VIEW_STYLE = "flexiStyle";
    private static final String GLOBAL_STYLE = "globalStyle";
    private static final String HTML_LOADER_DEFAULT_URL_KEY = "htmlLoaderDefaultURL";
    private static final String INTERSTITIAL_DEFAULT_URL_KEY = "interstitialHTMLURL";
    private static final String INTERSTITIAL_VIEW_STYLE = "interstitialStyle";
    private static final String MAX_THROTTLE_TIME = "maxThrottleTime";
    private static final int MAX_THROTTLE_TIME_DEFAULT = 30;
    private static final String PANEL_VIEW_STYLE = "panelStyle";
    private static final String SDK_STYLE_VERSION_KEY = "style";
    private static final String TIME_TO_WAIT_FOR_INSTALL_EVENT_MINUTES = "timeToWaitForInstallEvent";
    private static final String WATERFALL_DOMAIN = "waterfallApiDomain";
    JSONObject mProperties;

    public PropertiesObj(JSONObject jSONObject) {
        this.mProperties = new JSONObject();
        this.mProperties = jSONObject;
    }

    private JSONObject getGlobalPropertiesObject() {
        String strOptString;
        if (!this.mProperties.has(GLOBAL_STYLE) || (strOptString = this.mProperties.optString(GLOBAL_STYLE)) == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strOptString);
            if (jSONObject.has("globalStyleParams")) {
                return jSONObject.optJSONObject("globalStyleParams");
            }
            return null;
        } catch (JSONException unused) {
            return null;
        }
    }

    public String getBannerViewStyle() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            return jSONObject.optString(BANNER_VIEW_STYLE, null);
        }
        return null;
    }

    public JSONObject getData() {
        return this.mProperties;
    }

    public String getFeedViewStyle() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            return jSONObject.optString(FEED_VIEW_STYLE, null);
        }
        return null;
    }

    public String getFlexiViewStyle() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            return jSONObject.optString(FLEXI_VIEW_STYLE, null);
        }
        return null;
    }

    public String getGPSFeedApiDomain() {
        if (this.mProperties == null) {
            return null;
        }
        JSONObject globalPropertiesObject = getGlobalPropertiesObject();
        return (globalPropertiesObject == null || !globalPropertiesObject.has(FEED_API_DOMAIN)) ? this.mProperties.optString(FEED_API_DOMAIN, null) : globalPropertiesObject.optString(FEED_API_DOMAIN, "");
    }

    public int getGPSMaxTimeToWaitForInstall() {
        if (this.mProperties == null) {
            return 86400000;
        }
        JSONObject globalPropertiesObject = getGlobalPropertiesObject();
        return (globalPropertiesObject == null || !globalPropertiesObject.has(TIME_TO_WAIT_FOR_INSTALL_EVENT_MINUTES)) ? this.mProperties.optInt(TIME_TO_WAIT_FOR_INSTALL_EVENT_MINUTES, 86400000) : globalPropertiesObject.optInt(TIME_TO_WAIT_FOR_INSTALL_EVENT_MINUTES, 86400000);
    }

    public String getGlobalPropertiesStyle() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            return jSONObject.optString(GLOBAL_STYLE, null);
        }
        return null;
    }

    public String getHtmlLoaderDefaultLink() {
        if (this.mProperties == null) {
            return "";
        }
        JSONObject globalPropertiesObject = getGlobalPropertiesObject();
        return (globalPropertiesObject == null || !globalPropertiesObject.has(HTML_LOADER_DEFAULT_URL_KEY)) ? this.mProperties.optString(HTML_LOADER_DEFAULT_URL_KEY, "") : globalPropertiesObject.optString(HTML_LOADER_DEFAULT_URL_KEY, "");
    }

    public String getInterstitialDefaultLinkForType(String str) {
        String strOptString;
        JSONObject jSONObject = this.mProperties;
        if (jSONObject == null || (strOptString = jSONObject.optString("KidozInterstitial")) == null) {
            return null;
        }
        try {
            return new JSONObject(strOptString).optString(str, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public String getInterstitialHtmlLink() {
        if (this.mProperties == null) {
            return "";
        }
        JSONObject globalPropertiesObject = getGlobalPropertiesObject();
        return (globalPropertiesObject == null || !globalPropertiesObject.has(INTERSTITIAL_DEFAULT_URL_KEY)) ? this.mProperties.optString(INTERSTITIAL_DEFAULT_URL_KEY, "") : globalPropertiesObject.optString(INTERSTITIAL_DEFAULT_URL_KEY, "");
    }

    public String getInterstitialViewStyle() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            return jSONObject.optString(INTERSTITIAL_VIEW_STYLE, null);
        }
        return null;
    }

    public int getMaxThrottleTime() {
        JSONObject globalPropertiesObject;
        if (this.mProperties == null || (globalPropertiesObject = getGlobalPropertiesObject()) == null) {
            return 30;
        }
        return globalPropertiesObject.optInt(MAX_THROTTLE_TIME, 30);
    }

    public String getPanelViewStyle() {
        JSONObject jSONObject = this.mProperties;
        if (jSONObject != null) {
            return jSONObject.optString(PANEL_VIEW_STYLE, null);
        }
        return null;
    }

    public JSONObject getProperties() {
        return this.mProperties;
    }

    public int getSdkStyleVersion() {
        if (this.mProperties == null) {
            return -1;
        }
        JSONObject globalPropertiesObject = getGlobalPropertiesObject();
        return (globalPropertiesObject == null || !globalPropertiesObject.has(StyleParser.STYLE_ID)) ? this.mProperties.optInt("style", 0) : globalPropertiesObject.optInt(StyleParser.STYLE_ID, 0);
    }

    public boolean getShouldEnableChromeDebug() {
        JSONObject globalPropertiesObject;
        if (this.mProperties == null || (globalPropertiesObject = getGlobalPropertiesObject()) == null) {
            return false;
        }
        return globalPropertiesObject.optBoolean(ENABLE_CHROME_DEBUG_KEY, false);
    }

    public String getWaterfallDomain() {
        if (this.mProperties == null) {
            return null;
        }
        JSONObject globalPropertiesObject = getGlobalPropertiesObject();
        return (globalPropertiesObject == null || !globalPropertiesObject.has(WATERFALL_DOMAIN)) ? this.mProperties.optString(WATERFALL_DOMAIN, null) : globalPropertiesObject.optString(WATERFALL_DOMAIN, "");
    }
}
